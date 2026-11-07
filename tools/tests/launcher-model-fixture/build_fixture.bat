@echo off
setlocal EnableExtensions

set "FIXTURE_ROOT=%~dp0"
set "VARIANT=%~1"
if "%VARIANT%"=="" set "VARIANT=v1"
if /I not "%VARIANT%"=="v1" if /I not "%VARIANT%"=="v2" if /I not "%VARIANT%"=="v3-stale" if /I not "%VARIANT%"=="v4-add" if /I not "%VARIANT%"=="v5-alias" (
  echo Usage: %~nx0 ^<v1^|v2^|v3-stale^|v4-add^|v5-alias^>
  exit /b 2
)

if "%ANDROID_SDK%"=="" set "ANDROID_SDK=D:\sdk"
if "%JAVA_HOME%"=="" set "JAVA_HOME=E:\Program Files\Android\Android Studio\jbr"
set "BUILD_TOOLS=%ANDROID_SDK%\build-tools\37.0.0"
set "ANDROID_JAR=%ANDROID_SDK%\platforms\android-36\android.jar"
set "AAPT2=%BUILD_TOOLS%\aapt2.exe"
set "D8=%BUILD_TOOLS%\d8.bat"
set "APKSIGNER=%BUILD_TOOLS%\apksigner.bat"
set "JAVAC=%JAVA_HOME%\bin\javac.exe"
set "JAR=%JAVA_HOME%\bin\jar.exe"
set "KEYTOOL=%JAVA_HOME%\bin\keytool.exe"

for %%F in ("%AAPT2%" "%D8%" "%APKSIGNER%" "%JAVAC%" "%JAR%" "%KEYTOOL%" "%ANDROID_JAR%") do (
  if not exist "%%~F" (
    echo Missing build dependency: %%~F
    exit /b 3
  )
)

set "OUT=%FIXTURE_ROOT%build\%VARIANT%"
set "COMPILED=%OUT%\compiled.zip"
set "UNSIGNED=%OUT%\fixture-%VARIANT%-unsigned.apk"
set "ALIGNED=%OUT%\fixture-%VARIANT%-aligned.apk"
set "SIGNED=%FIXTURE_ROOT%build\fixture-%VARIANT%.apk"
set "CLASSES=%OUT%\classes"
set "CLASSES_JAR=%OUT%\fixture-classes.jar"
set "DEX=%OUT%\dex"
set "KEYSTORE=%FIXTURE_ROOT%build\fixture-debug.jks"

if exist "%OUT%" rmdir /s /q "%OUT%"
mkdir "%OUT%" "%CLASSES%" "%DEX%"

echo [1/5] Compiling resources for %VARIANT%...
"%AAPT2%" compile --dir "%FIXTURE_ROOT%res" -o "%COMPILED%" || exit /b 10

echo [2/5] Linking fixture APK...
"%AAPT2%" link -o "%UNSIGNED%" -I "%ANDROID_JAR%" --manifest "%FIXTURE_ROOT%variants\%VARIANT%\AndroidManifest.xml" -R "%COMPILED%" --min-sdk-version 23 --target-sdk-version 28 || exit /b 11

echo [3/5] Compiling fixture activities...
"%JAVAC%" -source 8 -target 8 -bootclasspath "%ANDROID_JAR%" -d "%CLASSES%" "%FIXTURE_ROOT%src\com\smartisan\launchertest\fixture\LauncherActivityA.java" "%FIXTURE_ROOT%src\com\smartisan\launchertest\fixture\LauncherActivityB.java" "%FIXTURE_ROOT%src\com\smartisan\launchertest\fixture\LauncherActivityC.java" "%FIXTURE_ROOT%src\com\smartisan\launchertest\fixture\ComponentSettingsActivity.java" || exit /b 12
"%JAR%" cf "%CLASSES_JAR%" -C "%CLASSES%" . || exit /b 13
call "%D8%" --lib "%ANDROID_JAR%" --min-api 23 --output "%DEX%" "%CLASSES_JAR%" || exit /b 14
"%JAR%" uf "%UNSIGNED%" -C "%DEX%" classes.dex || exit /b 15

if not exist "%KEYSTORE%" (
  echo [4/5] Creating local fixture debug signing key...
  "%KEYTOOL%" -genkeypair -keystore "%KEYSTORE%" -storepass android -keypass android -alias fixture -dname "CN=Launcher Model Fixture, OU=Tests, O=Local, C=US" -keyalg RSA -keysize 2048 -validity 3650 || exit /b 16
)

echo [4/5] Aligning fixture APK...
"%BUILD_TOOLS%\zipalign.exe" -f 4 "%UNSIGNED%" "%ALIGNED%" || exit /b 17
echo [5/5] Signing fixture APK...
"%APKSIGNER%" sign --ks "%KEYSTORE%" --ks-key-alias fixture --ks-pass pass:android --key-pass pass:android --out "%SIGNED%" "%ALIGNED%" || exit /b 18
"%APKSIGNER%" verify --verbose "%SIGNED%" || exit /b 19

echo SUCCESS: %SIGNED%
