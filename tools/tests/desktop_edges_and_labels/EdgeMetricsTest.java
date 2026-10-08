package com.smartisanos.launcher.data;
public class EdgeMetricsTest {
 static int checks;
 static void check(boolean b,String s){if(!b)throw new AssertionError(s);checks++;}
 public static void main(String[] args){
  for(int mode:new int[]{12,9,20}) for(int width:new int[]{1080,1368,1440}) for(int extra:new int[]{0,2,6,10}){
   Constants.SINGLE_PAGE_MODE=mode;Constants.window_width=width;DesktopLabelMetrics.setDesktopTextSizeAdjustment(extra);
   check(DesktopLabelMetrics.resolveDesktopTextSize(Constants.mode(mode),999)==Math.round((mode==12?36:30)*(width/1080f))+extra,"label size "+mode);
   check(DesktopLabelMetrics.resolveDesktopTextSize(new Object(),99)==99,"foreign label untouched");
  }
  Constants.SINGLE_PAGE_MODE=9;check(DesktopLabelMetrics.desktopGapForCurrentGrid()==13f,"20-grid gap");
  System.out.println("PASS desktop label checks="+checks);
 }
}