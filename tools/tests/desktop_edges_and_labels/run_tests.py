"""Check retained desktop label metrics with controlled Constants."""
import argparse,pathlib,tempfile,subprocess
ROOT=pathlib.Path(__file__).resolve().parents[3]
def main():
 p=argparse.ArgumentParser();p.add_argument('--jdk',required=True,type=pathlib.Path);a=p.parse_args()
 with tempfile.TemporaryDirectory(prefix='desktop-edge-metrics-') as temp:
  classes=pathlib.Path(temp)/'classes'
  sources=[pathlib.Path(__file__).with_name(n) for n in ['Constants.java','EdgeMetricsTest.java']]
  sources += [ROOT/'launcher/tools/java/com/smartisanos/launcher/data'/n for n in ['DesktopLabelMetrics.java']]
  subprocess.run([str(a.jdk/'bin/javac.exe'),'-encoding','UTF-8','-d',str(classes),*map(str,sources)],check=True)
  subprocess.run([str(a.jdk/'bin/java.exe'),'-cp',str(classes),'com.smartisanos.launcher.data.EdgeMetricsTest'],check=True)
if __name__=='__main__':main()
