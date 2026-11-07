"""Exercise ABI selection, native-bridge paths and the old-API lazy-loading boundary."""
import argparse
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[3]


def main():
    parser = argparse.ArgumentParser(__doc__)
    parser.add_argument('--jdk', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--source', type=Path, default=ROOT / 'launcher/tools/java/com/smartisanos/launcher/compat/NativeBatchAllocation.java')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    sources = {
        'android/os/Build.java': 'package android.os; public class Build {public static class VERSION {public static int SDK_INT;}}',
        'android/os/Process.java': 'package android.os; public class Process {public static boolean bit64;public static int calls;public static boolean is64Bit(){calls++;return bit64;}}',
        'dalvik/system/BaseDexClassLoader.java': 'package dalvik.system; public class BaseDexClassLoader extends ClassLoader {public String findLibrary(String n){return null;}}',
        'AllocationApiProbe.java': '''import android.os.Build;
import com.smartisanos.launcher.compat.NativeBatchAllocation;
public class AllocationApiProbe {
 public static void main(String[] args)throws Exception{int checks=0;
  int api=Integer.parseInt(args[0]);
   boolean bit64=Boolean.parseBoolean(args[1]),expected=Boolean.parseBoolean(args[3]);
   Build.VERSION.SDK_INT=api;android.os.Process.bit64=bit64;android.os.Process.calls=0;
   System.setProperty("os.arch",args[2]);
   java.lang.reflect.Field flag;
   try{flag=NativeBatchAllocation.class.getDeclaredField("ARM64_ENGINE");}
   catch(NoSuchFieldException old){flag=NativeBatchAllocation.class.getDeclaredField("ARM64_PROCESS");}
   flag.setAccessible(true);
   if(flag.getBoolean(null)!=expected)throw new AssertionError("wrong allocator for api="+api+" arch="+args[2]+" bit64="+bit64);checks++;
   if(!expected)for(boolean batch:new boolean[]{false,true}){
    if(NativeBatchAllocation.create(batch)!=0)throw new AssertionError("non-ARM64 native allocation changed");checks++;
   }
   if(android.os.Process.calls!=(api<23?0:1))throw new AssertionError("process bitness must be resolved once on supported APIs");checks++;
   java.lang.reflect.Method classify=NativeBatchAllocation.class.getDeclaredMethod("isArm64Library",String.class,String.class);classify.setAccessible(true);
   String[] paths={"/data/app/pkg/base.apk!/lib/arm64-v8a/liblauncher_opt.so","/data/app/pkg/lib/arm64/liblauncher_opt.so","/data/app/pkg/base.apk!/lib/x86_64/liblauncher_opt.so","/data/app/pkg/lib/x86_64/liblauncher_opt.so",null,"/vendor/custom/liblauncher_opt.so"};
   for(String arch:new String[]{"x86_64","aarch64","arm64","unknown"})for(String path:paths){
    boolean wantsArm=path!=null&&path.contains("/arm64");
    if(path==null||path.startsWith("/vendor/"))wantsArm=arch.equals("aarch64")||arch.equals("arm64");
    if((Boolean)classify.invoke(null,path,arch)!=wantsArm)throw new AssertionError("wrong native library pair: "+path+" VM="+arch);checks++;
   }
  System.out.println("PASS ALLOCATION_API_BOUNDARY="+checks);
 }
}''',
    }
    files = []
    for name, text in sources.items():
        path = args.output / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text)
        files.append(path)
    production = args.output / 'com/smartisanos/launcher/compat/NativeBatchAllocation.java'
    production.parent.mkdir(parents=True, exist_ok=True)
    production.write_bytes(args.source.read_bytes())
    files.append(production)
    subprocess.run([str(args.jdk / 'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(args.output),
                    *map(str, files)], check=True)
    for api in [35, 19, 22, 23, 28, 36]:
        for bit64, arch in [(True, 'x86_64'), (False, 'arm'), (True, 'aarch64')]:
            expected = api >= 23 and bit64 and arch == 'aarch64'
            subprocess.run([str(args.jdk / 'bin/java.exe'), '-cp', str(args.output), 'AllocationApiProbe',
                            str(api), str(bit64).lower(), arch, str(expected).lower()], check=True)


if __name__ == '__main__':
    main()
