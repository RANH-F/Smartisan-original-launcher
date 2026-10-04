"""Run production icon-pack, candidate discovery, search and fallback logic with controlled Android boundaries.
The XML adapter uses JDK XML parsing; this does not claim Android UI/frame/device acceptance.
"""
from pathlib import Path
import argparse, subprocess, tempfile, re
ROOT = Path(__file__).resolve().parents[3]

def method(source, signature):
    start = source.index(signature)
    brace = source.index('{', start)
    end, depth = brace + 1, 1
    while depth:
        depth += (source[end] == '{') - (source[end] == '}')
        end += 1
    return source[start:end]

def main():
    parser = argparse.ArgumentParser(__doc__)
    parser.add_argument('--jdk', required=True, type=Path)
    args = parser.parse_args()
    base = ROOT / 'launcher/tools/java'
    pack = (base / 'com/smartisanos/home/settings/icons/IconPackManager.java').read_text('utf-8')
    pack = re.sub(r'^(package|import) .*;\s*$', '', pack, flags=re.M).replace('public final class IconPackManager', 'static final class IconPackManager')
    replacements = {'android.os.Looper':'Looper', 'android.util.Log':'Log',
        'android.os.Process':'Process', 'android.os.SystemClock':'SystemClock',
        'android.content.ComponentCallbacks2':'ComponentCallbacks2',
        'com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost':'Host'}
    for old, new in replacements.items(): pack = pack.replace(old, new)
    repo = (base / 'com/smartisanos/home/settings/icons/IconPreviewRepository.java').read_text('utf-8')
    a = repo.index('    public interface CandidateLibrary')
    b = repo.index('    public RequestSession openSession(', a)
    candidates = repo[a:b].replace('android.os.SystemClock', 'SystemClock')
    db = (base / 'com/smartisanos/launcher/data/redirectIcon/RedirectIconDB.java').read_text('utf-8')
    db = re.sub(r'^(package|import) .*;\s*$', '', db, flags=re.M).replace('RedirectIconDB', 'PersistentRedirectDB').replace('public final class PersistentRedirectDB', 'static final class PersistentRedirectDB')
    host = (base / 'com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java').read_text('utf-8')
    fallback = method(host, '    private static Drawable resolveManagedIcon(').replace('android.graphics.drawable.BitmapDrawable', 'BitmapDrawable')
    choice_sources = '\n'.join(method(host, sig) for sig in ['    private static List<String> choiceLibrarySourceIds(', '    private static String selectedChoiceKey(', '    private static String stripPng('])
    grouping = '\n'.join(method(host, sig) for sig in [
        '        private String rowIdentity(', '        private void rebuildRows() {',
        '        private void rebuildRows(final boolean rebuildSections)',
        '        void setSearchQuery(', '        private void filterSearchRows()',
        '        void invalidateIconData(boolean rebuildSections)'])
    code = (Path(__file__).parent / 'AppIconProbe.java').read_text('utf-8')
    code = code.replace('PACK_PRODUCTION', pack).replace('CANDIDATE_PRODUCTION', candidates).replace('FALLBACK_PRODUCTION', fallback).replace('GROUPING_PRODUCTION', grouping).replace('DB_PRODUCTION', db).replace('CHOICE_SOURCE_PRODUCTION', choice_sources)
    with tempfile.TemporaryDirectory(prefix='app-icon-candidates-') as folder:
        folder = Path(folder)
        java = folder / 'AppIconProbe.java'
        java.write_text(code, 'utf-8')
        sources = [str(java)] + [str(base / ('com/smartisanos/home/settings/icons/' + name + '.java'))
            for name in ['AppIconCandidate','AppIconSearchIndex']]
        subprocess.run([str(args.jdk / 'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(folder), *sources], check=True)
        subprocess.run([str(args.jdk / 'bin/java.exe'), '-Djava.io.tmpdir=' + str(folder), '-cp', str(folder), 'AppIconProbe'], check=True)
    # Check the production lifecycle/resource wiring that the fixture cannot execute.
    checks = [
        ('original bar reused', 'new OriginalSearchBarCompat(' in host and 'OriginalQuickSearchResources.create(activity)' in host),
        ('search fields indexed', 'index.add(info,' in host and 'info.packageName, info.componentName);' in host),
        ('existing row layout retained', '"app_icon_settings_item_layout"' in host),
        ('no timed chooser rebuild', 'refreshChoiceGridLater' not in host and 'retryBindChoiceIcon' not in host),
        ('choice render has session', 'request(session, renderKey' in host),
        ('existing selection marker', '"preview_picture_selected"' in host),
        ('single app DB and hot dispatch', 'RedirectIconDB.updatePackIcon(activity' in host and 'forceUpdateIcon(activity, info);' in host),
        ('cancel releases discovery ownership', 'candidateRefresh.remove(session)' in repo and 'candidateRequests.remove(session)' in repo),
        ('uninstall event invalidates', '.onIconPackOverridesChanged(context, packageName)' in (base / 'com/smartisanos/launcher/install/SmartisanInstallManager.java').read_text('utf-8')),
        ('QuickSearch shares resource owner', 'return OriginalQuickSearchResources.create(this)' in (base / 'com/smartisanos/launcher/quicksearch/ui/OriginalQuickSearchActivity.java').read_text('utf-8')),
    ]
    for label, ok in checks:
        if not ok: raise AssertionError(label)
    print(f'PASS UI_WIRING_STATIC_CHECKS={len(checks)}; Android UI/runtime unverified')

if __name__ == '__main__': main()
