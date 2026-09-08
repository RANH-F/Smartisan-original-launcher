@echo off
chcp 65001 >nul
setlocal

set "ROOT=%~dp0"

rem ============================================================
rem 1. Detect JDK
rem ============================================================

set "JDK_HOME="

if defined JAVA_HOME (
  if exist "%JAVA_HOME%\bin\java.exe" (
    set "JDK_HOME=%JAVA_HOME%"
  )
)

if not defined JDK_HOME (
  if exist "D:\Program Files\Android\Android Studio\jbr\bin\java.exe" (
    set "JDK_HOME=D:\Program Files\Android\Android Studio\jbr"
  )
)

if not defined JDK_HOME (
  if exist "E:\Program Files\Android\Android Studio\jbr\bin\java.exe" (
    set "JDK_HOME=E:\Program Files\Android\Android Studio\jbr"
  )
)

if not defined JDK_HOME (
  if exist "C:\Program Files\Android\Android Studio\jbr\bin\java.exe" (
    set "JDK_HOME=C:\Program Files\Android\Android Studio\jbr"
  )
)

if not defined JDK_HOME (
  if exist "%ROOT%build\tools\jdk17\jdk-17.0.19+10\bin\java.exe" (
    set "JDK_HOME=%ROOT%build\tools\jdk17\jdk-17.0.19+10"
  )
)

if not defined JDK_HOME (
  echo [ERROR] JDK not found!
  echo.
  echo Checked:
  echo   JAVA_HOME
  echo   D:\Program Files\Android\Android Studio\jbr
  echo   E:\Program Files\Android\Android Studio\jbr
  echo   C:\Program Files\Android\Android Studio\jbr
  echo   %ROOT%build\tools\jdk17\jdk-17.0.19+10
  echo.
  echo Please install Android Studio or JDK 17.
  exit /b 1
)

set "JAVA_HOME=%JDK_HOME%"
set "PATH=%JAVA_HOME%\bin;%PATH%"

where java >nul 2>nul
if errorlevel 1 (
  echo [ERROR] java.exe not available in PATH.
  echo JAVA_HOME=%JAVA_HOME%
  exit /b 1
)

where javac >nul 2>nul
if errorlevel 1 (
  echo [ERROR] javac.exe not available in PATH.
  echo JAVA_HOME=%JAVA_HOME%
  echo Current Java path may be JRE only, not full JDK.
  exit /b 1
)

where jar >nul 2>nul
if errorlevel 1 (
  echo [ERROR] jar.exe not available in PATH.
  echo JAVA_HOME=%JAVA_HOME%
  exit /b 1
)

echo [env] JAVA_HOME=%JAVA_HOME%
java -version

rem ============================================================
rem 2. Basic project paths
rem ============================================================

set "APKTOOL=%ROOT%tools\apktool.jar"
set "KEYSTORE=%ROOT%tools\signing\release.keystore"
set "OUT_DIR=%ROOT%build"
set "MANIFEST_BIN=%ROOT%launcher\original\AndroidManifest.xml"

if not exist "%APKTOOL%" (
  echo [ERROR] apktool.jar not found!
  echo Checked path: %APKTOOL%
  exit /b 1
)

if not exist "%KEYSTORE%" (
  echo [ERROR] release.keystore not found!
  echo Checked path: %KEYSTORE%
  exit /b 1
)

if not exist "%MANIFEST_BIN%" (
  echo [ERROR] binary AndroidManifest.xml not found!
  echo Checked path: %MANIFEST_BIN%
  exit /b 1
)

rem ============================================================
rem 3. Detect Android SDK
rem ============================================================

set "ANDROID_SDK="

if defined ANDROID_HOME (
  if exist "%ANDROID_HOME%" (
    set "ANDROID_SDK=%ANDROID_HOME%"
  )
)

if not defined ANDROID_SDK (
  if defined ANDROID_SDK_ROOT (
    if exist "%ANDROID_SDK_ROOT%" (
      set "ANDROID_SDK=%ANDROID_SDK_ROOT%"
    )
  )
)

if not defined ANDROID_SDK (
  if exist "%LOCALAPPDATA%\Android\Sdk" (
    set "ANDROID_SDK=%LOCALAPPDATA%\Android\Sdk"
  )
)

if not defined ANDROID_SDK (
  if exist "D:\sdk" (
    set "ANDROID_SDK=D:\sdk"
  )
)

if not defined ANDROID_SDK (
  if exist "E:\sdk" (
    set "ANDROID_SDK=E:\sdk"
  )
)

if not defined ANDROID_SDK (
  if exist "C:\Android\Sdk" (
    set "ANDROID_SDK=C:\Android\Sdk"
  )
)

if not defined ANDROID_SDK (
  echo [ERROR] Android SDK not found!
  echo.
  echo Checked:
  echo   ANDROID_HOME
  echo   ANDROID_SDK_ROOT
  echo   %LOCALAPPDATA%\Android\Sdk
  echo   D:\sdk
  echo   E:\sdk
  echo   C:\Android\Sdk
  echo.
  echo Please install Android SDK or set ANDROID_HOME.
  exit /b 1
)

echo [env] ANDROID_SDK=%ANDROID_SDK%

rem ============================================================
rem 4. Detect latest Build Tools
rem ============================================================

set "BUILD_TOOLS="

if exist "%ANDROID_SDK%\build-tools" (
  for /f "delims=" %%d in ('dir /b /ad /o-n "%ANDROID_SDK%\build-tools"') do (
    if not defined BUILD_TOOLS (
      if exist "%ANDROID_SDK%\build-tools\%%d\aapt2.exe" (
        set "BUILD_TOOLS=%ANDROID_SDK%\build-tools\%%d"
      )
    )
  )
)

if not defined BUILD_TOOLS (
  if exist "%ANDROID_SDK%\build-tools\35.0.0\aapt2.exe" (
    set "BUILD_TOOLS=%ANDROID_SDK%\build-tools\35.0.0"
  )
)

if not defined BUILD_TOOLS (
  echo [ERROR] Android SDK build-tools not found!
  echo Checked path: %ANDROID_SDK%\build-tools
  echo Please install Android SDK Build-Tools.
  exit /b 1
)

set "ZIPALIGN=%BUILD_TOOLS%\zipalign.exe"
set "D8=%BUILD_TOOLS%\d8.bat"
set "AAPT2=%BUILD_TOOLS%\aapt2.exe"
set "APKSIGNER=%BUILD_TOOLS%\apksigner.bat"

echo [env] BUILD_TOOLS=%BUILD_TOOLS%

if not exist "%AAPT2%" (
  echo [ERROR] aapt2.exe not found!
  echo Checked path: %AAPT2%
  exit /b 1
)

if not exist "%D8%" (
  echo [ERROR] d8.bat not found!
  echo Checked path: %D8%
  exit /b 1
)

rem ============================================================
rem 5. Detect latest android.jar
rem ============================================================

set "ANDROID_JAR="

if exist "%ANDROID_SDK%\platforms" (
  for /f "delims=" %%p in ('dir /b /ad /o-n "%ANDROID_SDK%\platforms"') do (
    if not defined ANDROID_JAR (
      if exist "%ANDROID_SDK%\platforms\%%p\android.jar" (
        set "ANDROID_JAR=%ANDROID_SDK%\platforms\%%p\android.jar"
      )
    )
  )
)

if not defined ANDROID_JAR (
  if exist "%ANDROID_SDK%\platforms\android-35\android.jar" (
    set "ANDROID_JAR=%ANDROID_SDK%\platforms\android-35\android.jar"
  )
)

if not defined ANDROID_JAR (
  echo [ERROR] android.jar not found!
  echo Checked path: %ANDROID_SDK%\platforms
  echo Please install Android SDK Platform.
  exit /b 1
)

echo [env] ANDROID_JAR=%ANDROID_JAR%

rem ============================================================
rem 6. Prepare output directory
rem ============================================================

if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

rem ============================================================
rem 6a. Stage pristine Magic Flow artwork used by the internal host
rem ============================================================

if exist "%ROOT%build\magicflow-audit-20260906\res\drawable-xxhdpi\music_default.png" (
  if not exist "%ROOT%launcher\assets\quickdesktop_original" (
    mkdir "%ROOT%launcher\assets\quickdesktop_original"
  )
  for %%f in (
    music_default.png
    music_def_app_icon.png
    alipay_pay_scan.png
    alipay_pay_qr.png
    setting.png
    search_icon.png
    notes.png
    calendar.png
    sound_record.png
    calculator.png
    clock.png
    city_service.png
  ) do (
    copy /y "%ROOT%build\magicflow-audit-20260906\res\drawable-xxhdpi\%%f" "%ROOT%launcher\assets\quickdesktop_original\%%f" >nul
    if errorlevel 1 (
      echo FAIL: staging pristine Magic Flow asset %%f failed.
      exit /b 1
    )
  )
)

rem ============================================================
rem 7. Build maintained settings resources
rem ============================================================

if exist "%ROOT%launcher\tools\maintained_settings_res\res" (
  echo [extra] Building maintained settings resources...

  if exist "%ROOT%launcher\scratch\maintained_settings_res" (
    rmdir /s /q "%ROOT%launcher\scratch\maintained_settings_res"
  )

  mkdir "%ROOT%launcher\scratch\maintained_settings_res\flat"
  mkdir "%ROOT%launcher\scratch\maintained_settings_res\res"

  rem Bundle complete normal-mode weather/calendar icons into the maintained
  rem resource APK so dynamic switching never waits for the network.
  xcopy /e /i /q /y "%ROOT%launcher\tools\maintained_settings_res\res\*" "%ROOT%launcher\scratch\maintained_settings_res\res\" >nul
  copy /y "%ROOT%icons\drawable\com.smartisanos.weather.png" "%ROOT%launcher\scratch\maintained_settings_res\res\drawable\static_icon_weather.png" >nul
  copy /y "%ROOT%icons\drawable\com.android.calendar.png" "%ROOT%launcher\scratch\maintained_settings_res\res\drawable\static_icon_calendar.png" >nul

  if not exist "%ROOT%launcher\assets\icons" (
    mkdir "%ROOT%launcher\assets\icons"
  )
  copy /y "%ROOT%icons\variants.json" "%ROOT%launcher\assets\icons\variants.json" >nul

  if not exist "%ROOT%launcher\assets\settings_maintained" (
    mkdir "%ROOT%launcher\assets\settings_maintained"
  )

  "%AAPT2%" compile --dir "%ROOT%launcher\scratch\maintained_settings_res\res" -o "%ROOT%launcher\scratch\maintained_settings_res\flat\res.zip"
  if errorlevel 1 (
    echo FAIL: aapt2 compile maintained settings resources failed.
    exit /b 1
  )

  "%AAPT2%" link --manifest "%ROOT%launcher\tools\maintained_settings_res\AndroidManifest.xml" -I "%ANDROID_JAR%" --auto-add-overlay -o "%ROOT%launcher\scratch\maintained_settings_res\maintained-settings-res.apk" "%ROOT%launcher\scratch\maintained_settings_res\flat\res.zip"
  if errorlevel 1 (
    echo FAIL: aapt2 link maintained settings resources failed.
    exit /b 1
  )

  copy /y "%ROOT%launcher\scratch\maintained_settings_res\maintained-settings-res.apk" "%ROOT%launcher\assets\settings_maintained\maintained-settings-res.apk" >nul
)

rem ============================================================
rem 7b. Build embedded original QuickSearch UI resources
rem ============================================================

if exist "%ROOT%launcher\tools\original_quicksearch_res\res" (
  echo [extra] Building original QuickSearch UI resources...

  if exist "%ROOT%launcher\scratch\original_quicksearch_res" (
    rmdir /s /q "%ROOT%launcher\scratch\original_quicksearch_res"
  )

  mkdir "%ROOT%launcher\scratch\original_quicksearch_res\flat"
  mkdir "%ROOT%launcher\scratch\original_quicksearch_res\source"

  rem Q8-A reuses the four pristine History 9-patch/PNG assets without redrawing.
  xcopy /e /i /q /y "%ROOT%launcher\tools\original_quicksearch_res\res" "%ROOT%launcher\scratch\original_quicksearch_res\source" >nul
  if errorlevel 2 (
    echo FAIL: staging original QuickSearch UI resources failed.
    exit /b 1
  )
  if not exist "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4" (
    mkdir "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4"
  )
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\global_search_tag_white_normal.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\qs_original_history_tag_normal.9.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\global_search_tag_white_pressed.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\qs_original_history_tag_pressed.9.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\history_clear_btn_normal.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\qs_original_history_clear_normal.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\history_clear_btn_pressed.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\qs_original_history_clear_pressed.png" >nul
  rem Q8-D.5 stages the pristine Header, result row and MenuDialog resource closure.
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\history_clear_btn_normal.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\history_clear_btn_normal.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\history_clear_btn_pressed.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\history_clear_btn_pressed.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\list_section_title.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\list_section_title.9.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\list_item_bgwithoutphoto.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\list_item_bgwithoutphoto.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\list_item_bgwithoutphoto_down.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\list_item_bgwithoutphoto_down.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\bottom_sheet_title_bar_bg.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\bottom_sheet_title_bar_bg.9.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\smt_title_bar_shadow.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\smt_title_bar_shadow.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\divider_bg.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\divider_bg.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\standard_icon_cancel.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\standard_icon_cancel.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\standard_icon_cancel_pressed.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\standard_icon_cancel_pressed.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\standard_icon_cancel_disabled.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\standard_icon_cancel_disabled.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\shrink_long_btn_red_normal.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\shrink_long_btn_red_normal.9.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\shrink_long_btn_red_pressed.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\shrink_long_btn_red_pressed.9.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\shrink_long_btn_red_disabled.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\shrink_long_btn_red_disabled.9.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\shrink_long_btn_shadow_normal.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\shrink_long_btn_shadow_normal.9.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\shrink_long_btn_shadow_pressed.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\shrink_long_btn_shadow_pressed.9.png" >nul
  copy /y "%ROOT%original_apks\quicksearch_phone_reference\decoded\res\drawable-xxhdpi\shrink_long_btn_shadow_disable.9.png" "%ROOT%launcher\scratch\original_quicksearch_res\source\drawable-xxhdpi-v4\shrink_long_btn_shadow_disable.9.png" >nul
  if errorlevel 1 (
    echo FAIL: staging pristine QuickSearch History assets failed.
    exit /b 1
  )

  if not exist "%ROOT%launcher\assets\quicksearch_original" (
    mkdir "%ROOT%launcher\assets\quicksearch_original"
  )

  "%AAPT2%" compile --dir "%ROOT%launcher\scratch\original_quicksearch_res\source" -o "%ROOT%launcher\scratch\original_quicksearch_res\flat\res.zip"
  if errorlevel 1 (
    echo FAIL: aapt2 compile original QuickSearch UI resources failed.
    exit /b 1
  )

  "%AAPT2%" link --manifest "%ROOT%launcher\tools\original_quicksearch_res\AndroidManifest.xml" -I "%ANDROID_JAR%" --auto-add-overlay -o "%ROOT%launcher\scratch\original_quicksearch_res\original-quicksearch-res.apk" "%ROOT%launcher\scratch\original_quicksearch_res\flat\res.zip"
  if errorlevel 1 (
    echo FAIL: aapt2 link original QuickSearch UI resources failed.
    exit /b 1
  )

  copy /y "%ROOT%launcher\scratch\original_quicksearch_res\original-quicksearch-res.apk" "%ROOT%launcher\assets\quicksearch_original\original-quicksearch-res.apk" >nul
)

rem ============================================================
rem 8. Build launcher with apktool
rem ============================================================

echo [1/2] Building original-port launcher...

if exist "%ROOT%launcher\build" rmdir /s /q "%ROOT%launcher\build"
if exist "%ROOT%launcher\scratch\classes" rmdir /s /q "%ROOT%launcher\scratch\classes"
if exist "%ROOT%launcher\scratch\dex" rmdir /s /q "%ROOT%launcher\scratch\dex"
if exist "%ROOT%launcher\scratch\helpers.jar" del /f /q "%ROOT%launcher\scratch\helpers.jar"
if exist "%ROOT%launcher\scratch\java_sources.txt" del /f /q "%ROOT%launcher\scratch\java_sources.txt"

java -jar "%APKTOOL%" b "%ROOT%launcher" -o "%OUT_DIR%\launcher-unsigned.apk"
if errorlevel 1 (
  echo FAIL: apktool build failed.
  exit /b 1
)

rem ============================================================
rem 9. Inject binary AndroidManifest.xml
rem ============================================================

echo [extra] Injecting binary AndroidManifest.xml...

pushd "%ROOT%launcher\original"
jar uf "%OUT_DIR%\launcher-unsigned.apk" AndroidManifest.xml
if errorlevel 1 (
  popd
  echo FAIL: binary AndroidManifest.xml inject failed.
  exit /b 1
)
popd

rem ============================================================
rem 10. Compile migrated settings host Java to classes2.dex
rem ============================================================

set "BUILD_SCRATCH=%OUT_DIR%\scratch"

if exist "%ROOT%launcher\tools\java" (
  echo [extra] Compiling migrated settings host...

  if exist "%BUILD_SCRATCH%" rmdir /s /q "%BUILD_SCRATCH%"

  mkdir "%BUILD_SCRATCH%\classes"
  mkdir "%BUILD_SCRATCH%\dex"

  dir /s /b "%ROOT%launcher\tools\java\*.java" > "%BUILD_SCRATCH%\java_sources.txt"

  javac -encoding UTF-8 -source 1.8 -target 1.8 -bootclasspath "%ANDROID_JAR%" -classpath "%ANDROID_JAR%;%OUT_DIR%\launcher-unsigned.apk" -d "%BUILD_SCRATCH%\classes" @"%BUILD_SCRATCH%\java_sources.txt"
  if errorlevel 1 (
    echo FAIL: javac migrated settings host failed.
    exit /b 1
  )

  pushd "%BUILD_SCRATCH%\classes"
  jar cf "%BUILD_SCRATCH%\helpers.jar" .
  if errorlevel 1 (
    popd
    echo FAIL: helper jar create failed.
    exit /b 1
  )
  popd

  call "%D8%" --min-api 23 --classpath "%ANDROID_JAR%" --output "%BUILD_SCRATCH%\dex" "%BUILD_SCRATCH%\helpers.jar"
  if errorlevel 1 (
    echo FAIL: d8 migrated settings host failed.
    exit /b 1
  )

  if not exist "%BUILD_SCRATCH%\dex\classes.dex" (
    echo FAIL: d8 output classes.dex not found.
    exit /b 1
  )

  copy /y "%BUILD_SCRATCH%\dex\classes.dex" "%BUILD_SCRATCH%\dex\classes2.dex" >nul

  pushd "%BUILD_SCRATCH%\dex"
  jar uf "%OUT_DIR%\launcher-unsigned.apk" classes2.dex
  if errorlevel 1 (
    popd
    echo FAIL: classes2.dex inject failed.
    exit /b 1
  )
  popd
)

rem ============================================================
rem 11. Zipalign and sign APK
rem ============================================================

echo [2/2] Signing APK...

if exist "%OUT_DIR%\launcher-presigned.apk" del /f /q "%OUT_DIR%\launcher-presigned.apk"
if exist "%OUT_DIR%\launcher-aligned.apk" del /f /q "%OUT_DIR%\launcher-aligned.apk"
if exist "%OUT_DIR%\launcher-signed.apk" del /f /q "%OUT_DIR%\launcher-signed.apk"

powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Sleep -Milliseconds 500"

if exist "%ZIPALIGN%" (
  "%ZIPALIGN%" -P 16 -f 4 "%OUT_DIR%\launcher-unsigned.apk" "%OUT_DIR%\launcher-aligned.apk"
  if errorlevel 1 (
    echo WARN: 16KB page zipalign failed, retrying standard alignment.
    "%ZIPALIGN%" -p -f 4 "%OUT_DIR%\launcher-unsigned.apk" "%OUT_DIR%\launcher-aligned.apk"
  )
  if errorlevel 1 (
    echo FAIL: zipalign failed.
    exit /b 1
  )
) else (
  echo WARN: zipalign not found, using unaligned APK.
  copy /y "%OUT_DIR%\launcher-unsigned.apk" "%OUT_DIR%\launcher-aligned.apk" >nul
)

if exist "%APKSIGNER%" (
  call "%APKSIGNER%" sign ^
    --ks "%KEYSTORE%" ^
    --ks-key-alias smartisan ^
    --ks-pass pass:android ^
    --key-pass pass:android ^
    --v1-signing-enabled true ^
    --v2-signing-enabled true ^
    --v3-signing-enabled true ^
    --out "%OUT_DIR%\launcher-signed.apk" ^
    "%OUT_DIR%\launcher-aligned.apk"

  if errorlevel 1 (
    echo FAIL: apksigner failed.
    exit /b 1
  )
) else (
  echo WARN: apksigner not found, falling back to jarsigner-only APK.

  copy /y "%OUT_DIR%\launcher-aligned.apk" "%OUT_DIR%\launcher-presigned.apk" >nul

  jarsigner -keystore "%KEYSTORE%" -storepass android -keypass android "%OUT_DIR%\launcher-presigned.apk" smartisan
  if errorlevel 1 (
    echo FAIL: jarsigner failed.
    exit /b 1
  )

  copy /y "%OUT_DIR%\launcher-presigned.apk" "%OUT_DIR%\launcher-signed.apk" >nul
)

if not exist "%OUT_DIR%\launcher-signed.apk" (
  echo FAIL: signed APK not generated.
  exit /b 1
)

echo.
echo SUCCESS: %OUT_DIR%\launcher-signed.apk
exit /b 0
