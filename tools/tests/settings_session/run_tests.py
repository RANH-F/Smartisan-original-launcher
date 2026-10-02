"""Compile the production session rules; verify lifecycle wiring without launching Android."""
import argparse, pathlib, subprocess, tempfile
ROOT=pathlib.Path(__file__).resolve().parents[3]
def main():
 ap=argparse.ArgumentParser();ap.add_argument("--jdk",required=True);a=ap.parse_args()
 host=ROOT/"launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java"
 source=host.read_text();start=source.index("    static final class SettingsSession {");depth=1;end=start+len("    static final class SettingsSession {")
 while depth:
  if source[end]=="{":depth+=1
  if source[end]=="}":depth-=1
  end+=1
 production=source[start:end]
 fixture=r"""
 static int checks;
 static void check(boolean condition){checks++;if(!condition)throw new AssertionError(checks);}
 public static void main(String[] args){
 SettingsSession s=new SettingsSession();check(!s.closeOnScreenOff());
 s.resume();check(!s.closeOnScreenOff());s.desktopReturn();check(!s.closeOnScreenOff());
 s.pause();check(!s.closeOnScreenOff());s.desktopReturn();check(s.closeOnScreenOff());
 s.resume();check(!s.closeOnScreenOff());check(!s.returnedToDesktop);
 // A settings window locked in foreground has no ordinary desktop-return evidence.
 s.pause();check(!s.closeOnScreenOff());s.resume();
 // All result-bearing and ordinary external activities protect their return chain.
 for(int i=0;i<6;i++){s.externalLaunch();s.pause();s.desktopReturn();check(!s.closeOnScreenOff());s.resume();check(!s.externalLaunch);check(!s.returnedToDesktop);s.pause();s.desktopReturn();check(s.closeOnScreenOff());s.resume();}
 // A different Activity must not inherit the previous settings session.
 SettingsSession second=new SettingsSession();second.resume();check(!second.closeOnScreenOff());
 System.out.println("PASS production settings session checks="+checks);
 }
"""
 with tempfile.TemporaryDirectory(prefix="settings-session-") as temporary:
  base=pathlib.Path(temporary);java=base/"SettingsSessionTest.java";java.write_text("public class SettingsSessionTest {\n"+production+fixture+"\n}")
  subprocess.run([str(pathlib.Path(a.jdk)/"bin/javac.exe"),"-d",str(base),str(java)],check=True)
  subprocess.run([str(pathlib.Path(a.jdk)/"bin/java.exe"),"-cp",str(base),"SettingsSessionTest"],check=True)
 chooser=(ROOT/"launcher/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali").read_text()
 assert "onSettingsHostPaused(Landroid/app/Activity;)V" in chooser
 assert "onSettingsHostDestroyed(Landroid/app/Activity;)V" in chooser
 assert chooser.count("->onSettingsExternalLaunch(Landroid/app/Activity;)V")==2
 assert "onSettingsDesktopResumed(Landroid/app/Activity;)V" in (ROOT/"launcher/smali/com/smartisanos/launcher/Launcher.smali").read_text()
 assert "->onSettingsScreenOff()V" in (ROOT/"launcher/smali/com/smartisanos/launcher/ia.1.smali").read_text()
 assert "BackupOperationLock.isBusy()" in source
 assert "private static void pauseThemePagePolling()" in source
 print("PASS lifecycle, external-result, backup-lock and polling wiring")
if __name__=="__main__":main()
