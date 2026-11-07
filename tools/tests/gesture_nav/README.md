> Paused 2026-11-04. Product builds hide the settings entry and set
> HOME_ICON_EXPERIMENT_AVAILABLE=false. The 193-check result is retained historical
> experimental evidence, not a new release validation. --experimental-build changes
> only generated JVM test copies; it never enables the product or installs anything.
> Archived source/patches and evidence index: experiments/gesture-nav-20261104/README.md.

# S1 controlled tests

Run from the project root:

```powershell
python -B tools/tests/gesture_nav/run_tests.py --experimental-build
python -B tools/tests/gesture_nav/run_tests.py --experimental-build --negative-control consume --output build/gesture-nav-s1-20261104/negative-consume
python -B tools/tests/gesture_nav/run_tests.py --experimental-build --negative-control deadline --output build/gesture-nav-s1-20261104/negative-deadline
```

The runner compiles the complete production `LauncherHomeCompat`, `HomeGestureContract`,
`HomeIconTarget` and `HomeIconGeometry` files against deterministic Android service stubs.
It does not extract or rewrite product methods for the normal run. Negative controls mutate
only generated copies and must fail an assertion rather than compilation.

Coverage includes typed/absent/disabled/malformed contracts, API 26–29 bypass and API 30–37
parsing, exact profile/component identities, cloned callback fields, stale/duplicate/expired
requests, one-shot send, lifecycle cancellation and delayed scene/surface availability.
The geometry fixtures supply synthetic **already projected artwork** corners for different
grid sizes/scales, Dock positions and label states. Those fixtures test arithmetic, not the
actual native projection or an icon pack's transparent body/shadow boundaries.

The test injects a controlled RectF by reflection into the private product completion method.
There is no production test Intent, injectable resolver or enable-unverified-geometry setting.
The production resolver now admits a restricted default-circle static-composer path for grid 12, size 100%, identity parents and full-screen untransformed Surface. Recorded GL outputs are exercised through the actual resolver and Messenger path without injecting RectF. Grid 20, Dock, icon packs and transformed states are explicitly rejected. Native runtime and system adoption remain separate acceptance gates.

Stub results do not establish ART class loading on old Android, OEM receipt/adoption, physical
animation improvement, EGL behavior, or device regression. No command here calls ADB.
