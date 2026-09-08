package com.smartisanos.launcher.theme;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.location.Address;
import android.location.Geocoder;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Handler;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.List;
import java.util.Map;

/** Bridges public Android location/Open-Meteo data into the original weather icon protocol. */
public final class WeatherBridge {
    private static final String TAG = "WeatherBridge";
    private static final String PREFS = "launcher_dynamic_weather";
    private static final String ACTION_UPDATE = "com.smartisanos.weather.data.update";
    private static final long WEATHER_TTL_MS = 60L * 60L * 1000L;
    private static final long LOCATION_TTL_MS = 6L * 60L * 60L * 1000L;
    private static final int REQUEST_LOCATION = 2402;
    private static final Object LOCK = new Object();
    private static boolean sRefreshing;
    private static boolean sLocationRequesting;
    private static boolean sPeriodicScheduled;
    private static boolean sCityResolving;
    private static long sCityAttemptAt;
    private static boolean sPendingForcedRefresh;
    private static Boolean sHasWeatherApplication;
    private static String sWeatherPackage;
    private static String sWeatherComponent;
    private static final Map<String, CitySearchCacheEntry> CITY_SEARCH_CACHE =
            new HashMap<String, CitySearchCacheEntry>();
    private static final long CITY_SEARCH_CACHE_MS = 10L * 60L * 1000L;

    private WeatherBridge() {
    }

    public static boolean isWeatherPackage(String packageName, String componentName,
            CharSequence title) {
        String pkg = lower(packageName);
        String component = lower(componentName);
        String label = lower(title == null ? null : title.toString());
        if (pkg.length() == 0) {
            return false;
        }
        if ("com.smartisanos.weather".equals(pkg)
                || "com.android.weather".equals(pkg)
                || "com.vivo.weather".equals(pkg)
                || "com.bbk.weather".equals(pkg)
                || "com.coloros.weather2".equals(pkg)
                || "com.oplus.weather".equals(pkg)
                || "com.miui.weather2".equals(pkg)
                || "com.huawei.android.totemweather".equals(pkg)
                || "com.hihonor.android.totemweather".equals(pkg)
                || "com.meizu.flyme.weather".equals(pkg)
                || "com.sec.android.daemonapp".equals(pkg)) {
            return true;
        }
        return isVendorWeatherNamespace(pkg)
                && (pkg.contains("weather") || component.contains("weather")
                || "天气".equals(label) || "weather".equals(label));
    }

    private static boolean isVendorWeatherNamespace(String packageName) {
        String pkg = lower(packageName);
        return pkg.startsWith("com.vivo.") || pkg.startsWith("com.bbk.")
                || pkg.startsWith("com.oplus.") || pkg.startsWith("com.coloros.")
                || pkg.startsWith("com.miui.") || pkg.startsWith("com.huawei.")
                || pkg.startsWith("com.hihonor.") || pkg.startsWith("com.sec.android.")
                || pkg.startsWith("com.samsung.") || pkg.startsWith("com.motorola.");
    }

    public static Bundle getWeatherBundle(Context context) {
        if (context == null) {
            return null;
        }
        if (!LauncherSettingBridge.dynamicWeatherCalendarEnabled(context)) {
            return null;
        }
        Context app = app(context);
        scheduleRefresh(app, false);
        return readBundle(app);
    }

    public static void onLauncherResume(Activity activity) {
        if (activity == null) {
            return;
        }
        if (!LauncherSettingBridge.dynamicWeatherCalendarEnabled(activity)) {
            return;
        }
        if (!hasWeatherApplication(activity)) {
            return;
        }
        schedulePeriodicRefresh(app(activity));
        if (!isAutomaticLocation(activity)) {
            scheduleRefresh(app(activity), false);
            return;
        }
        if (!hasLocationPermission(activity)) {
            return;
        }
        scheduleRefresh(app(activity), false);
    }

    public static void onRequestPermissionsResult(Activity activity, int requestCode,
            int[] grantResults) {
        if (activity == null || requestCode != REQUEST_LOCATION) {
            return;
        }
        if (grantResults != null && grantResults.length > 0
                && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            scheduleRefresh(app(activity), true);
        }
    }

    public static boolean isAutomaticLocation(Context context) {
        return context == null || prefs(context).getBoolean("automatic_location", true);
    }

    public static boolean hasLocationPermissionForSettings(Context context) {
        return context != null && hasLocationPermission(context);
    }

    public static void requestLocationPermission(Activity activity) {
        if (activity == null || hasLocationPermission(activity) || Build.VERSION.SDK_INT < 23) {
            if (activity != null) scheduleRefresh(activity, true);
            return;
        }
        try {
            prefs(activity).edit().putBoolean("location_prompted", true).apply();
            activity.requestPermissions(new String[]{Manifest.permission.ACCESS_COARSE_LOCATION},
                    REQUEST_LOCATION);
        } catch (Throwable error) {
            Log.w(TAG, "settings location permission request failed", error);
        }
    }

    public static void setAutomaticLocation(Context context, boolean automatic) {
        if (context == null) return;
        prefs(context).edit().putBoolean("automatic_location", automatic)
                .remove("temperature_c").remove("temperature_actual_c")
                .remove("temperature_apparent_c").remove("temperature_f")
                .remove("weather_code").remove("weather_provider")
                .remove("weather_last_error").putLong("weather_updated_at", 0L).apply();
        if (automatic) scheduleRefresh(context, true);
    }

    public static void setManualLocation(Context context, CityResult city) {
        if (context == null || city == null || !validCoordinate(city.latitude, city.longitude)) {
            return;
        }
        prefs(context).edit()
                .putBoolean("automatic_location", false)
                .putString("manual_city", city.displayName())
                .putLong("manual_latitude_bits", Double.doubleToLongBits(city.latitude))
                .putLong("manual_longitude_bits", Double.doubleToLongBits(city.longitude))
                .putString("manual_station_id", city.stationId)
                .remove("temperature_c").remove("temperature_actual_c")
                .remove("temperature_apparent_c").remove("temperature_f")
                .remove("weather_code").remove("weather_provider")
                .remove("weather_last_error")
                .putLong("weather_updated_at", 0L).apply();
        scheduleRefresh(context, true);
    }

    public static String getLocationLabel(Context context) {
        if (context == null) return "";
        SharedPreferences p = prefs(context);
        if (!isAutomaticLocation(context)) {
            String city = p.getString("manual_city", "手动城市");
            double lat = longToDouble(p.getLong("manual_latitude_bits", 0L));
            double lon = longToDouble(p.getLong("manual_longitude_bits", 0L));
            return validCoordinate(lat, lon)
                    ? city + "（" + formatCoordinate(lat) + ", " + formatCoordinate(lon) + "）"
                    : city;
        }
        double lat = longToDouble(p.getLong("latitude_bits", 0L));
        double lon = longToDouble(p.getLong("longitude_bits", 0L));
        if (!validCoordinate(lat, lon)) return "自动定位（等待位置）";
        String city = p.getString("automatic_city", "");
        String coordinates = formatCoordinate(lat) + ", " + formatCoordinate(lon);
        return city.length() > 0 ? city + "（" + coordinates + "）"
                : "正在识别城市（" + coordinates + "）";
    }

    public static void scheduleCityResolution(Context context) {
        if (context == null || !isAutomaticLocation(context)) return;
        final Context target = app(context);
        final SharedPreferences p = prefs(target);
        if (p.getString("automatic_city", "").length() > 0) return;
        final double latitude = longToDouble(p.getLong("latitude_bits", 0L));
        final double longitude = longToDouble(p.getLong("longitude_bits", 0L));
        if (!validCoordinate(latitude, longitude)) return;
        synchronized (LOCK) {
            long now = System.currentTimeMillis();
            if (sCityResolving || now - sCityAttemptAt < 10L * 60L * 1000L) return;
            sCityResolving = true;
            sCityAttemptAt = now;
        }
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    String city = resolveCityName(target, latitude, longitude);
                    if (city.length() > 0) {
                        p.edit().putString("automatic_city", city).apply();
                        Log.i(TAG, "automatic city resolved: " + city);
                    }
                } finally {
                    synchronized (LOCK) { sCityResolving = false; }
                }
            }
        }, "WeatherCityResolver").start();
    }

    public static String getTemperatureLabel(Context context) {
        String value = context == null ? null : prefs(context).getString("temperature_c", null);
        return value == null ? "暂无天气数据" : value + "℃";
    }

    public static long getWeatherUpdatedAt(Context context) {
        return context == null ? 0L : prefs(context).getLong("weather_updated_at", 0L);
    }

    public static String getWeatherProvider(Context context) {
        return context == null ? "" : prefs(context).getString("weather_provider", "");
    }

    public static String getWeatherLastError(Context context) {
        return context == null ? "" : prefs(context).getString("weather_last_error", "");
    }

    public interface CitySearchCallback {
        void onResult(List<CityResult> cities, String error);
    }

    public static final class CityResult {
        public final String name;
        public final String admin;
        public final String country;
        public final double latitude;
        public final double longitude;
        public final long population;
        public final String featureCode;
        public final String stationId;

        CityResult(String name, String admin, String country, double latitude, double longitude,
                long population, String featureCode) {
            this(name, admin, country, latitude, longitude, population, featureCode, "");
        }

        CityResult(String name, String admin, String country, double latitude, double longitude,
                long population, String featureCode, String stationId) {
            this.name = name == null ? "" : name;
            this.admin = admin == null ? "" : admin;
            this.country = country == null ? "" : country;
            this.latitude = latitude;
            this.longitude = longitude;
            this.population = population;
            this.featureCode = featureCode == null ? "" : featureCode;
            this.stationId = stationId == null ? "" : stationId;
        }

        public String displayName() {
            StringBuilder out = new StringBuilder(name);
            if (admin.length() > 0 && !admin.equals(name)) out.append(" · ").append(admin);
            if (country.length() > 0) out.append(" · ").append(country);
            return out.toString();
        }
    }

    private static final class CitySearchCacheEntry {
        final long time;
        final List<CityResult> cities;
        CitySearchCacheEntry(long time, List<CityResult> cities) {
            this.time = time;
            this.cities = cities;
        }
    }

    public static void searchCities(final Context context, final String query,
            final CitySearchCallback callback) {
        if (callback == null) return;
        final String normalizedQuery = query == null ? "" : query.trim();
        List<CityResult> bundled = MaintainedLauncherSettingsHost.searchBundledCities(
                context, normalizedQuery, 8);
        if (!bundled.isEmpty()) {
            callback.onResult(bundled, null);
            return;
        }
        synchronized (CITY_SEARCH_CACHE) {
            CitySearchCacheEntry cached = CITY_SEARCH_CACHE.get(
                    normalizedQuery.toLowerCase(Locale.ROOT));
            if (cached != null && System.currentTimeMillis() - cached.time < CITY_SEARCH_CACHE_MS) {
                callback.onResult(new ArrayList<CityResult>(cached.cities), null);
                return;
            }
        }
        new Thread(new Runnable() {
            @Override public void run() {
                List<CityResult> cities = new ArrayList<CityResult>();
                String error = null;
                HttpURLConnection connection = null;
                try {
                    cities = searchCitiesWithAndroidGeocoder(context, normalizedQuery);
                    if (!cities.isEmpty()) {
                        cities = normalizeCityResults(normalizedQuery, cities);
                        synchronized (CITY_SEARCH_CACHE) {
                            CITY_SEARCH_CACHE.put(normalizedQuery.toLowerCase(Locale.ROOT),
                                    new CitySearchCacheEntry(System.currentTimeMillis(),
                                            new ArrayList<CityResult>(cities)));
                        }
                        callback.onResult(cities, null);
                        return;
                    }
                    String endpoint = "https://geocoding-api.open-meteo.com/v1/search?name="
                            + URLEncoder.encode(normalizedQuery, "UTF-8")
                            + "&count=20&language=zh&format=json&countryCode=CN";
                    connection = (HttpURLConnection) new URL(endpoint).openConnection();
                    connection.setConnectTimeout(1800);
                    connection.setReadTimeout(2800);
                    connection.setRequestProperty("User-Agent", "SmartisanLauncher/1.5");
                    if (connection.getResponseCode() != 200) throw new IllegalStateException("城市搜索失败");
                    JSONArray results = new JSONObject(readText(connection.getInputStream()))
                            .optJSONArray("results");
                    if (results != null) for (int i = 0; i < results.length(); i++) {
                        JSONObject item = results.optJSONObject(i);
                        if (item != null) cities.add(new CityResult(item.optString("name"),
                                item.optString("admin1"), item.optString("country"),
                                item.optDouble("latitude"), item.optDouble("longitude"),
                                item.optLong("population", 0L), item.optString("feature_code")));
                    }
                    cities = normalizeCityResults(normalizedQuery, cities);
                    synchronized (CITY_SEARCH_CACHE) {
                        CITY_SEARCH_CACHE.put(normalizedQuery.toLowerCase(Locale.ROOT),
                                new CitySearchCacheEntry(System.currentTimeMillis(),
                                        new ArrayList<CityResult>(cities)));
                    }
                } catch (Throwable failure) {
                    error = failure.getMessage() == null ? "城市搜索失败，请检查网络" : failure.getMessage();
                } finally {
                    if (connection != null) connection.disconnect();
                }
                callback.onResult(cities, error);
            }
        }, "OpenMeteoCitySearch").start();
    }

    private static List<CityResult> searchCitiesWithAndroidGeocoder(Context context,
            String query) {
        final ArrayList<CityResult> result = new ArrayList<CityResult>();
        if (context == null || query == null || query.length() == 0 || !Geocoder.isPresent()) {
            return result;
        }
        final Context target = app(context);
        final String targetQuery = query;
        Thread worker = new Thread(new Runnable() {
            @Override public void run() {
                List<CityResult> found = searchCitiesWithAndroidGeocoderBlocking(
                        target, targetQuery);
                synchronized (result) { result.addAll(found); }
            }
        }, "AndroidCityGeocoder");
        worker.start();
        try {
            worker.join(1200L);
        } catch (InterruptedException error) {
            Thread.currentThread().interrupt();
        }
        if (worker.isAlive()) return new ArrayList<CityResult>();
        synchronized (result) { return new ArrayList<CityResult>(result); }
    }

    private static List<CityResult> searchCitiesWithAndroidGeocoderBlocking(Context context,
            String query) {
        ArrayList<CityResult> result = new ArrayList<CityResult>();
        try {
            Geocoder geocoder = new Geocoder(context, Locale.CHINA);
            List<Address> addresses = geocoder.getFromLocationName(query, 8);
            if (addresses == null) return result;
            for (Address address : addresses) {
                if (address == null || !address.hasLatitude() || !address.hasLongitude()) continue;
                String name = firstNonEmpty(address.getLocality(), address.getSubAdminArea(),
                        address.getAdminArea(), address.getFeatureName(), query);
                result.add(new CityResult(name, address.getAdminArea(), address.getCountryName(),
                        address.getLatitude(), address.getLongitude(), 0L, "PPLA"));
            }
        } catch (Throwable error) {
            Log.w(TAG, "Android city geocoder failed", error);
        }
        return result;
    }

    private static String firstNonEmpty(String... values) {
        if (values != null) for (String value : values) {
            if (value != null && value.trim().length() > 0) return value.trim();
        }
        return "";
    }

    private static List<CityResult> normalizeCityResults(String query, List<CityResult> input) {
        if (input == null || input.isEmpty()) return new ArrayList<CityResult>();
        final String wanted = query == null ? "" : query.trim();
        boolean hasExactAdministrativeCity = false;
        for (CityResult city : input) {
            if (wanted.equalsIgnoreCase(city.name) && isAdministrativeCity(city.featureCode)) {
                hasExactAdministrativeCity = true;
                break;
            }
        }
        ArrayList<CityResult> filtered = new ArrayList<CityResult>();
        for (CityResult city : input) {
            if (city == null || !validCoordinate(city.latitude, city.longitude)) continue;
            if (hasExactAdministrativeCity
                    && (!wanted.equalsIgnoreCase(city.name)
                    || !isAdministrativeCity(city.featureCode))) continue;
            filtered.add(city);
        }
        Collections.sort(filtered, new Comparator<CityResult>() {
            @Override public int compare(CityResult a, CityResult b) {
                boolean ae = wanted.equalsIgnoreCase(a.name);
                boolean be = wanted.equalsIgnoreCase(b.name);
                if (ae != be) return ae ? -1 : 1;
                boolean aa = isAdministrativeCity(a.featureCode);
                boolean ba = isAdministrativeCity(b.featureCode);
                if (aa != ba) return aa ? -1 : 1;
                return a.population == b.population ? 0 : (a.population > b.population ? -1 : 1);
            }
        });
        LinkedHashMap<String, CityResult> unique = new LinkedHashMap<String, CityResult>();
        for (CityResult city : filtered) {
            boolean exact = wanted.equalsIgnoreCase(city.name);
            String key = exact ? city.name.toLowerCase(Locale.ROOT)
                    : (city.name + "|" + city.admin + "|" + city.country)
                            .toLowerCase(Locale.ROOT);
            if (!unique.containsKey(key)) unique.put(key, city);
            if (unique.size() >= 5) break;
        }
        return new ArrayList<CityResult>(unique.values());
    }

    private static boolean isAdministrativeCity(String featureCode) {
        if (featureCode == null) return false;
        String value = featureCode.toUpperCase(Locale.ROOT);
        return "PPLC".equals(value) || value.startsWith("PPLA");
    }

    private static void schedulePeriodicRefresh(final Context context) {
        if (!LauncherSettingBridge.dynamicWeatherCalendarEnabled(context)) {
            synchronized (LOCK) {
                sPeriodicScheduled = false;
            }
            return;
        }
        synchronized (LOCK) {
            if (sPeriodicScheduled) {
                return;
            }
            sPeriodicScheduled = true;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                synchronized (LOCK) {
                    sPeriodicScheduled = false;
                }
                if (!LauncherSettingBridge.dynamicWeatherCalendarEnabled(context)) {
                    return;
                }
                scheduleRefresh(context, false);
                schedulePeriodicRefresh(context);
            }
        }, WEATHER_TTL_MS);
    }

    private static boolean hasWeatherApplication(Context context) {
        synchronized (LOCK) {
            if (sHasWeatherApplication != null) {
                return sHasWeatherApplication.booleanValue();
            }
        }
        boolean found = false;
        String foundPackage = null;
        String foundComponent = null;
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            List<ResolveInfo> apps = context.getPackageManager().queryIntentActivities(intent, 0);
            if (apps == null) {
                return false;
            }
            for (ResolveInfo info : apps) {
                if (info == null || info.activityInfo == null) {
                    continue;
                }
                String packageName = info.activityInfo.packageName;
                String componentName = info.activityInfo.name;
                boolean weather = isWeatherPackage(packageName, componentName, null);
                if (!weather && isVendorWeatherNamespace(packageName)) {
                    CharSequence label = null;
                    try {
                        label = info.loadLabel(context.getPackageManager());
                    } catch (Throwable ignored) {
                    }
                    weather = isWeatherPackage(packageName, componentName, label);
                }
                if (weather) {
                    found = true;
                    foundPackage = packageName;
                    foundComponent = componentName;
                    break;
                }
            }
        } catch (Throwable error) {
            Log.w(TAG, "weather application scan failed", error);
        }
        synchronized (LOCK) {
            sHasWeatherApplication = Boolean.valueOf(found);
            sWeatherPackage = foundPackage;
            sWeatherComponent = foundComponent;
        }
        Log.i(TAG, "weather component cache resolved package=" + foundPackage
                + " component=" + foundComponent + " available=" + found);
        return found;
    }

    public static void invalidateWeatherApplicationCache() {
        synchronized (LOCK) {
            sHasWeatherApplication = null;
            sWeatherPackage = null;
            sWeatherComponent = null;
        }
    }

    public static void scheduleRefresh(Context context, boolean force) {
        if (context == null) {
            return;
        }
        if (!LauncherSettingBridge.dynamicWeatherCalendarEnabled(context)) {
            return;
        }
        final Context app = app(context);
        SharedPreferences settings = prefs(app);
        if (!isAutomaticLocation(app)) {
            double manualLatitude = longToDouble(settings.getLong("manual_latitude_bits", 0L));
            double manualLongitude = longToDouble(settings.getLong("manual_longitude_bits", 0L));
            if (validCoordinate(manualLatitude, manualLongitude)) {
                long updated = settings.getLong("weather_updated_at", 0L);
                if (force || System.currentTimeMillis() - updated >= WEATHER_TTL_MS) {
                    fetchAsync(app, manualLatitude, manualLongitude);
                }
            }
            return;
        }
        if (!hasLocationPermission(app)) return;
        long updated = prefs(app).getLong("weather_updated_at", 0L);
        if (!force && System.currentTimeMillis() - updated < WEATHER_TTL_MS) {
            return;
        }
        synchronized (LOCK) {
            if (sRefreshing || sLocationRequesting) {
                if (force) sPendingForcedRefresh = true;
                return;
            }
        }
        Location location = bestLastLocation(app);
        long locationUpdated = prefs(app).getLong("location_updated_at", 0L);
        long locationAge = location == null || location.getTime() <= 0L
                ? Long.MAX_VALUE : System.currentTimeMillis() - location.getTime();
        if (location != null && locationAge < LOCATION_TTL_MS) {
            rememberLocation(app, location);
            fetchAsync(app, location.getLatitude(), location.getLongitude());
            return;
        }
        double latitude = longToDouble(prefs(app).getLong("latitude_bits", 0L));
        double longitude = longToDouble(prefs(app).getLong("longitude_bits", 0L));
        if (locationUpdated > 0L && System.currentTimeMillis() - locationUpdated < LOCATION_TTL_MS
                && validCoordinate(latitude, longitude)) {
            fetchAsync(app, latitude, longitude);
            return;
        }
        requestSingleLocation(app);
    }

    private static void requestSingleLocation(final Context context) {
        if (!LauncherSettingBridge.dynamicWeatherCalendarEnabled(context)) {
            return;
        }
        synchronized (LOCK) {
            if (sLocationRequesting) {
                return;
            }
            sLocationRequesting = true;
        }
        try {
            final LocationManager manager =
                    (LocationManager) context.getSystemService(Context.LOCATION_SERVICE);
            if (manager == null) {
                finishLocationRequest();
                return;
            }
            LocationListener listener = new LocationListener() {
                // Override every default method from the current Android SDK.
                // The injected dex is not desugared together with the original
                // launcher, so leaving one default method unresolved makes old
                // vendor ROMs look for the non-existent LocationListener$-CC.
                @Override public void onFlushComplete(int requestCode) {}

                @Override
                public void onLocationChanged(Location location) {
                    try {
                        manager.removeUpdates(this);
                    } catch (Throwable ignored) {
                    }
                    finishLocationRequest();
                    if (location != null
                            && LauncherSettingBridge.dynamicWeatherCalendarEnabled(context)) {
                        if (isAutomaticLocation(context)) {
                            rememberLocation(context, location);
                            fetchAsync(context, location.getLatitude(), location.getLongitude());
                        } else {
                            synchronized (LOCK) {
                                sPendingForcedRefresh = false;
                            }
                            scheduleRefresh(context, true);
                        }
                    }
                }

                @Override
                public void onLocationChanged(List<Location> locations) {
                    if (locations != null && !locations.isEmpty()) {
                        onLocationChanged(locations.get(locations.size() - 1));
                    }
                }

                @Override public void onStatusChanged(String provider, int status, Bundle extras) {}
                @Override public void onProviderEnabled(String provider) {}
                @Override public void onProviderDisabled(String provider) {}
            };
            manager.requestSingleUpdate(LocationManager.NETWORK_PROVIDER, listener,
                    Looper.getMainLooper());
        } catch (Throwable error) {
            finishLocationRequest();
            Log.w(TAG, "single location request failed", error);
        }
    }

    private static void finishLocationRequest() {
        synchronized (LOCK) {
            sLocationRequesting = false;
        }
    }

    private static Location bestLastLocation(Context context) {
        try {
            LocationManager manager =
                    (LocationManager) context.getSystemService(Context.LOCATION_SERVICE);
            if (manager == null) {
                return null;
            }
            Location best = null;
            String[] providers = new String[]{LocationManager.NETWORK_PROVIDER,
                    LocationManager.PASSIVE_PROVIDER, LocationManager.GPS_PROVIDER};
            for (String provider : providers) {
                try {
                    Location candidate = manager.getLastKnownLocation(provider);
                    if (candidate != null && (best == null
                            || candidate.getTime() > best.getTime())) {
                        best = candidate;
                    }
                } catch (Throwable ignored) {
                }
            }
            return best;
        } catch (Throwable error) {
            return null;
        }
    }

    private static void fetchAsync(final Context context, final double latitude,
            final double longitude) {
        if (!LauncherSettingBridge.dynamicWeatherCalendarEnabled(context)) {
            return;
        }
        synchronized (LOCK) {
            if (sRefreshing) {
                return;
            }
            sRefreshing = true;
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    fetch(context, latitude, longitude);
                } catch (Throwable error) {
                    Log.w(TAG, "weather refresh failed", error);
                } finally {
                    boolean refreshAgain;
                    synchronized (LOCK) {
                        sRefreshing = false;
                        refreshAgain = sPendingForcedRefresh;
                        sPendingForcedRefresh = false;
                    }
                    if (refreshAgain) scheduleRefresh(context, true);
                }
            }
        }, "OpenMeteoWeather").start();
    }

    private static void fetch(Context context, double latitude, double longitude)
            throws Exception {
        String stationId = "";
        if (!isAutomaticLocation(context)) {
            stationId = prefs(context).getString("manual_station_id", "");
        }
        if (stationId.length() == 0) {
            CityResult nearest = MaintainedLauncherSettingsHost.nearestBundledCity(
                    context, latitude, longitude);
            if (nearest != null) stationId = nearest.stationId;
        }
        if (stationId.length() > 0) {
            try {
                WeatherResult domestic = fetchChinaWeather(stationId);
                storeWeather(context, latitude, longitude, domestic.smartisanCode,
                        domestic.temperature, domestic.actualTemperature,
                        domestic.apparentTemperature, domestic.sunrise, domestic.sunset,
                        domestic.provider);
                return;
            } catch (Throwable error) {
                Log.w(TAG, "China Weather failed; racing international sources", error);
            }
        }
        final Object raceLock = new Object();
        final WeatherResult[] winner = new WeatherResult[1];
        final Throwable[] errors = new Throwable[2];
        final double lat = latitude;
        final double lon = longitude;
        Runnable met = new Runnable() {
            @Override public void run() {
                try {
                    WeatherResult result = fetchMetNorway(lat, lon);
                    synchronized (raceLock) {
                        if (winner[0] == null) winner[0] = result;
                        raceLock.notifyAll();
                    }
                } catch (Throwable error) {
                    synchronized (raceLock) { errors[0] = error; raceLock.notifyAll(); }
                }
            }
        };
        Runnable openMeteo = new Runnable() {
            @Override public void run() {
                try {
                    WeatherResult result = fetchOpenMeteo(lat, lon);
                    synchronized (raceLock) {
                        if (winner[0] == null) winner[0] = result;
                        raceLock.notifyAll();
                    }
                } catch (Throwable error) {
                    synchronized (raceLock) { errors[1] = error; raceLock.notifyAll(); }
                }
            }
        };
        new Thread(met, "WeatherSource-MET").start();
        new Thread(openMeteo, "WeatherSource-OpenMeteo").start();
        long deadline = android.os.SystemClock.elapsedRealtime() + 6500L;
        synchronized (raceLock) {
            while (winner[0] == null && (errors[0] == null || errors[1] == null)) {
                long remain = deadline - android.os.SystemClock.elapsedRealtime();
                if (remain <= 0L) break;
                raceLock.wait(remain);
            }
        }
        if (winner[0] != null) {
            WeatherResult result = winner[0];
            storeWeather(context, latitude, longitude, result.smartisanCode,
                    result.temperature, result.actualTemperature, result.apparentTemperature,
                    result.sunrise, result.sunset, result.provider);
            return;
        }
        String message = "MET: " + shortError(errors[0])
                + "; Open-Meteo: " + shortError(errors[1]);
        prefs(context).edit().putString("weather_last_error", message).apply();
        throw new IllegalStateException(message);
    }

    private static WeatherResult fetchChinaWeather(String stationId) throws Exception {
        String endpoint = "https://d1.weather.com.cn/sk_2d/" + stationId + ".html";
        HttpURLConnection connection = (HttpURLConnection) new URL(endpoint).openConnection();
        connection.setConnectTimeout(1500);
        connection.setReadTimeout(2000);
        connection.setRequestProperty("Referer", "https://www.weather.com.cn/");
        connection.setRequestProperty("User-Agent", "Mozilla/5.0 SmartisanLauncher/1.5.3");
        try {
            int code = connection.getResponseCode();
            if (code < 200 || code >= 300) {
                throw new IllegalStateException("China Weather HTTP " + code);
            }
            String body = readText(connection.getInputStream());
            int start = body.indexOf('{');
            int end = body.lastIndexOf('}');
            if (start < 0 || end <= start) throw new IllegalStateException("invalid response");
            JSONObject data = new JSONObject(body.substring(start, end + 1));
            double actual = data.getDouble("temp");
            int temperature = (int) Math.round(actual);
            String weather = data.optString("weather", "");
            return new WeatherResult(mapChinaWeather(weather), temperature, temperature,
                    temperature, "06:00", "18:00", "中国天气网");
        } finally {
            connection.disconnect();
        }
    }

    private static int mapChinaWeather(String weather) {
        if (weather == null) return 99;
        if (weather.contains("雷")) return 4;
        if (weather.contains("暴雪") || weather.contains("大雪")) return 16;
        if (weather.contains("雪")) return 15;
        if (weather.contains("暴雨") || weather.contains("大雨")) return 9;
        if (weather.contains("中雨")) return 8;
        if (weather.contains("雨")) return 7;
        if (weather.contains("雾") || weather.contains("霾")) return 18;
        if (weather.contains("沙") || weather.contains("尘")) return 19;
        if (weather.contains("阴")) return 2;
        if (weather.contains("云")) return 1;
        if (weather.contains("晴")) return 0;
        return 99;
    }

    private static WeatherResult fetchOpenMeteo(double latitude, double longitude)
            throws Exception {
        String endpoint = "https://api.open-meteo.com/v1/forecast?latitude="
                + formatCoordinate(latitude) + "&longitude=" + formatCoordinate(longitude)
                + "&current=temperature_2m,apparent_temperature,weather_code,is_day"
                + "&daily=sunrise,sunset&timezone=auto&forecast_days=1";
        HttpURLConnection connection = (HttpURLConnection) new URL(endpoint).openConnection();
        connection.setConnectTimeout(3500);
        connection.setReadTimeout(5000);
        connection.setRequestProperty("Accept", "application/json");
        connection.setRequestProperty("User-Agent", "SmartisanLauncher/1.5");
        try {
            int code = connection.getResponseCode();
            if (code < 200 || code >= 300) {
                throw new IllegalStateException("Open-Meteo HTTP " + code);
            }
            String json = readText(connection.getInputStream());
            JSONObject root = new JSONObject(json);
            JSONObject current = root.getJSONObject("current");
            int weatherCode = current.getInt("weather_code");
            double actualTemperature = current.getDouble("temperature_2m");
            int temperature = (int) Math.round(actualTemperature);
            int apparentTemperature = (int) Math.round(current.optDouble(
                    "apparent_temperature", actualTemperature));
            int smartisanCode = mapWeatherCode(weatherCode);
            JSONObject daily = root.optJSONObject("daily");
            String sunrise = firstTime(daily == null ? null : daily.optJSONArray("sunrise"));
            String sunset = firstTime(daily == null ? null : daily.optJSONArray("sunset"));
            if (sunrise.length() == 0 || sunset.length() == 0) {
                sunrise = "06:00";
                sunset = "18:00";
            }
            return new WeatherResult(smartisanCode, temperature,
                    (int) Math.round(actualTemperature), apparentTemperature,
                    sunrise, sunset, "Open-Meteo");
        } finally {
            connection.disconnect();
        }
    }

    private static WeatherResult fetchMetNorway(double latitude, double longitude)
            throws Exception {
        String endpoint = "https://api.met.no/weatherapi/locationforecast/2.0/compact?lat="
                + formatCoordinate(latitude) + "&lon=" + formatCoordinate(longitude);
        HttpURLConnection connection = (HttpURLConnection) new URL(endpoint).openConnection();
        connection.setConnectTimeout(3000);
        connection.setReadTimeout(4500);
        connection.setRequestProperty("Accept", "application/json");
        connection.setRequestProperty("User-Agent",
                "SmartisanLauncher/1.5.3 github.com/RANH-F/Smartisan-original-launcher");
        try {
            int code = connection.getResponseCode();
            if (code < 200 || code >= 300) {
                throw new IllegalStateException("MET Norway HTTP " + code);
            }
            JSONObject root = new JSONObject(readText(connection.getInputStream()));
            JSONArray series = root.getJSONObject("properties").getJSONArray("timeseries");
            if (series.length() == 0) throw new IllegalStateException("MET Norway empty result");
            JSONObject data = series.getJSONObject(0).getJSONObject("data");
            JSONObject details = data.getJSONObject("instant").getJSONObject("details");
            double actual = details.getDouble("air_temperature");
            double apparent = apparentTemperature(actual,
                    details.optDouble("relative_humidity", 50.0),
                    details.optDouble("wind_speed", 0.0));
            String symbol = metSymbol(data);
            int temperature = (int) Math.round(actual);
            return new WeatherResult(mapMetSymbol(symbol), temperature,
                    temperature, (int) Math.round(apparent), "06:00", "18:00", "MET Norway");
        } finally {
            connection.disconnect();
        }
    }

    private static final class WeatherResult {
        final int smartisanCode;
        final int temperature;
        final int actualTemperature;
        final int apparentTemperature;
        final String sunrise;
        final String sunset;
        final String provider;

        WeatherResult(int smartisanCode, int temperature, int actualTemperature,
                int apparentTemperature, String sunrise, String sunset, String provider) {
            this.smartisanCode = smartisanCode;
            this.temperature = temperature;
            this.actualTemperature = actualTemperature;
            this.apparentTemperature = apparentTemperature;
            this.sunrise = sunrise;
            this.sunset = sunset;
            this.provider = provider;
        }
    }

    private static String metSymbol(JSONObject data) {
        String[] periods = new String[]{"next_1_hours", "next_6_hours", "next_12_hours"};
        for (String period : periods) {
            JSONObject block = data.optJSONObject(period);
            JSONObject summary = block == null ? null : block.optJSONObject("summary");
            String symbol = summary == null ? "" : summary.optString("symbol_code", "");
            if (symbol.length() > 0) return symbol;
        }
        return "cloudy";
    }

    private static int mapMetSymbol(String symbol) {
        String value = symbol == null ? "" : symbol.toLowerCase(Locale.ROOT);
        if (value.contains("thunder")) return 4;
        if (value.contains("snow") || value.contains("sleet")) return 15;
        if (value.contains("heavyrain")) return 9;
        if (value.contains("rain")) return 8;
        if (value.contains("fog")) return 18;
        if (value.contains("partlycloudy")) return 1;
        if (value.contains("cloudy")) return 2;
        if (value.contains("clearsky") || value.contains("fair")) return 0;
        return 99;
    }

    private static double apparentTemperature(double temperature, double humidity,
            double windSpeed) {
        if (temperature >= 27.0) {
            return temperature + 0.05 * Math.max(0.0, humidity - 40.0);
        }
        if (temperature <= 10.0 && windSpeed > 1.3) {
            return 13.12 + 0.6215 * temperature
                    - 11.37 * Math.pow(windSpeed * 3.6, 0.16)
                    + 0.3965 * temperature * Math.pow(windSpeed * 3.6, 0.16);
        }
        return temperature;
    }

    private static void storeWeather(Context context, double latitude, double longitude,
            int smartisanCode, int temperature, int actualTemperature, int apparentTemperature,
            String sunrise, String sunset, String provider) {
        int fahrenheit = Math.round(temperature * 9f / 5f + 32f);
        SharedPreferences.Editor editor = prefs(context).edit()
                .putString("weather_code", String.valueOf(smartisanCode))
                .putString("temperature_c", String.valueOf(temperature))
                .putString("temperature_actual_c", String.valueOf(actualTemperature))
                .putString("temperature_apparent_c", String.valueOf(apparentTemperature))
                .putString("temperature_f", String.valueOf(fahrenheit))
                .putString("sunrise_sunset", sunrise + "|" + sunset)
                .putString("weather_provider", provider)
                .remove("weather_last_error")
                .putLong("weather_updated_at", System.currentTimeMillis())
                .putLong("latitude_bits", Double.doubleToLongBits(latitude))
                .putLong("longitude_bits", Double.doubleToLongBits(longitude));
        if (isAutomaticLocation(context)) {
            String city = resolveCityName(context, latitude, longitude);
            if (city.length() > 0) editor.putString("automatic_city", city);
        }
        editor.apply();
        broadcast(context, readBundle(context));
        Log.i(TAG, "weather updated provider=" + provider + " code=" + smartisanCode
                + " actual=" + temperature + " apparent=" + apparentTemperature);
    }

    private static String shortError(Throwable error) {
        if (error == null) return "unknown";
        String message = error.getMessage();
        return error.getClass().getSimpleName()
                + (message == null || message.length() == 0 ? "" : ": " + message);
    }

    private static int mapWeatherCode(int code) {
        if (code == 0) return 0;
        if (code == 1 || code == 2) return 1;
        if (code == 3) return 2;
        if (code == 45 || code == 48) return 18;
        if (code == 51) return 7;
        if (code == 53) return 8;
        if (code == 55) return 9;
        if (code == 56 || code == 57 || code == 66 || code == 67) return 6;
        if (code == 61 || code == 80) return 7;
        if (code == 63 || code == 81) return 8;
        if (code == 65 || code == 82) return 9;
        if (code == 71 || code == 85) return 14;
        if (code == 73) return 15;
        if (code == 75 || code == 86) return 16;
        if (code == 77) return 13;
        if (code == 95) return 4;
        if (code == 96 || code == 99) return 5;
        return 99;
    }

    private static Bundle readBundle(Context context) {
        SharedPreferences prefs = prefs(context);
        String weatherCode = prefs.getString("weather_code", null);
        String temperature = prefs.getString("temperature_c", null);
        if (weatherCode == null || temperature == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("weatherCode", weatherCode);
        bundle.putString("temp", temperature);
        bundle.putString("city", weatherCity(context));
        bundle.putString("fahrenheitTemp", prefs.getString("temperature_f", temperature));
        bundle.putString("_1sunRiseAndSet", prefs.getString("sunrise_sunset", "06:00|18:00"));
        return bundle;
    }

    private static String weatherCity(Context context) {
        SharedPreferences values = prefs(context);
        String city = isAutomaticLocation(context)
                ? values.getString("automatic_city", "")
                : values.getString("manual_city", "");
        return city == null || city.trim().length() == 0 ? "当前位置" : city.trim();
    }

    private static void broadcast(Context context, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        Intent intent = new Intent(ACTION_UPDATE);
        intent.setPackage(context.getPackageName());
        intent.putExtras(bundle);
        context.sendBroadcast(intent);
        final Intent directUpdate = new Intent(intent);
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override public void run() {
                try {
                    Class<?> weatherView = Class.forName(
                            "com.smartisanos.launcher.view.activeicon.H");
                    weatherView.getMethod("g", Intent.class).invoke(null, directUpdate);
                } catch (Throwable error) {
                    Log.w(TAG, "direct weather icon refresh failed", error);
                }
            }
        });
    }

    private static void rememberLocation(Context context, Location location) {
        prefs(context).edit()
                .putLong("latitude_bits", Double.doubleToLongBits(location.getLatitude()))
                .putLong("longitude_bits", Double.doubleToLongBits(location.getLongitude()))
                .putLong("location_updated_at", System.currentTimeMillis())
                .apply();
    }

    private static boolean hasLocationPermission(Context context) {
        return Build.VERSION.SDK_INT < 23 || context.checkSelfPermission(
                Manifest.permission.ACCESS_COARSE_LOCATION) == PackageManager.PERMISSION_GRANTED;
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    private static Context app(Context context) {
        Context app = context.getApplicationContext();
        return app == null ? context : app;
    }

    private static String readText(InputStream input) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(input, "UTF-8"));
        StringBuilder out = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            out.append(line);
        }
        reader.close();
        return out.toString();
    }

    private static String firstTime(JSONArray array) {
        if (array == null || array.length() == 0) {
            return "";
        }
        String value = array.optString(0, "");
        int separator = value.indexOf('T');
        if (separator >= 0 && separator + 6 <= value.length()) {
            return value.substring(separator + 1, separator + 6);
        }
        return value;
    }

    private static String formatCoordinate(double value) {
        return String.format(Locale.US, "%.5f", value);
    }

    private static String resolveCityName(Context context, double latitude, double longitude) {
        try {
            if (Geocoder.isPresent()) {
                List<Address> addresses = new Geocoder(context, Locale.CHINA)
                        .getFromLocation(latitude, longitude, 1);
                if (addresses != null && !addresses.isEmpty()) {
                    Address address = addresses.get(0);
                    String city = address.getLocality();
                    if (city == null || city.length() == 0) city = address.getSubAdminArea();
                    if (city == null || city.length() == 0) city = address.getAdminArea();
                    String province = address.getAdminArea();
                    if (city != null && city.length() > 0) {
                        return province != null && province.length() > 0 && !province.equals(city)
                                ? province + " · " + city : city;
                    }
                }
            }
        } catch (Throwable error) {
            Log.w(TAG, "reverse geocoding failed", error);
        }
        return resolveCityNameFromNetwork(latitude, longitude);
    }

    private static String resolveCityNameFromNetwork(double latitude, double longitude) {
        HttpURLConnection connection = null;
        try {
            String endpoint = "https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat="
                    + formatCoordinate(latitude) + "&lon=" + formatCoordinate(longitude)
                    + "&zoom=10&addressdetails=1&accept-language=zh-CN";
            connection = (HttpURLConnection) new URL(endpoint).openConnection();
            connection.setConnectTimeout(8000);
            connection.setReadTimeout(10000);
            connection.setRequestProperty("Accept", "application/json");
            connection.setRequestProperty("User-Agent", "SmartisanLauncher/1.5 (dynamic weather)");
            if (connection.getResponseCode() != 200) return "";
            JSONObject address = new JSONObject(readText(connection.getInputStream()))
                    .optJSONObject("address");
            if (address == null) return "";
            String city = firstNonEmpty(address, "city", "town", "municipality", "county");
            String province = firstNonEmpty(address, "state", "province");
            if (city.length() == 0) city = province;
            return province.length() > 0 && city.length() > 0 && !province.equals(city)
                    ? province + " · " + city : city;
        } catch (Throwable error) {
            Log.w(TAG, "network reverse geocoding failed", error);
            return "";
        } finally {
            if (connection != null) connection.disconnect();
        }
    }

    private static String firstNonEmpty(JSONObject object, String... keys) {
        for (String key : keys) {
            String value = object.optString(key, "");
            if (value.length() > 0) return value;
        }
        return "";
    }

    private static boolean validCoordinate(double latitude, double longitude) {
        return latitude >= -90d && latitude <= 90d && longitude >= -180d
                && longitude <= 180d && !(latitude == 0d && longitude == 0d);
    }

    private static double longToDouble(long bits) {
        return bits == 0L ? 0d : Double.longBitsToDouble(bits);
    }

    private static String lower(String value) {
        return value == null ? "" : value.toLowerCase(Locale.US);
    }
}
