# Launcher Model Fixture

This directory builds an independent test APK for Phase 2B package/model lifecycle validation.

- Package: `com.smartisan.launchertest.fixture`
- `v1`: LauncherActivityA and LauncherActivityB, versionCode 1
- `v2`: the same two components, versionCode 2, for replace-position tests
- `v3-stale`: only LauncherActivityB, versionCode 3, for the stale-component safety gate
- `v4-add`: LauncherActivityA, LauncherActivityB and LauncherActivityC, versionCode 4, for update component-discovery observation
- `v5-alias`: two launcher aliases targeting ActivityA, with different icons and labels; exported ComponentSettingsActivity toggles its own aliases with public PackageManager calls (show, switch, hide, and manifest-default reset).

It is not referenced by `build.bat`, `launcher/`, or the production Launcher manifest. Its local debug signing key is created under this fixture's `build/` directory and is intentionally separate from the Launcher signing path.

Build one variant:

```bat
tools\tests\launcher-model-fixture\build_fixture.bat v1
tools\tests\launcher-model-fixture\build_fixture.bat v2
tools\tests\launcher-model-fixture\build_fixture.bat v3-stale
tools\tests\launcher-model-fixture\build_fixture.bat v4-add
```

Outputs are under `tools\tests\launcher-model-fixture\build\`. Only install or uninstall this package when running the controlled Phase 2B test matrix.
