"""Exercise extracted production OEM boundaries with controlled platform services.

These are API/ownership/selection checks, not Meizu/Samsung device acceptance.
"""
from pathlib import Path
import argparse, subprocess, tempfile

ROOT = Path(__file__).resolve().parents[3]
THEME = ROOT / 'launcher/tools/java/com/smartisanos/launcher/theme'

def block(text, signature):
    start = text.index(signature)
    pos = text.index('{', start) + 1
    depth = 1
    while depth:
        depth += (text[pos] == '{') - (text[pos] == '}')
        pos += 1
    return text[start:pos]

WEATHER = r'''
import java.util.*;
public class WeatherProbe {
 static final String TAG="WeatherProbe";
 static int checks,fetches,remembers,manual;static final Object LOCK=new Object();
 static boolean sLocationRequesting,sPendingForcedRefresh;static final long LOCATION_REQUEST_TIMEOUT_MS=20000;
 static void check(boolean v,String m){checks++;if(!v)throw new AssertionError(m);}
 static class Build {static class VERSION {static int SDK_INT=36;}}
 static class Manifest {static class permission {static String ACCESS_FINE_LOCATION="fine",ACCESS_COARSE_LOCATION="coarse";}}
 static class PackageManager {static int PERMISSION_GRANTED=0;}
 static class Bundle {}
 static class Looper {static Looper getMainLooper(){return new Looper();}}
 static class Handler {static List<Runnable> jobs=new ArrayList<>();static boolean accepted=true;
 Handler(Looper l){}boolean postDelayed(Runnable r,long ms){check(ms==20000,"bounded deadline");if(accepted)jobs.add(r);return accepted;}
 void removeCallbacks(Runnable r){jobs.remove(r);}static void timeout(){for(Runnable r:new ArrayList<>(jobs))r.run();}}
 static class Criteria {static int ACCURACY_COARSE=2;void setAccuracy(int a){check(a==2,"weather asks for coarse accuracy");}}
 static class Location {double lat,lon;long time;Location(double a,double b){lat=a;lon=b;}double getLatitude(){return lat;}double getLongitude(){return lon;}long getTime(){return time;}}
 interface LocationListener {void onLocationChanged(Location l);void onLocationChanged(List<Location> l);void onFlushComplete(int n);void onStatusChanged(String p,int s,Bundle b);void onProviderEnabled(String p);void onProviderDisabled(String p);}
 static class LocationManager {static final String NETWORK_PROVIDER="network",GPS_PROVIDER="gps",PASSIVE_PROVIDER="passive";
 List<String> enabled=new ArrayList<>();Map<String,Location> last=new HashMap<>();boolean criteria=true,denied,runtimeFailure;int removed,criteriaCalls;LocationListener listener;String requested;
 void requestSingleUpdate(Criteria c,LocationListener l,Looper x){criteriaCalls++;if(denied)throw new SecurityException();if(runtimeFailure)throw new IllegalStateException();if(!criteria)throw new IllegalArgumentException();listener=l;requested="fused";}
 void requestSingleUpdate(String p,LocationListener l,Looper x){if(!enabled.contains(p))throw new IllegalArgumentException();listener=l;requested=p;}
 void removeUpdates(LocationListener l){removed++;}List<String> getProviders(boolean e){return enabled;}
 String getBestProvider(Criteria c,boolean e){return enabled.isEmpty()?null:enabled.get(0);}Location getLastKnownLocation(String p){return last.get(p);}}
 static class Prefs {Map<String,String> values=new HashMap<>();Prefs edit(){return this;}Prefs putString(String k,String v){values.put(k,v);return this;}Prefs remove(String k){values.remove(k);return this;}void apply(){}}
 static class Context {static String LOCATION_SERVICE="location";LocationManager manager=new LocationManager();Prefs prefs=new Prefs();boolean fine,coarse=true,enabled=true,automatic=true;
 Object getSystemService(String n){return manager;}int checkSelfPermission(String n){return (Manifest.permission.ACCESS_FINE_LOCATION.equals(n)?fine:coarse)?0:-1;}}
 static class LauncherSettingBridge {static boolean dynamicWeatherCalendarEnabled(Context c){return c.enabled;}}
 static class Log {static void w(String a,String b,Throwable e){}}
 static Prefs prefs(Context c){return c.prefs;}static boolean isAutomaticLocation(Context c){return c.automatic;}
 static void rememberLocation(Context c,Location l){remembers++;}static void fetchAsync(Context c,double a,double b){fetches++;}
 static void scheduleRefresh(Context c,boolean force){manual++;}
 @PERMISSION@
 @REQUEST@
 @FINISH@
 @VALID@
 @LAST@
 static Context fresh(){sLocationRequesting=false;sPendingForcedRefresh=false;fetches=remembers=manual=0;Handler.jobs.clear();Handler.accepted=true;return new Context();}
 public static void main(String[] args){
  for(int api:new int[]{23,28,30,31,35,36}){
   Build.VERSION.SDK_INT=api;Context c=fresh();c.manager.enabled.add("fused");requestSingleLocation(c);
   check(sLocationRequesting&&"fused".equals(c.manager.requested),"fused-only service registered");LocationListener saved=c.manager.listener;
   saved.onLocationChanged(new Location(31,121));check(!sLocationRequesting&&fetches==1&&remembers==1&&Handler.jobs.isEmpty()&&c.manager.removed==1,"success releases listener/timer once");
   saved.onLocationChanged(new Location(32,122));check(fetches==1&&c.manager.removed==1,"duplicate callback ignored");
   c=fresh();c.manager.criteria=false;c.manager.enabled.add("network");requestSingleLocation(c);check("network".equals(c.manager.requested),"network fallback after missing fused");
   saved=c.manager.listener;Handler.timeout();check(!sLocationRequesting&&c.manager.removed==1&&Handler.jobs.isEmpty()&&c.prefs.values.containsKey("weather_last_error"),"timeout cleans up and reports failure");
   requestSingleLocation(c);check(sLocationRequesting,"retry after timeout allowed");saved.onLocationChanged(new Location(31,121));check(sLocationRequesting&&fetches==0,"late old fix cannot finish a newer request");c.manager.listener.onLocationChanged(new Location(31,121));check(!sLocationRequesting&&fetches==1&&!c.prefs.values.containsKey("weather_last_error"),"successful retry clears error");
   c=fresh();c.manager.criteria=false;c.manager.enabled.add("gps");requestSingleLocation(c);check(!sLocationRequesting&&c.manager.requested==null&&Handler.jobs.isEmpty(),"coarse-only permission never starts GPS");
   c=fresh();c.fine=true;c.manager.criteria=false;c.manager.enabled.add("gps");requestSingleLocation(c);check("gps".equals(c.manager.requested),"already-granted fine permission permits GPS fallback");c.manager.listener.onLocationChanged(new Location(31,121));
   c=fresh();c.coarse=false;c.manager.denied=true;requestSingleLocation(c);check(!sLocationRequesting&&Handler.jobs.isEmpty(),"revoked permission releases request");
   c=fresh();c.manager.denied=true;c.manager.enabled.add("network");requestSingleLocation(c);
   check(sLocationRequesting&&"network".equals(c.manager.requested)&&!c.fine,"provider-specific fused denial falls back to permitted coarse network");
   c.manager.listener.onLocationChanged(new Location(31,121));check(fetches==1&&remembers==1&&!sLocationRequesting&&Handler.jobs.isEmpty(),"network fallback completes and releases deadline");
   c=fresh();c.manager.denied=true;c.manager.enabled.add("gps");requestSingleLocation(c);
   check(!sLocationRequesting&&c.manager.requested==null&&Handler.jobs.isEmpty(),"fused denial never widens coarse permission to GPS");
   c=fresh();c.coarse=false;c.manager.denied=true;c.manager.enabled.add("network");requestSingleLocation(c);
   check(!sLocationRequesting&&c.manager.requested==null&&Handler.jobs.isEmpty()&&c.prefs.values.get("weather_last_error").contains("权限"),"actual permission revocation stops before provider fallback");
   c.coarse=true;c.manager.denied=false;requestSingleLocation(c);check(sLocationRequesting,"permission denial allows a later explicit retry");c.manager.listener.onLocationChanged(new Location(31,121));
   c=fresh();c.manager.runtimeFailure=true;requestSingleLocation(c);check(!sLocationRequesting&&Handler.jobs.isEmpty(),"failed service releases request");
   c=fresh();Handler.accepted=false;requestSingleLocation(c);check(!sLocationRequesting&&c.manager.criteriaCalls==0,"unavailable callback loop does not leak a request");
   c=fresh();c.enabled=false;requestSingleLocation(c);check(!sLocationRequesting&&Handler.jobs.isEmpty()&&c.manager.criteriaCalls==0,"disabled weather does no location work");
   c=fresh();requestSingleLocation(c);c.automatic=false;c.manager.listener.onLocationChanged(new Location(31,121));check(fetches==0&&manual==1&&!sLocationRequesting,"manual selection wins over pending automatic fix");
   c=fresh();requestSingleLocation(c);c.enabled=false;c.manager.listener.onLocationChanged(new Location(31,121));check(fetches==0&&!sLocationRequesting&&Handler.jobs.isEmpty(),"disable during request prevents weather fetch");
   c=fresh();requestSingleLocation(c);c.manager.listener.onLocationChanged(new Location(99,121));check(fetches==0&&!sLocationRequesting,"invalid fix cannot be stored");
   c=fresh();requestSingleLocation(c);requestSingleLocation(c);check(c.manager.criteriaCalls==1&&Handler.jobs.size()==1,"concurrent refresh requests are merged");Handler.timeout();
   c=fresh();c.manager=null;requestSingleLocation(c);check(!sLocationRequesting&&Handler.jobs.isEmpty(),"missing system service cannot leave a pending request");
   c=fresh();Location fused=new Location(31,121),network=new Location(30,120);fused.time=2000;network.time=1000;c.manager.last.put("fused",fused);c.manager.last.put("network",network);check(bestLastLocation(c)==fused,"newer fused cached fix participates in freshness selection");
  }
  System.out.println("PASS WEATHER_LOCATION checks="+checks);
 }
}
'''

ICON = r'''
public class IconProbe {
 static int checks;static void check(boolean v,String m){checks++;if(!v)throw new AssertionError(m);}
 static class Build {static class VERSION {static int SDK_INT;}}
 static class android {static class util {static class DisplayMetrics {static int DENSITY_XXXHIGH=640;}}}
 static class TextUtils {static boolean isEmpty(String s){return s==null||s.isEmpty();}}
 static class Drawable {final String id;Drawable(String s){id=s;}}
 static class Resources {static class NotFoundException extends RuntimeException{}boolean missing,denied;int id,density;final Drawable raw=new Drawable("raw");
 Drawable getDrawableForDensity(int i,int d){if(denied)throw new SecurityException();if(missing)throw new NotFoundException();id=i;density=d;return raw;}}
 static class ApplicationInfo {int icon=10;}static class ActivityInfo {int icon=11;ApplicationInfo applicationInfo=new ApplicationInfo();}
 static class ResolveInfo {int icon,decorations;String resolvePackageName;ActivityInfo activityInfo=new ActivityInfo();final Drawable decorated=new Drawable("OEM-frame");
 int getIconResource(){return icon!=0?icon:activityInfo.icon!=0?activityInfo.icon:activityInfo.applicationInfo.icon;}
 Drawable loadIcon(PackageManager p){decorations++;return decorated;}}
 static class PackageManager {static class NameNotFoundException extends Exception{}Resources resources=new Resources();boolean missing,metadataDenied;String owner;ResolveInfo resolved;ApplicationInfo application=new ApplicationInfo();int applicationDecorations;final Drawable decorated=new Drawable("OEM-application-frame");
 ApplicationInfo getApplicationInfo(String p,int flags)throws NameNotFoundException{if(metadataDenied)throw new SecurityException();if(missing)throw new NameNotFoundException();return application;}
 Drawable getApplicationIcon(String p)throws NameNotFoundException{applicationDecorations++;return decorated;}
 Resources getResourcesForApplication(ApplicationInfo a)throws NameNotFoundException{if(missing)throw new NameNotFoundException();owner="component";return resources;}
 Resources getResourcesForApplication(String s)throws NameNotFoundException{if(missing)throw new NameNotFoundException();owner=s;return resources;}}
 static class Context {final PackageManager pm=new PackageManager();PackageManager getPackageManager(){return pm;}}
 static Drawable profileIcon;
 static Drawable profileLauncherIcon(Context c,String p,String n,int user){return profileIcon;}
 static ResolveInfo resolveLauncherActivity(PackageManager pm,String p,String n){return pm.resolved;}
 @LOAD@
 @RESOURCE@
 @RAWAPP@
 @DEFAULT@
 public static void main(String[] a){
  for(int api:new int[]{23,24,26,28,30,35,36}){Build.VERSION.SDK_INT=api;
   PackageManager pm=new PackageManager();ResolveInfo r=new ResolveInfo();r.icon=21;
   check(loadApkIcon(r,pm)==pm.resources.raw&&r.decorations==0,"raw resource before OEM wrapper");check(pm.resources.id==21&&pm.resources.density==640,"exact component and canonical density");
   r.resolvePackageName="external.namespace";check(loadApkIcon(r,pm)==pm.resources.raw&&pm.owner.equals("external.namespace"),"resolve resource namespace retained");
   pm.resources.missing=true;check(loadApkIcon(r,pm)==r.decorated&&r.decorations==1,"missing resource retains original fallback");
   pm.resources.missing=false;pm.missing=true;check(loadApkIcon(r,pm)==r.decorated&&r.decorations==2,"missing package retains original fallback");
   pm.missing=false;r.icon=0;r.activityInfo.icon=0;r.activityInfo.applicationInfo.icon=0;check(loadApkIcon(r,pm)==r.decorated,"zero resource fallback retained");
  }
  for(int api:new int[]{23,36}){Build.VERSION.SDK_INT=api;ResolveInfo r=new ResolveInfo();r.activityInfo.applicationInfo=null;check(loadApkIcon(r,new PackageManager())==r.decorated,"incomplete vendor component metadata retains fallback");}
  for(int api:new int[]{23,24,26,28,30,35,36}){Build.VERSION.SDK_INT=api;
   Context c=new Context();
   check(loadDefaultIconForDesktopItem(c,"app.pkg","OldActivity",0)==c.pm.resources.raw&&c.pm.applicationDecorations==0,"unresolved component must read raw application APK icon before OEM wrapper");
   check(c.pm.resources.id==10&&c.pm.resources.density==640,"application fallback retains APK resource and canonical density");
   c.pm.resolved=new ResolveInfo();c.pm.resolved.icon=21;
   check(loadDefaultIconForDesktopItem(c,"app.pkg","Activity",0)==c.pm.resources.raw&&c.pm.resources.id==21,"resolved component wins over application fallback");
   c.pm.resolved=null;c.pm.resources.missing=true;
   check(loadDefaultIconForDesktopItem(c,"app.pkg","OldActivity",0)==c.pm.decorated&&c.pm.applicationDecorations==1,"unavailable raw application drawable retains existing fallback");
   c.pm.resources.missing=false;c.pm.resources.denied=true;
   check(loadDefaultIconForDesktopItem(c,"app.pkg","OldActivity",0)==c.pm.decorated,"denied raw resources retain fallback");
   c.pm.resources.denied=false;c.pm.metadataDenied=true;
   check(loadDefaultIconForDesktopItem(c,"app.pkg","OldActivity",0)==c.pm.decorated,"denied application metadata retains fallback");
   c.pm.metadataDenied=false;c.pm.application.icon=0;
   check(loadDefaultIconForDesktopItem(c,"app.pkg","OldActivity",0)==c.pm.decorated,"zero application icon retains platform default");
   profileIcon=new Drawable("profile-user");int decorations=c.pm.applicationDecorations;
   check(loadDefaultIconForDesktopItem(c,"app.pkg","Activity",12)==profileIcon&&c.pm.applicationDecorations==decorations,"work profile icon never replaced by owner-user APK artwork");profileIcon=null;
   check(loadDefaultIconForDesktopItem(null,"app.pkg","Activity",0)==null,"null context remains null");
   check(loadDefaultIconForDesktopItem(c,"","Activity",0)==null,"empty package remains null");
  }
  System.out.println("PASS RAW_APK_ICON checks="+checks);
 }
}
'''

REFRESH = r'''
public class RefreshProbe {
 static int checks;static void check(boolean v,String m){checks++;if(!v)throw new AssertionError(m);}
 static class Build {static class VERSION {static int SDK_INT;}}
 static class Context {}
 static class ContextWrapper extends Context {Context base;ContextWrapper(Context c){base=c;}Context getBaseContext(){return base;}}
 static class Activity extends ContextWrapper {Window window;boolean finishing;Activity(Window w){super(new Context());window=w;}Window getWindow(){return window;}boolean isFinishing(){return finishing;}boolean isDestroyed(){return false;}}
 static class View {android.view.Display display;View(android.view.Display d){display=d;}android.view.Display getDisplay(){return display;}}
 static class Window {View decor;int updates;android.view.WindowManager.LayoutParams attrs=new android.view.WindowManager.LayoutParams();Window(android.view.Display d){decor=new View(d);}View peekDecorView(){return decor;}android.view.WindowManager.LayoutParams getAttributes(){return attrs;}void setAttributes(android.view.WindowManager.LayoutParams a){updates++;attrs=a;}}
 static class android {static class view {
  static class Display {Mode current;Mode[] supported;Display(){current=new Mode(1080,2400,60);supported=new Mode[]{current,new Mode(1080,2400,90),new Mode(1080,2400,120),new Mode(1440,3200,144)};}
   Mode getMode(){return current;}Mode[] getSupportedModes(){return supported;}
   static class Mode {int w,h;float rate;Mode(int a,int b,float r){w=a;h=b;rate=r;}int getPhysicalWidth(){return w;}int getPhysicalHeight(){return h;}float getRefreshRate(){return rate;}}}
  static class Surface {static final int FRAME_RATE_COMPATIBILITY_DEFAULT=0,FRAME_RATE_COMPATIBILITY_AT_LEAST=2,CHANGE_FRAME_RATE_ONLY_IF_SEAMLESS=0;boolean valid=true,fail;float requested;int calls,arity,compatibility,strategy;
   boolean isValid(){return valid;}void setFrameRate(float r,int c){if(fail)throw new IllegalStateException();requested=r;compatibility=c;calls++;arity=2;}void setFrameRate(float r,int c,int s){if(fail)throw new IllegalStateException();requested=r;compatibility=c;strategy=s;calls++;arity=3;}}
  static class SurfaceView {Context context;Display display;Surface surface=new Surface();SurfaceView(Context c,Display d){context=c;display=d;}Context getContext(){return context;}Display getDisplay(){return display;}Holder getHolder(){return new Holder(surface);}}
  static class Holder {Surface s;Holder(Surface v){s=v;}Surface getSurface(){return s;}}
  static class WindowManager {static class LayoutParams {int preferredDisplayModeId;float preferredRefreshRate;}}
 }}
 @SURFACE@
 @WINDOW@
 @HIGHEST@
 public static void main(String[] args){
  for(int api:new int[]{23,28,30,31,35,36,37}){Build.VERSION.SDK_INT=api;android.view.Display d=new android.view.Display();Window w=new Window(d);Activity a=new Activity(w);android.view.SurfaceView v=new android.view.SurfaceView(new ContextWrapper(a),d);
   applyLauncherSurfaceRefresh(v);
   if(api<30){check(w.updates==0&&v.surface.calls==0,"old API path unchanged");continue;}
   check(w.attrs.preferredRefreshRate==120&&w.updates==1,"owning window and Surface vote together");check(v.surface.requested==120&&v.surface.arity==(api>=31?3:2),"same-resolution maximum and API gate retained");
   check(v.surface.compatibility==(api>=36&&@AT_LEAST@?2:0)&&v.surface.strategy==0,"compatibility gate and seamless strategy");
   applyLauncherSurfaceRefresh(v);check(w.updates==1,"unchanged window vote not reapplied");
   w.attrs.preferredDisplayModeId=42;w.attrs.preferredRefreshRate=90;applyLauncherSurfaceRefresh(v);check(w.attrs.preferredDisplayModeId==42&&w.attrs.preferredRefreshRate==90,"explicit mode preference is preserved");
   w.attrs.preferredDisplayModeId=0;v.surface.fail=true;applyLauncherSurfaceRefresh(v);check(w.attrs.preferredRefreshRate==120,"Surface failure does not discard window capability hint");
   android.view.SurfaceView noActivity=new android.view.SurfaceView(new Context(),d);applyLauncherSurfaceRefresh(noActivity);check(noActivity.surface.requested==120,"non-Activity view keeps existing Surface behavior");
   a.finishing=true;w.attrs.preferredRefreshRate=90;applyLauncherSurfaceRefresh(v);check(w.attrs.preferredRefreshRate==90,"finishing Activity does not receive a window update");
   d.supported=new android.view.Display.Mode[]{new android.view.Display.Mode(1080,2400,Float.NaN),new android.view.Display.Mode(1080,2400,Float.POSITIVE_INFINITY)};check(highestSameResolutionRefresh(d)==0,"invalid rates rejected");
  }
  System.out.println("PASS WINDOW_SURFACE_REFRESH checks="+checks);
 }
}
'''

STATUS = r'''
import java.util.*;
public class StatusProbe {
 static int checks,updates;static void check(boolean v,String m){checks++;if(!v)throw new AssertionError(m);}
 static class Resources {}
 static class Activity {boolean finishing,destroyed;boolean isFinishing(){return finishing;}boolean isDestroyed(){return destroyed;}}
 interface SharedPreferences {interface OnSharedPreferenceChangeListener {void onSharedPreferenceChanged(SharedPreferences p,String k);}}
 static class View {boolean attached;List<Runnable> queue=new ArrayList<>();List<OnAttachStateChangeListener> listeners=new ArrayList<>();
 interface OnAttachStateChangeListener {void onViewAttachedToWindow(View v);void onViewDetachedFromWindow(View v);}
 boolean isAttachedToWindow(){return attached;}void post(Runnable r){queue.add(r);}void removeCallbacks(Runnable r){queue.removeIf(v->v==r);}
 void addOnAttachStateChangeListener(OnAttachStateChangeListener l){listeners.add(l);}void attach(){attached=true;for(OnAttachStateChangeListener l:listeners)l.onViewAttachedToWindow(this);}
 void detach(){attached=false;for(OnAttachStateChangeListener l:listeners)l.onViewDetachedFromWindow(this);}void drain(){List<Runnable> jobs=new ArrayList<>(queue);queue.clear();for(Runnable r:jobs)r.run();}}
 static class WeatherBridge {static Set<SharedPreferences.OnSharedPreferenceChangeListener> listeners=new HashSet<>();static int registrations,removals;
 static void registerStatusListener(Activity a,SharedPreferences.OnSharedPreferenceChangeListener l){listeners.add(l);registrations++;}
 static void unregisterStatusListener(Activity a,SharedPreferences.OnSharedPreferenceChangeListener l){listeners.remove(l);removals++;}
 static void change(){for(SharedPreferences.OnSharedPreferenceChangeListener l:new ArrayList<>(listeners))l.onSharedPreferenceChanged(null,"weather_last_error");}}
 static void updateDynamicWeatherStatus(Activity a,Resources r,View v){updates++;}
 @BIND@
 public static void main(String[] args){
  Activity a=new Activity();View root=new View();bindWeatherStatusUpdates(a,new Resources(),root);
  check(WeatherBridge.listeners.isEmpty(),"detached page does not observe weather");root.attach();root.drain();check(updates==1&&WeatherBridge.listeners.size()==1,"attach subscribes and refreshes");
  WeatherBridge.change();WeatherBridge.change();WeatherBridge.change();check(root.queue.size()==1,"batched preference changes coalesce");root.drain();check(updates==2,"late asynchronous weather status is visible without a polling deadline");
  SharedPreferences.OnSharedPreferenceChangeListener stale=WeatherBridge.listeners.iterator().next();WeatherBridge.change();root.detach();root.drain();check(updates==2&&WeatherBridge.listeners.isEmpty(),"detach unsubscribes and cancels queued refresh");
  stale.onSharedPreferenceChanged(null,"temperature_c");check(root.queue.isEmpty(),"late callback after detach cannot queue work");
  root.attach();root.drain();check(updates==3&&WeatherBridge.listeners.size()==1,"reattach observes new weather data");
  a.finishing=true;WeatherBridge.change();root.drain();check(updates==3,"finishing Activity is not rebound");a.finishing=false;a.destroyed=true;WeatherBridge.change();root.drain();check(updates==3,"destroyed Activity is not rebound");
  root.detach();check(WeatherBridge.listeners.isEmpty()&&WeatherBridge.registrations==2&&WeatherBridge.removals==2,"balanced observer ownership");
  System.out.println("PASS WEATHER_STATUS_LIFECYCLE checks="+checks);
 }
}
'''

def main():
    ap=argparse.ArgumentParser(__doc__)
    ap.add_argument('--jdk',type=Path,required=True)
    ap.add_argument('--suite',choices=['all','weather','icon','refresh','status'],default='all')
    ap.add_argument('--weather-source',type=Path,default=THEME/'WeatherBridge.java')
    ap.add_argument('--host-source',type=Path,default=THEME/'MaintainedLauncherSettingsHost.java')
    ap.add_argument('--bridge-source',type=Path,default=THEME/'LauncherSettingBridge.java')
    ap.add_argument('--android-serial')
    ap.add_argument('--at-least',action='store_true',help='Expect API36+ UI compatibility in a diagnostic bridge source')
    ap.add_argument('--sdk',type=Path,default=Path('D:/sdk'))
    ap.add_argument('--output',type=Path)
    args=ap.parse_args();sources={}
    if args.suite in ('all','weather'):
        s=args.weather_source.read_text(encoding='utf-8-sig')
        sources['WeatherProbe']=WEATHER.replace('@PERMISSION@',block(s,'private static boolean hasLocationPermission(')).replace('@REQUEST@',block(s,'private static void requestSingleLocation(')).replace('@FINISH@',block(s,'private static void finishLocationRequest(')).replace('@VALID@',block(s,'private static boolean validCoordinate(')).replace('@LAST@',block(s,'private static Location bestLastLocation('))
    if args.suite in ('all','icon'):
        s=args.host_source.read_text(encoding='utf-8-sig')
        sources['IconProbe']=(ICON.replace('@LOAD@',block(s,'private static Drawable loadApkIcon('))
            .replace('@DEFAULT@',block(s,'public static Drawable loadDefaultIconForDesktopItem('))
            .replace('@RESOURCE@',block(s,'private static Drawable loadApkIconResource(') if 'private static Drawable loadApkIconResource(' in s else '')
            .replace('@RAWAPP@',block(s,'private static Drawable loadApkApplicationIcon(') if 'private static Drawable loadApkApplicationIcon(' in s else ''))
    if args.suite in ('all','refresh'):
        s=args.bridge_source.read_text(encoding='utf-8-sig');sources['RefreshProbe']=REFRESH.replace('@AT_LEAST@',str(args.at_least).lower()).replace('@SURFACE@',block(s,'public static void applyLauncherSurfaceRefresh(')).replace('@WINDOW@',block(s,'public static void applyLauncherWindowRefresh(')).replace('@HIGHEST@',block(s,'private static float highestSameResolutionRefresh('))
    if args.suite in ('all','status'):
        s=args.host_source.read_text(encoding='utf-8-sig');sources['StatusProbe']=STATUS.replace('@BIND@',block(s,'private static void bindWeatherStatusUpdates('))
    if args.android_serial:
        if not args.output or 'WeatherProbe' not in sources:
            ap.error('Android callback check requires --output and weather suite')
        native=sources['WeatherProbe']
        for signature in ['static class Build ', 'static class Manifest ', 'static class PackageManager ',
                          'static class Bundle ', 'static class Looper ', 'static class Handler ',
                          'static class Criteria ', 'static class Location ', 'interface LocationListener ']:
            native=native.replace(block(native,signature),'',1)
        native=native.replace(block(native,'static Context fresh('),
                'static Context fresh(){sLocationRequesting=false;sPendingForcedRefresh=false;fetches=remembers=manual=0;return new Context();}',1)
        native=native.replace(block(native,'public static void main('),r'''
 public static void main(String[] args)throws Exception{
  if(Looper.getMainLooper()==null)Looper.prepareMainLooper();
  Context c=fresh();c.manager.enabled.add("fused");requestSingleLocation(c);
  check(sLocationRequesting&&c.manager.listener!=null,"real Android listener class loaded");
  LocationListener listener=c.manager.listener;
  listener.onProviderEnabled("fused");listener.onProviderDisabled("fused");listener.onStatusChanged("fused",0,new Bundle());
  Location fix=new Location("fixture");fix.setLatitude(31);fix.setLongitude(121);listener.onLocationChanged(fix);
  check(fetches==1&&!sLocationRequesting&&c.manager.removed==1,"real old-API callback completes without interface companion");
  java.lang.reflect.Method batch=listener.getClass().getDeclaredMethod("onLocationChanged",List.class);batch.setAccessible(true);batch.invoke(listener,Arrays.asList(fix));
  java.lang.reflect.Method flush=listener.getClass().getDeclaredMethod("onFlushComplete",int.class);flush.setAccessible(true);flush.invoke(listener,1);
  check(fetches==1&&c.manager.removed==1,"new SDK callback implementations are safe on old runtime");
  Context fallback=fresh();fallback.manager.denied=true;fallback.manager.enabled.add("network");requestSingleLocation(fallback);
  check(sLocationRequesting&&"network".equals(fallback.manager.requested)&&!fallback.fine,"fused denial uses permitted network with real Android callback interface");
  fallback.manager.listener.onLocationChanged(fix);check(fetches==1&&!sLocationRequesting&&fallback.manager.removed==1,"network callback completes once on actual runtime");
  Context revoked=fresh();revoked.coarse=false;revoked.manager.denied=true;revoked.manager.enabled.add("network");requestSingleLocation(revoked);
  check(!sLocationRequesting&&revoked.manager.requested==null,"actual permission denial never starts fallback");
  Context gps=fresh();gps.manager.denied=true;gps.manager.enabled.add("gps");requestSingleLocation(gps);
  check(!sLocationRequesting&&gps.manager.requested==null,"coarse request does not widen permission on real runtime");
  System.out.println("PASS WEATHER_NATIVE_CALLBACK api="+Build.VERSION.SDK_INT+" checks="+checks+"; location service and prefs are doubles");
 }
''',1)
        native='import android.os.*;import android.Manifest;import android.content.pm.PackageManager;import android.location.Criteria;import android.location.Location;import android.location.LocationListener;\n'+native
        out=args.output;classes=out/'classes';dex=out/'dex';classes.mkdir(parents=True,exist_ok=True);dex.mkdir(exist_ok=True)
        source=out/'WeatherProbe.java';source.write_text(native,encoding='utf-8')
        jar=args.sdk/'platforms/android-36/android.jar';java=args.jdk/'bin/javac.exe'
        subprocess.run([str(java),'-encoding','UTF-8','-source','8','-target','8','-cp',str(jar),'-d',str(classes),str(source)],check=True)
        subprocess.run([str(args.sdk/'build-tools/37.0.0/d8.bat'),'--lib',str(jar),'--min-api','23','--output',str(dex),*map(str,classes.glob('*.class'))],check=True)
        adb=[str(args.sdk/'platform-tools/adb.exe'),'-s',args.android_serial];remote='/data/local/tmp/smartisan-weather-callback.dex'
        subprocess.run([*adb,'push',str(dex/'classes.dex'),remote],check=True)
        try:subprocess.run([*adb,'shell','CLASSPATH='+remote,'app_process','/system/bin','WeatherProbe'],check=True)
        finally:subprocess.run([*adb,'shell','rm','-f',remote],check=True)
        return
    with tempfile.TemporaryDirectory(prefix='smartisan-oem-') as temp:
        base=Path(temp);files=[]
        for name,text in sources.items():
            p=base/(name+'.java');p.write_text(text,encoding='utf-8');files.append(str(p))
        subprocess.run([str(args.jdk/'bin/javac.exe'),'-encoding','UTF-8','-d',str(base),*files],check=True)
        for name in sources:subprocess.run([str(args.jdk/'bin/java.exe'),'-cp',str(base),name],check=True)

if __name__=='__main__':main()
