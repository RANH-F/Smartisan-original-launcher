"""Strict source audit -> deterministic generation -> derived audit.

PNG identities are immutable. Bootstrap is explicit and preserves existing catalog fields.
"""
import argparse
import hashlib
import json
import re
import sys
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
                                               'category': app['category'], 'terms': []})
            for term in [identity, app['name'], app['category'], CATEGORY_LABELS[app['category']], source] + app.get('packages', []) + app.get('aliases', []) + app.get('keywords', []):
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
    search = {'schema': 1, 'entries': list(entries.values()), 'packages': package_aliases,
              'components': component_aliases}
    revision = hashlib.sha256(json.dumps(search, ensure_ascii=False, sort_keys=True).encode()).hexdigest()[:16]
    search['revision'] = revision
    return {'variants.json': {'schema': 1, 'variants': generated_variants}, 'index.json': index, 'search-index.json': search}


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
    parser.add_argument('action', choices=['bootstrap', 'audit', 'generate', 'source-audit'])
    parser.add_argument('--root', type=Path, default=ROOT)
    args = parser.parse_args()
    if args.action == 'bootstrap':
        bootstrap(args.root)
    elif args.action == 'source-audit':
        source_audit(args.root)
    else:
        run(args.root, args.action == 'generate')
