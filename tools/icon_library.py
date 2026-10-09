"""Strict source audit -> deterministic generation -> derived audit.

PNG identities are immutable. Bootstrap is explicit and preserves existing catalog fields.
"""
import argparse
import hashlib
import json
import re
import sys
import collections
import datetime
import html
import unicodedata
import urllib.parse
import urllib.request
import urllib.error
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CATEGORIES = ['system', 'social', 'media', 'browser', 'shopping', 'tools', 'games',
              'news', 'lifestyle', 'travel', 'productivity', 'education', 'finance',
              'personalization', 'parenting', 'reading', 'other']
CATEGORY_LABELS = dict(zip(CATEGORIES, ['系统', '社交', '影音', '浏览器', '购物', '工具', '游戏',
                                         '新闻资讯', '生活实用', '交通出行', '商务办公', '学习教育',
                                         '金融理财', '铃声壁纸', '儿童母婴', '书刊阅读', '其他']))
LEGACY_IDS = {'com.miui. delock.theme'}
PACKAGE = re.compile(r'^[A-Za-z][A-Za-z0-9_]*(?:\.[A-Za-z][A-Za-z0-9_]*)+$')
LABELS = {
    'com.microsoft.emmx': ('Microsoft Edge', 'browser', ['Edge', '微软浏览器']),
    'com.android.chrome': ('Google Chrome', 'browser', ['Chrome', '谷歌浏览器']),
    'org.mozilla.firefox': ('Firefox', 'browser', ['火狐浏览器']),
    'com.tencent.mm': ('微信', 'social', ['WeChat']),
    'com.tencent.wework': ('企业微信', 'social', ['WeCom']),
    'com.tencent.mobileqq': ('QQ', 'social', ['腾讯QQ']),
    'tv.danmaku.bili': ('哔哩哔哩', 'media', ['Bilibili', 'B站']),
    'com.sina.weibo': ('微博', 'social', ['Weibo']),
    'com.tencent.qqmusic': ('QQ音乐', 'media', ['QQ Music']),
    'com.tencent.qqmusiclocalplayer': ('QQ音乐', 'media', ['QQ Music']),
    'com.netease.cloudmusic': ('网易云音乐', 'media', ['Cloud Music']),
    'com.taobao.taobao': ('淘宝', 'shopping', ['Taobao']),
    'com.jingdong.app.mall': ('京东', 'shopping', ['JD']),
    'com.eg.android.AlipayGphone': ('支付宝', 'tools', ['Alipay']),
    'com.smartisanos.camera': ('相机', 'system', ['Camera']),
    'com.smartisanos.calendar': ('日历', 'system', ['Calendar']),
    'com.android.calendar': ('日历', 'system', ['Calendar']),
    'com.android.settings': ('设置', 'system', ['Settings']),
    'com.android.contacts': ('联系人', 'system', ['Contacts', '电话']),
    'com.android.mms': ('信息', 'system', ['SMS', '短信']),
    'com.smartisanos.notes': ('便签', 'system', ['Notes']),
    'com.smartisanos.weather': ('天气', 'system', ['Weather']),
    'com.smartisanos.clock': ('时钟', 'system', ['Clock', '闹钟']),
    'com.smartisanos.filemanager': ('文件管理', 'system', ['Files']),
    'com.smartisanos.gallery': ('相册', 'system', ['Gallery']),
    'com.smartisanos.videoplayerproject': ('视频', 'system', ['Video']),
}


def read(path):
    return json.loads(path.read_text(encoding='utf-8'))


def write(path, value):
    rendered = json.dumps(value, ensure_ascii=False, indent=2) + '\n'
    path.parent.mkdir(parents=True, exist_ok=True)
    if not path.exists() or path.read_text(encoding='utf-8') != rendered:
        path.write_text(rendered, encoding='utf-8')


def bootstrap(root):
    # Reuse reviewed mappings, never call the renaming tool.
    sys.dont_write_bytecode = True
    from clean_icons import MANUAL_MAPPINGS
    folder = root / 'icons'
    sources = {p.stem for p in (folder / 'drawable').glob('*.png')}
    variants = read(folder / 'variants.json')['variants']
    path = folder / 'catalog.json'
    catalog = read(path) if path.exists() else {'schema': 1, 'apps': {}, 'components': {}}
    apps = catalog['apps']
    claimed = {s for app in apps.values() for s in app['icons']}
    claimed_packages = {p for app in apps.values() for p in app.get('packages', [])}
    for pkg, files in sorted(variants.items()):
        ids = [Path(f).stem for f in files if Path(f).stem in sources]
        if not ids or pkg in claimed_packages:
            continue
        name, category, aliases = LABELS.get(pkg, (pkg, 'other', []))
        apps.setdefault(pkg, {'name': name, 'category': category,
                             'packages': [pkg] if PACKAGE.fullmatch(pkg) else [],
                             'aliases': aliases, 'keywords': [], 'icons': ids, 'primary': ids[0]})
        claimed.update(ids)
    for source in sorted(sources - claimed):
        if source in apps:
            if source not in apps[source]['icons']:
                apps[source]['icons'].append(source)
            continue
        # Only a reviewed variant base may justify stripping an _N suffix.
        base = re.sub(r'_\d+$', '', source)
        if base != source and base in apps and base in variants:
            if source not in apps[base]['icons']:
                apps[base]['icons'].append(source)
            continue
        name, category, aliases = LABELS.get(source, (source, 'other', []))
        apps.setdefault(source, {'name': name, 'category': category,
                                'packages': [source] if PACKAGE.fullmatch(source) and source not in claimed_packages and (source in LABELS or source == source.lower()) else [],
                                'aliases': aliases, 'keywords': [], 'icons': [source], 'primary': source})
    for alias, target in MANUAL_MAPPINGS.items():
        if target not in apps:
            continue
        if alias not in {'com.alipay.mobile.quinox.LauncherApplication', 'com.tencent.qqmusiclocalplayer.app.activity.AppStarterActivity'}:
            # Existing entries retain their artwork; only missing packages need an alias.
            if not any(alias in a.get('packages', []) for a in apps.values()):
                apps[target]['packages'].append(alias)
        else:
            catalog.setdefault('components', {}).setdefault(target + '/' + alias, target)
    write(path, catalog)


def source_audit(root, require_registered=False):
    folder = root / 'icons'
    sources = {p.stem: p for p in (folder / 'drawable').glob('*.png')}
    variants = read(folder / 'variants.json')['variants']
    catalog = read(folder / 'catalog.json')
    errors, warnings, packages, claimed = [], [], {}, set()
    hashes = {}
    for source, path in sources.items():
        if not re.fullmatch(r'[A-Za-z0-9._-]+', source):
            (warnings if source in LEGACY_IDS else errors).append('INVALID_NAME ' + source)
        try:
            data = path.read_bytes()
        except FileNotFoundError:
            errors.append('SOURCE_CHANGED_DURING_AUDIT ' + source)
            continue
        hashes.setdefault(hashlib.sha256(data).hexdigest(), []).append(source)
        if data[:8] != b'\x89PNG\r\n\x1a\n':
            errors.append('INVALID_PNG ' + source)
    for pkg, files in variants.items():
        if not files:
            errors.append('EMPTY_VARIANT ' + pkg)
        for file in files:
            if not file.endswith('.png') or Path(file).stem not in sources or Path(file).name != file:
                errors.append('BROKEN_VARIANT ' + pkg + ':' + file)
    for identity, app in catalog['apps'].items():
        ids = app.get('icons', [])
        if not ids or app.get('primary') not in ids:
            errors.append('BROKEN_PRIMARY ' + identity)
        if app.get('category') not in CATEGORIES:
            errors.append('INVALID_CATEGORY ' + identity)
        for field in ('nameStatus', 'categoryStatus'):
            if field in app and app[field] not in {'verified', 'unverified', 'unresolved', 'ambiguous'}:
                errors.append('INVALID_REVIEW_STATUS ' + identity + ':' + field)
        if app.get('nameStatus') == 'verified' and not any('name' in evidence.get('fields', []) and evidence.get('value') == app['name'] for evidence in app.get('evidence', [])):
            errors.append('MISSING_NAME_EVIDENCE ' + identity)
        pronunciations = dict(app.get('pinyin', {}))
        pronunciations.update(app.get('pinyinOverrides', {}))
        for text, values in pronunciations.items():
            if not isinstance(values, list) or len(values) != 3 or any(not isinstance(v, str) or not re.fullmatch(r'[a-z0-9 ]+', v) for v in values):
                errors.append('INVALID_PINYIN ' + identity + ':' + text)
        if app.get('nameStatus') == 'verified':
            for name in [app['name']] + app.get('aliases', []):
                if re.search(r'[\u3400-\u9fff]', name) and name not in pronunciations:
                    errors.append('MISSING_PINYIN ' + identity + ':' + name)
        for source in ids:
            if source not in sources:
                errors.append('MISSING_ICON ' + identity + ':' + source)
            claimed.add(source)
        for pkg in app.get('packages', []):
            if not PACKAGE.fullmatch(pkg):
                errors.append('INVALID_PACKAGE_ALIAS ' + pkg)
            if pkg in packages and packages[pkg] != identity:
                errors.append('DUPLICATE_PACKAGE ' + pkg)
            packages[pkg] = identity
    for component, identity in catalog.get('components', {}).items():
        if '/' not in component or identity not in catalog['apps']:
            errors.append('BROKEN_COMPONENT_ALIAS ' + component)
    for source in sources.keys() - claimed:
        (errors if require_registered else warnings).append('ORPHAN_ICON ' + source)
    print('source audit: PNG=%d apps=%d packages=%d unclassified=%d duplicate_groups=%d warnings=%d errors=%d' % (
        len(sources), len(catalog['apps']), len(packages),
        sum(a['category'] == 'other' for a in catalog['apps'].values()),
        sum(len(v) > 1 for v in hashes.values()), len(warnings), len(errors)))
    for message in warnings + errors:
        print(message)
    if errors:
        raise ValueError('Source audit failed; no generated files changed')
    return catalog, sources, variants


def outputs(catalog, sources, variants):
    generated_variants = {p: list(files) for p, files in variants.items()}
    entries = {}
    package_aliases, component_aliases = {}, {}
    for identity, app in sorted(catalog['apps'].items()):
        ids = app['icons']
        for pkg in app.get('packages', []):
            package_aliases[pkg] = app['primary']
            values = generated_variants.setdefault(pkg, [])
            for source in ids:
                if source + '.png' not in values:
                    values.append(source + '.png')
        for source in ids:
            entry = entries.setdefault(source, {'sourceId': source, 'name': app['name'],
                                               'category': app['category'], 'terms': [], 'groups': {}})
            groups = {
                'names': ([] if app['name'] == identity or app['name'] in app.get('packages', []) else [app['name']]) + ([app['nameEn']] if app.get('nameEn') else []),
                'aliases': app.get('aliases', []),
                'pinyin': [], 'initials': [],
                'identities': app.get('packages', []) + [component for component, owner in catalog.get('components', {}).items() if owner == identity],
                'keywords': [app['category'], CATEGORY_LABELS[app['category']]] + app.get('keywords', []) + app.get('tags', []),
            }
            pronunciations = dict(app.get('pinyin', {}))
            pronunciations.update(app.get('pinyinOverrides', {}))
            for text, values in pronunciations.items():
                if text not in groups['names'] + groups['aliases']:
                    continue
                if len(values) != 3:
                    raise ValueError('Pinyin must contain full, spaced and initials: ' + identity + ':' + text)
                groups['pinyin'].extend(values[:2])
                groups['initials'].append(values[2])
            for group, values in groups.items():
                if not values: continue
                bucket = entry['groups'].setdefault(group, [])
                for value in values:
                    if value and value not in bucket:
                        bucket.append(value)
            for term in [identity, source] + [term for values in groups.values() for term in values]:
                if term and term not in entry['terms']:
                    entry['terms'].append(term)
    for component, identity in catalog.get('components', {}).items():
        component_aliases[component] = catalog['apps'][identity]['primary']
    records = []
    for source, path in sorted(sources.items()):
        data = path.read_bytes()
        records.append({'package': source, 'file': path.name, 'bytes': len(data), 'sha256': hashlib.sha256(data).hexdigest()})
    index = {'schema': 1, 'path': 'icons/drawable/{sourceId}.png', 'count': len(records), 'icons': records,
             'note': 'Immutable sourceIds; catalog supplies metadata, variants supplies legacy candidates.',
             'mirrors': ['https://gitee.com/RANH-F/Smartisan-original-launcher-download/raw/master/icons/drawable/',
                         'https://raw.githubusercontent.com/RANH-F/Smartisan-original-launcher/main/icons/drawable/']}
    pronunciations, conflicting = {}, set()
    for app in catalog['apps'].values():
        values = dict(app.get('pinyin', {})); values.update(app.get('pinyinOverrides', {}))
        for name, pronunciation in values.items():
            if name in pronunciations and pronunciations[name] != pronunciation: conflicting.add(name)
            else: pronunciations[name] = pronunciation
    search = {'schema': 1, 'entries': list(entries.values()), 'packages': package_aliases,
              'components': component_aliases, 'pronunciations': {k: v for k, v in sorted(pronunciations.items()) if k not in conflicting}}
    revision = hashlib.sha256(json.dumps(search, ensure_ascii=False, sort_keys=True).encode()).hexdigest()[:16]
    search['revision'] = revision
    return {'variants.json': {'schema': 1, 'variants': generated_variants}, 'index.json': index, 'search-index.json': search}


def collect_store(root, output, limit=0, provider='google-play', locale='zh_CN', packages_from=None):
    """Build-time exact-package lookup. Never infer identity from a search result."""
    catalog = read(root / 'icons/catalog.json')
    packages = sorted({p for app in catalog['apps'].values() for p in app.get('packages', [])})
    if packages_from:
        matched = {row['package'] for row in (json.loads(line) for line in packages_from.read_text('utf-8').splitlines() if line.strip()) if row['status'] == 'verified'}
        packages = [package for package in packages if package in matched]
    output.parent.mkdir(parents=True, exist_ok=True)
    previous = {}
    if output.exists():
        for line in output.read_text('utf-8').splitlines():
            if line.strip():
                row = json.loads(line)
                previous[row['package']] = row
    pending = [p for p in packages if p not in previous or previous[p]['status'] in {'temporary_error', 'unreadable'}
               or (provider == 'tencent' and previous[p]['status'] == 'verified' and previous[p].get('schema') != 2)]
    if limit:
        pending = pending[:limit]

    def fetch(package):
        url = ('https://sj.qq.com/appdetail/' + urllib.parse.quote(package) if provider == 'tencent' else
               'https://play.google.com/store/apps/details?' + urllib.parse.urlencode({'id': package, 'hl': locale, 'gl': 'US'}))
        result = {'schema': 2, 'package': package, 'url': url, 'provider': provider, 'checkedAt': datetime.datetime.now(datetime.timezone.utc).isoformat(), 'locale': locale}
        try:
            request = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
            with urllib.request.urlopen(request, timeout=15) as response:
                body = response.read(4 * 1024 * 1024).decode('utf-8')
            if provider == 'tencent':
                block = re.search(r'<script id="__NEXT_DATA__"[^>]*>(.*?)</script>', body, re.S)
                if block:
                    page = json.loads(block.group(1))['props']['pageProps']
                    target = page.get('context', {}).get('initialInfo', {}).get('pageParams', {}).get('detail_pkgname')
                    components = page.get('dynamicCardResponse', {}).get('data', {}).get('components', [])
                    for component in components:
                        for app in component.get('data', {}).get('itemData', []):
                            if target == package and app.get('pkg_name') == package and isinstance(app.get('name'), str) and app['name'].strip():
                                tags = json.loads(app.get('tags_st') or '[]')
                                result.update(status='verified', name=app['name'].strip(), category='GAME' if app.get('is_game') in {True, 1, '1'} else '',
                                              tags=[t['tag_name'] for t in tags if isinstance(t, dict) and isinstance(t.get('tag_name'), str)])
                                return result
                    result['status'] = 'not_found'
                    return result
                result['status'] = 'unreadable'
                return result
            for block in re.findall(r'<script[^>]*type="application/ld\+json"[^>]*>(.*?)</script>', body, re.S):
                app = json.loads(block)
                if app.get('@type') != 'SoftwareApplication':
                    continue
                identity = urllib.parse.parse_qs(urllib.parse.urlparse(app.get('url', '')).query).get('id', [])
                if identity != [package] or not isinstance(app.get('name'), str) or not app['name'].strip():
                    continue
                result.update(status='verified', name=html.unescape(app['name']).strip(), category=app.get('applicationCategory', ''))
                return result
            result['status'] = 'unreadable'
        except urllib.error.HTTPError as error:
            result['status'] = 'not_found' if error.code in {404, 410} else 'temporary_error'
            result['httpStatus'] = error.code
        except (OSError, ValueError, KeyError, TypeError, AttributeError) as error:
            result.update(status='temporary_error', error=type(error).__name__)
        return result

    print('store collection pending=%d existing=%d workers=4' % (len(pending), len(previous)), flush=True)
    with output.open('a', encoding='utf-8') as stream, ThreadPoolExecutor(max_workers=4) as pool:
        futures = {pool.submit(fetch, package): package for package in pending}
        counts = collections.Counter()
        for i, future in enumerate(as_completed(futures), 1):
            row = future.result()
            stream.write(json.dumps(row, ensure_ascii=False) + '\n')
            stream.flush()
            counts[row['status']] += 1
            if i % 100 == 0 or i == len(pending):
                print('store collection %d/%d %s' % (i, len(pending), dict(counts)), flush=True)


def report(root, output):
    catalog, sources, variants = source_audit(root, require_registered=True)
    apps = catalog['apps']
    categories = collections.Counter(a['category'] for a in apps.values())
    icon_categories = collections.Counter(a['category'] for a in apps.values() for _ in a['icons'])
    han = lambda value: bool(re.search(r'[\u3400-\u9fff]', value))
    readable = lambda identity, app: app['name'] != identity and app['name'] not in app.get('packages', []) and app['name'] not in app['icons']
    stats = {'png': len(sources), 'apps': len(apps), 'packages': len({p for a in apps.values() for p in a.get('packages', [])}),
             'verified_names': sum(a.get('nameStatus') == 'verified' for a in apps.values()),
             'verified_chinese_names': sum(a.get('nameStatus') == 'verified' and han(a['name']) for a in apps.values()),
             'verified_english_names': sum(bool(a.get('nameEn')) for a in apps.values()),
             'readable_names': sum(readable(k, a) for k, a in apps.items()),
             'identifier_names': sum(not readable(k, a) for k, a in apps.items()),
             'other': categories['other'], 'apps_with_pinyin': sum(bool(a.get('pinyin') or a.get('pinyinOverrides')) for a in apps.values()),
             'category_conflicts': sum(bool(a.get('review', {}).get('categoryConflict')) for a in apps.values()),
             'verified_categories': sum(a.get('categoryStatus') == 'verified' for a in apps.values()),
             'categories': dict(categories)}
    output.mkdir(parents=True, exist_ok=True)
    write(output / 'icon_library_stats.json', stats)
    lines = ['# Icon library report', '', 'Counts distinguish application identities from PNG variants.', '']
    lines += ['- %s: %s' % (k, v) for k, v in stats.items() if k != 'categories']
    lines += ['', '| Category | Applications | PNGs |', '|---|---:|---:|']
    lines += ['| %s | %d | %d |' % (c, categories[c], icon_categories[c]) for c in CATEGORIES]
    lines += ['', 'Structure and generated asset synchronization are checked by `audit`; semantic verification uses recorded evidence.']
    (output / 'icon_library_report.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')
    review = ['# Name review', '', '| Identity | Name | Flags | Category | Lookup state |', '|---|---|---|---|---|']
    for identity, app in sorted(apps.items()):
        if app.get('nameStatus') != 'verified' or app['category'] == 'other' or app.get('review',{}).get('categoryConflict'):
            flags=[]
            if not readable(identity,app):flags.append('UNKNOWN_NAME')
            elif app.get('nameStatus')!='verified':flags.append('UNVERIFIED_NAME')
            if app['category']=='other':flags.append('UNKNOWN_CATEGORY')
            if app.get('review',{}).get('categoryConflict'):flags.append('CATEGORY_CONFLICT')
            cells = [identity, app['name'], ','.join(flags), app['category'], json.dumps(app.get('review', {}), ensure_ascii=False)]
            review.append('| ' + ' | '.join(str(c).replace('|', '\\|').replace('\n', ' ') for c in cells) + ' |')
    (output / 'icon_name_review.md').write_text('\n'.join(review) + '\n', encoding='utf-8')
    category_lines = lines[:]
    category_lines += ['', '## Remaining other identities', '']
    category_lines += ['- %s: %s (%s)' % (k, a['name'], a.get('categoryStatus', 'unverified')) for k, a in sorted(apps.items()) if a['category'] == 'other']
    (output / 'icon_category_audit.md').write_text('\n'.join(category_lines) + '\n', encoding='utf-8')
    aliases=collections.defaultdict(set)
    for identity,app in apps.items():
        for alias in app.get('aliases',[]):aliases[alias.casefold()].add(identity)
    conflict=['# Alias and shared artwork review','','Search aliases do not change automatic package/component routing.','', '## Ambiguous search aliases','']
    conflict += ['- %s: %s' % (alias,', '.join(sorted(owners))) for alias,owners in sorted(aliases.items()) if len(owners)>1]
    owners=collections.defaultdict(set)
    for identity,app in apps.items():
        for source in app['icons']:owners[source].add(identity)
    conflict += ['', '## SourceIds shared by distinct identities', '']
    conflict += ['- %s: %s' % (source,', '.join(sorted(identities))) for source,identities in sorted(owners.items()) if len(identities)>1]
    (output/'icon_identity_review.md').write_text('\n'.join(conflict)+'\n',encoding='utf-8')
    print('report: ' + json.dumps(stats, ensure_ascii=False))


def enrich(root, fdroid, stores, pinyin_module):
    """Import attributed exact-package metadata without altering artwork or automatic routing."""
    if pinyin_module:
        sys.path.insert(0, str(pinyin_module.resolve()))
    from pypinyin import lazy_pinyin, Style
    catalog = read(root / 'icons/catalog.json')
    fd = read(fdroid)['packages'] if fdroid else {}
    store_rows = {}
    for path in stores:
        for line in path.read_text('utf-8').splitlines():
            if line.strip():
                row = json.loads(line)
                provider = row.get('provider', 'google-play')
                by_provider = store_rows.setdefault(row['package'], {})
                key = provider + ':' + row['locale']
                previous = by_provider.get(key)
                if row['status'] in {'temporary_error', 'unreadable'} and previous and previous['status'] == 'verified':
                    retained = dict(previous); retained['latestStatus'] = row['status']; by_provider[key] = retained
                else:
                    by_provider[key] = row
    category_map = {'GAME': 'games', 'COMMUNICATION': 'social', 'SOCIAL': 'social', 'MUSIC_AND_AUDIO': 'media',
                    'VIDEO_PLAYERS': 'media', 'ENTERTAINMENT': 'media', 'SHOPPING': 'shopping', 'FINANCE': 'finance',
                    'BUSINESS': 'productivity', 'PRODUCTIVITY': 'productivity', 'TOOLS': 'tools', 'PHOTOGRAPHY': 'tools',
                    'EDUCATION': 'education', 'BOOKS_AND_REFERENCE': 'reading', 'NEWS_AND_MAGAZINES': 'news',
                    'TRAVEL_AND_LOCAL': 'travel', 'MAPS_AND_NAVIGATION': 'travel', 'PERSONALIZATION': 'personalization',
                    'PARENTING': 'parenting', 'HEALTH_AND_FITNESS': 'lifestyle', 'MEDICAL': 'lifestyle',
                    'FOOD_AND_DRINK': 'lifestyle', 'HOUSE_AND_HOME': 'lifestyle', 'LIFESTYLE': 'lifestyle', 'SPORTS': 'lifestyle'}
    category_map.update({'WEATHER': 'lifestyle', 'AUTO_AND_VEHICLES': 'lifestyle', 'DATING': 'social',
                         'EVENTS': 'lifestyle', 'ART_AND_DESIGN': 'tools', 'LIBRARIES_AND_DEMO': 'tools', 'COMICS': 'reading'})
    for genre in ['ACTION','ADVENTURE','ARCADE','BOARD','CARD','CASUAL','EDUCATIONAL','MUSIC','PUZZLE','RACING','ROLE_PLAYING','SIMULATION','SPORTS','STRATEGY','TRIVIA','WORD']:
        category_map['GAME_' + genre] = 'games'
    fd_categories = {'System':'tools','Connectivity':'tools','Development':'tools','Security':'tools',
                     'Games':'games','Multimedia':'media','Money':'finance','Navigation':'travel','Office':'productivity',
                     'Reading':'reading','Science & Education':'education','Sports & Health':'lifestyle',
                     'Theming':'personalization','Writing':'productivity','Graphics':'tools','Phone & SMS':'social'}
    tag_map = {'好友社交': 'social', '即时通讯': 'social', '潮流生活社区': 'social', '社交': 'social',
               '移动支付': 'finance', '银行': 'finance', '证券': 'finance', '投资理财': 'finance',
               '地图导航': 'travel', '公交地铁': 'travel', '打车': 'travel', '旅游出行': 'travel',
               '音乐': 'media', '视频': 'media', '影视': 'media', '影音播放': 'media', '音乐播放': 'media',
               '网上购物': 'shopping', '购物': 'shopping', '商城': 'shopping', '电商': 'shopping',
               '办公': 'productivity', '办公软件': 'productivity', '效率办公': 'productivity',
               '浏览器': 'browser', '文件管理': 'tools', '计算器': 'tools', '系统工具': 'tools',
               '新闻资讯': 'news', '新闻': 'news', '小说': 'reading', '阅读': 'reading', '漫画': 'reading',
               '学习': 'education', '教育': 'education', '学习教育': 'education', '词典': 'education',
               '健康': 'lifestyle', '运动健身': 'lifestyle', '美食外卖': 'lifestyle', '生活服务': 'lifestyle',
               '拍照摄影': 'tools', '图片美化': 'tools', '拍摄美化': 'tools', 'AI助手': 'tools', '人工智能': 'tools'}
    tag_map.update({'手机银行': 'finance', '股票': 'finance', '记账': 'finance', '电子书城': 'reading',
                    '综合视频': 'media', '在线音乐': 'media', '短视频': 'media', '综合商城': 'shopping',
                    '英语学习': 'education', '备忘录/笔记': 'productivity', '文档表格': 'productivity',
                    '综合服务': 'lifestyle', '云服务': 'tools', '综合新闻': 'news', '综合资讯': 'news',
                    '汽车社区': 'lifestyle', '兴趣社区': 'social', '相机': 'tools', '商家工具': 'productivity',
                    '智能家居': 'lifestyle', '本地宝': 'lifestyle', '返利': 'shopping', '打车拼车': 'travel', '汽修保养': 'lifestyle'})
    han = lambda text: bool(re.search(r'[\u3400-\u9fff]', text))
    counts = collections.Counter()
    for identity, app in sorted(catalog['apps'].items()):
        app.setdefault('aliases', []); app.setdefault('tags', []); app.setdefault('evidence', [])
        app.setdefault('nameStatus', 'unresolved' if app['name'] == identity else 'unverified')
        app.setdefault('categoryStatus', 'unresolved' if app['category'] == 'other' else 'unverified')
        app.setdefault('review', {})
        if not app.get('packages'):
            app['review']['stores'] = 'no_explicit_package_identity'
        names, category_candidates = [], []
        for package in app.get('packages', []):
            metadata = fd.get(package, {}).get('metadata')
            app['review']['fdroid:' + package] = 'matched' if metadata else 'not_found'
            if metadata:
                for locale, name in sorted(metadata.get('name', {}).items()):
                    if locale in {'zh-CN', 'en-US', 'en-GB'} and name:
                        names.append((name, locale, {'kind': 'fdroid', 'ref': 'https://f-droid.org/packages/' + package + '/', 'fields': ['name'], 'value': name, 'locale': locale}))
                for declared in metadata.get('categories', []):
                    if declared not in app['tags']: app['tags'].append(declared)
                    if declared in fd_categories:
                        category_candidates.append((fd_categories[declared], {'kind':'fdroid', 'ref':'https://f-droid.org/packages/'+package+'/', 'fields':['category'], 'value':declared}))
            for provider_key, row in sorted(store_rows.get(package, {}).items()):
                provider = provider_key.split(':')[0]
                app['review'][provider_key + ':' + package] = row.get('latestStatus', row['status'])
                if row['status'] != 'verified':
                    continue
                evidence = {'kind': provider, 'ref': row['url'], 'checkedAt': row['checkedAt'], 'fields': ['name'], 'value': row['name'], 'locale': row['locale']}
                names.append((row['name'], row['locale'], evidence))
                # First Tencent collector version contained string booleans; only schema 2 categories are accepted.
                if provider != 'tencent' or row.get('schema') == 2:
                    category = category_map.get(row.get('category'))
                    if category:
                        category_candidates.append((category, dict(evidence, fields=['category'], value=row['category'])))
                    for tag in row.get('tags', []):
                        if tag not in app['tags']: app['tags'].append(tag)
                        if tag in tag_map:
                            category_candidates.append((tag_map[tag], dict(evidence, fields=['category'], value=tag)))
                    domains = {'COMMUNICATION': ['通讯', '通讯聊天', '聊天'], 'PHOTOGRAPHY': ['摄影', '相册'],
                               'HEALTH_AND_FITNESS': ['健康', '运动'], 'MEDICAL': ['健康']}
                    for tag in domains.get(row.get('category'), []):
                        if tag not in app['tags']: app['tags'].append(tag)
                    if any(tag in {'AI助手', 'AI智能助手', 'AI聊天', '人工智能', 'AI工具'} for tag in row.get('tags', [])):
                        for tag in ['人工智能', 'AI']:
                            if tag not in app['tags']: app['tags'].append(tag)
        names.sort(key=lambda item: (not han(item[0]), item[1] != 'zh-CN' and item[1] != 'zh_CN', len(item[0]), item[0]))
        identifier = app['name'] == identity or app['name'] in app.get('packages', []) or app['name'] in app['icons']
        if names and identifier:
            app['name'] = names[0][0]; app['nameStatus'] = 'verified'; counts['named'] += 1
        if identity in LABELS and app['name'] == LABELS[identity][0]:
            app['nameStatus'] = 'verified'
            evidence = {'kind': 'project-reviewed', 'ref': 'tools/icon_library.py:LABELS/' + identity, 'fields': ['name'], 'value': app['name']}
            if evidence not in app['evidence']: app['evidence'].append(evidence)
        for name, locale, evidence in names:
            if name == app['name']: app['nameStatus'] = 'verified'
            elif name not in app['aliases']: app['aliases'].append(name)
            latin = any('LATIN' in unicodedata.name(char, '') for char in name) and all(not char.isalpha() or 'LATIN' in unicodedata.name(char, '') for char in name)
            if latin and locale.startswith('en') and not app.get('nameEn'): app['nameEn'] = name
            if evidence not in app['evidence']: app['evidence'].append(evidence)
        agreed = {category for category, _ in category_candidates}
        if len(agreed) == 1 and app['category'] != 'system' and app['categoryStatus'] != 'verified' and app['category'] not in agreed:
            app['review']['previousCategory'] = app['category']
            app['category'] = next(iter(agreed)); app['categoryStatus'] = 'verified'; counts['classified'] += 1
        elif app['category'] in agreed:
            app['categoryStatus'] = 'verified'
        if len(agreed) > 1:
            app['review']['categoryConflict'] = ','.join(sorted(agreed))
            if app['categoryStatus'] != 'verified': app['categoryStatus']='ambiguous'
        else: app['review'].pop('categoryConflict', None)
        for key in list(app['review']):
            if key.split(':')[0] in {'google-play', 'tencent'} and len(key.split(':')) == 2: app['review'].pop(key)
        for category, evidence in category_candidates:
            if category == app['category'] and evidence not in app['evidence']: app['evidence'].append(evidence)
        pronunciations = app.setdefault('pinyin', {})
        for name in [app['name']] + app['aliases']:
            if not han(name): continue
            syllables = lazy_pinyin(name, style=Style.NORMAL, errors=lambda text: [text])
            pieces, initials = [], []
            for chunk in syllables:
                words = re.findall(r'[a-z0-9]+', chunk.lower())
                pieces.extend(words)
                if re.search(r'[A-Z]{2,}', chunk) and not han(chunk): initials.extend(words)
                else: initials.extend(word[0] for word in words)
            if pieces: pronunciations[name] = [''.join(pieces), ' '.join(pieces), ''.join(initials)]
        app['review']['project'] = 'reviewed_mapping' if identity in LABELS and app['name'] == LABELS[identity][0] else 'no_additional_name_source'
    write(root / 'icons/catalog.json', catalog)
    print('metadata enrichment: ' + json.dumps(dict(counts), ensure_ascii=False))


def run(root, generate=False):
    catalog, sources, variants = source_audit(root)
    if generate:
        # Add new identities only after validating old references; never remove broken ones.
        bootstrap(root)
        catalog, sources, variants = source_audit(root, require_registered=True)
    else:
        source_audit(root, require_registered=True)
    expected = outputs(catalog, sources, variants)
    for name, value in expected.items():
        path = root / 'icons' / name
        if generate:
            write(path, value)
        elif not path.exists() or read(path) != value:
            raise ValueError('Stale generated file: ' + str(path))
        if name != 'index.json':
            asset = root / 'launcher' / 'assets' / 'icons' / name
            if generate:
                write(asset, value)
            elif not asset.exists() or asset.read_bytes() != path.read_bytes():
                raise ValueError('Stale runtime asset: ' + str(asset))
    print('derived audit: sources=%d; runtime assets synchronized' % len(sources))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('action', choices=['bootstrap', 'audit', 'generate', 'source-audit', 'report', 'collect-store', 'enrich'])
    parser.add_argument('--root', type=Path, default=ROOT)
    parser.add_argument('--output', type=Path)
    parser.add_argument('--limit', type=int, default=0)
    parser.add_argument('--provider', choices=['google-play', 'tencent'], default='google-play')
    parser.add_argument('--locale', choices=['zh_CN', 'en_US'], default='zh_CN')
    parser.add_argument('--packages-from', type=Path)
    parser.add_argument('--fdroid', type=Path)
    parser.add_argument('--store', action='append', type=Path, default=[])
    parser.add_argument('--pinyin-module', type=Path)
    args = parser.parse_args()
    if args.action == 'enrich':
        enrich(args.root, args.fdroid, args.store, args.pinyin_module)
    elif args.action == 'collect-store':
        collect_store(args.root, args.output or args.root / 'build/icon-library-implementation/store.jsonl', args.limit, args.provider, args.locale, args.packages_from)
    elif args.action == 'report':
        report(args.root, args.output or args.root / 'build')
    elif args.action == 'bootstrap':
        bootstrap(args.root)
    elif args.action == 'source-audit':
        source_audit(args.root)
    else:
        run(args.root, args.action == 'generate')
