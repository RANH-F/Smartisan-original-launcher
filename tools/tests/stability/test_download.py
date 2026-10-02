import pathlib,subprocess,tempfile,argparse
ROOT=pathlib.Path(__file__).resolve().parents[3]
STUBS={
'android/app/Activity.java':'package android.app; public class Activity {}',
'android/os/Looper.java':'package android.os; public class Looper {public static Looper getMainLooper(){return new Looper();}}',
'android/os/Handler.java':'package android.os; public class Handler {public Handler(Looper l){} public boolean post(Runnable r){r.run();return true;}}',
'android/widget/Toast.java':'package android.widget; import android.app.Activity; public class Toast {public static final int LENGTH_LONG=1; public static Toast makeText(Activity a,String s,int n){return new Toast();}public void show(){}}'
}
PREFIX=r'''
import android.app.Activity;import android.os.Handler;import android.os.Looper;import android.widget.Toast;
import java.io.*;import java.net.*;
public class DownloadCheck {
 static final String UPDATE_RELEASE_GITEE_MIRROR="mirror";static int installs,errors;static int length;static byte[] body;
 static class UpdateDownloadProgress {}
 static void updateUpdateProgressUi(Activity a,UpdateDownloadProgress u,String s,int p){}
 static void notifyUpdateDownload(Activity a,String s,int p,boolean complete){if(complete)errors++;}
 static void notifyUpdateDownload(Activity a,String s,int p,boolean complete,File f){}
 static void dismissUpdateDownloadProgress(UpdateDownloadProgress u){}
 static String shortError(Throwable t){return t.getClass().getSimpleName();}
 static void installApkFile(Activity a,File f){installs++;}
 static HttpURLConnection openDownloadConnection(String url)throws Exception {
  if(url.equals("fail"))throw new IOException("offline");
  return new HttpURLConnection(new URL("http://test.invalid")) {
   public void disconnect(){}public boolean usingProxy(){return false;}public void connect(){}
   public int getResponseCode(){return 200;}public int getContentLength(){return length;}
   public InputStream getInputStream(){return new ByteArrayInputStream(body);}
  };
 }
'''
SUFFIX=r'''
 static void test(String[] urls,int declared,byte[] bytes,boolean success)throws Exception {
  installs=0;errors=0;length=declared;body=bytes;File file=File.createTempFile("update", ".apk");file.delete();
  downloadUpdateApkDirect(new Activity(),urls,file,new UpdateDownloadProgress());
  for(Thread thread:Thread.getAllStackTraces().keySet())if(thread.getName().equals("launcher-update-direct-download")) {thread.join(5000);if(thread.isAlive())throw new AssertionError("worker did not finish");}
  if(installs!=(success?1:0)||errors!=(success?0:1))throw new AssertionError("installs="+installs+" errors="+errors);
  if(!success&&file.exists())throw new AssertionError("partial file retained");file.delete();
 }
 public static void main(String[] args)throws Exception {
  test(new String[]{"ok"},3,new byte[]{1,2,3},true);
  test(new String[]{"ok"},4,new byte[]{1,2,3},false);
  test(new String[]{"ok"},0,new byte[]{},false);
  test(new String[]{"fail","ok"},3,new byte[]{1,2,3},true);
  test(new String[]{"fail","fail"},3,new byte[]{1,2,3},false);
  System.out.println("PASS production background download cases=5: complete, truncated, empty, mirror fallback, offline");
 }
}
'''
if __name__=='__main__':
 parser=argparse.ArgumentParser();parser.add_argument('--jdk',type=pathlib.Path,required=True);args=parser.parse_args()
 src=(ROOT/'launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java').read_text('utf-8');start=src.index('    private static void downloadUpdateApkDirect');end=src.index('    private static HttpURLConnection openDownloadConnection',start);method=src[start:end]
 with tempfile.TemporaryDirectory() as td:
  work=pathlib.Path(td);files=[]
  for n,s in {**STUBS,'DownloadCheck.java':PREFIX+method+SUFFIX}.items():
   p=work/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s,encoding='utf-8');files.append(str(p))
  out=work/'out';out.mkdir();subprocess.run([str(args.jdk/'bin/javac.exe'),'-encoding','UTF-8','-d',str(out),*files],check=True);subprocess.run([str(args.jdk/'bin/java.exe'),'-cp',str(out),'DownloadCheck'],check=True)
