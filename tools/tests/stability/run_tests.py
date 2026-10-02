import argparse,pathlib,re,subprocess,tempfile
ROOT=pathlib.Path(__file__).resolve().parents[3]

def method(source,signature):
 return source.split('.method '+signature,1)[1].split('.end method',1)[0]

def execute(code,fields):
 lines=[x.strip() for x in code.splitlines() if x.strip() and not x.strip().startswith(('#','.'))];labels={x:i for i,x in enumerate(lines) if x.startswith(':')};regs={};result=0;queued=0;restored=0;pc=0
 while pc<len(lines):
  x=lines[pc];pc+=1
  if x.startswith(('sget-object','sget-boolean')):
   reg=x.split()[1].rstrip(',');field=x.split('->')[1].split(':')[0];regs[reg]=fields.get(field,0)
  elif x.startswith('const/4'):
   reg,value=x.split(None,1)[1].split(', ');regs[reg]=int(value,16)
  elif x.startswith(('if-eqz','if-nez')):
   reg,label=x.split(None,1)[1].split(', ');truth=bool(regs.get(reg,0));jump=not truth if x.startswith('if-eqz') else truth
   if jump:pc=labels[label]
  elif x.startswith('move-result'):regs[x.split()[1]]=result
  elif '->gd()Z' in x:result=fields.get('hk',0)
  elif '->isSystemUninstallPending()Z' in x:result=fields.get('pending',0)
  elif '->q(F)V' in x:queued+=1
  elif '->hd()V' in x:restored+=1
  elif x.startswith('return'):break
 return queued,restored

def check_uninstall():
 paths=['launcher/smali/com/smartisanos/launcher/a/oa.smali','launcher/smali/com/smartisanos/launcher/a/T.smali']
 new=[(ROOT/p).read_text('utf-8') for p in paths];old=[subprocess.check_output(['git','show',':'+p],cwd=ROOT,text=True) for p in paths]
 def failures(sources):
  failed=0
  for dialog in (0,1):
   for running in (0,1):
    for debug in (0,1):
     state={'jk':dialog,'hk':running,'DBG':debug};q,_=execute(method(sources[0],'public static fd()V'),state);_,h=execute(method(sources[1],'public run()V'),state)
     failed+=q!=1 or h!=1
  return failed
 assert failures(new)==0
 for dialog in (0,1):
  for running in (0,1):
   state={'jk':dialog,'hk':running,'pending':1}
   assert execute(method(new[0],'public static fd()V'),state)[0]==0
 print('PASS pending system confirmation retains trash scene in J.onPause')
 print('PASS uninstall cancellation states=8; previous index failures='+str(failures(old)))
 pause=method((ROOT/'launcher/smali/com/smartisanos/launcher/Launcher.smali').read_text('utf-8'),'protected onPause()V')
 assert '->fd()V' not in pause and '->hd()V' not in pause
 resume=method((ROOT/'launcher/smali/com/smartisanos/launcher/Launcher.smali').read_text('utf-8'),'protected onResume()V')
 assert 'UninstallCompat;->onLauncherResumed()V' in resume
 assert '->q(F)V' in method(new[0],'public static fd()V')
 assert '->hd()V' in method(new[1],'public run()V')
 print('PASS cancellation dispatched through original GL event; no lifecycle scene call')

JAVA=r'''
import com.smartisanos.launcher.model.*;
public class Check {
 public static void main(String[] args){
  RemovalGateway gate=new RemovalGateway();int count=0;
  for(PackageState pkg:PackageState.values()) for(ProfileState profile:ProfileState.values()) for(boolean replace:new boolean[]{false,true}) {
   RemovalGateway.Decision d=gate.evaluate(new RemovalGateway.RemovalRequest(new LauncherItemKey(0,"sample.app","Main"),"test","SYSTEM_REMOVAL",replace,pkg,profile,1,0,0));
   boolean expected=!replace&&profile==ProfileState.AVAILABLE&&pkg==PackageState.REMOVED_CONFIRMED;
   if((d.outcome==RemovalGateway.Outcome.CONFIRMED)!=expected)throw new AssertionError(pkg+"/"+profile+"/"+replace);count++;
  }
  System.out.println("PASS production removal policy states="+count);
 }
}
'''

def check_removal(jdk):
 with tempfile.TemporaryDirectory() as td:
  work=pathlib.Path(td);out=work/'out';out.mkdir();files=[]
  for n,s in {'android/util/Log.java':'package android.util; public class Log {public static int i(String t,String m){return 0;}}','android/text/TextUtils.java':'package android.text; public class TextUtils {public static boolean isEmpty(CharSequence s){return s==null||s.length()==0;}}','Check.java':JAVA}.items():
   p=work/n;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s);files.append(p)
  base=ROOT/'launcher/tools/java/com/smartisanos/launcher/model'
  files += [base/(n+'.java') for n in ['RemovalGateway','LauncherItemKey','PackageState','ProfileState']]
  subprocess.run([str(jdk/'bin/javac.exe'),'-d',str(out),*[str(p) for p in files]],check=True)
  subprocess.run([str(jdk/'bin/java.exe'),'-cp',str(out),'Check'],check=True)

if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--jdk',type=pathlib.Path,required=True);a=p.parse_args();check_uninstall();check_removal(a.jdk)
