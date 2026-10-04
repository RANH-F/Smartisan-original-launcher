package com.smartisanos.launcher.theme;

import com.smartisanos.launcher.data.Constants;
import com.smartisanos.launcher.view.b.M;

/** Runs the built production helper against mutable engine geometry fixtures. */
public final class OverviewAspectProbe {
    private static int checks;
    public static class Vector {
        public float x, y, z;
        Vector(float x, float y, float z) { this.x=x; this.y=y; this.z=z; }
    }
    public static class Node {
        private Vector scale = new Vector(2, 3, 4);
        int updates;
        public Vector getScale() { return scale; }
        public void setScale(double x, double y, double z) {
            throw new AssertionError("wrong overload");
        }
        public void setScale(float x, float y, float z) { scale=new Vector(x,y,z); }
        public void updateGeometricState() { updates++; }
    }
    public static class CellBase {
        private final int fH;
        private final Object[] sc = new Object[8];
        CellBase(int mode, Node icon, Node shadow) { fH=mode; sc[0]=icon; sc[7]=shadow; }
    }
    public static class Cell extends CellBase {
        Object parent = new M();
        Cell(int mode, Node icon, Node shadow) { super(mode,icon,shadow); }
        public Object getParent() { return parent; }
    }
    private static void equal(float actual, float expected, String name) {
        if (Math.abs(actual-expected)>0.0001f) throw new AssertionError(name+": "+actual+" != "+expected);
        checks++;
    }
    private static void verify(Node node, float y) {
        equal(node.getScale().x,2,"x"); equal(node.getScale().y,y,"y"); equal(node.getScale().z,4,"z");
    }
    public static void main(String[] args) {
        for (int mode : new int[] {12,9}) {
            int overview=mode==12?13:10;
            Node icon=new Node(), shadow=new Node(); Cell cell=new Cell(mode,icon,shadow);
            LauncherSettingBridge.preserveOverviewIconAspect(cell,overview);
            verify(icon,6); verify(shadow,6);
            for(int i=0;i<20;i++) LauncherSettingBridge.preserveOverviewIconAspect(cell,overview);
            verify(icon,6); equal(icon.updates,1,"no cumulative correction");
            // ActiveIcon rebinding replaces its geometry; do not undo a stale correction.
            icon.setScale(2f,5f,4f);
            LauncherSettingBridge.preserveOverviewIconAspect(cell,overview); verify(icon,10);
            LauncherSettingBridge.preserveOverviewIconAspect(cell,mode); verify(icon,5); verify(shadow,3);
            // The cache must contain metadata, not a snapshot of dimensions or scales.
            Constants.mode(overview).page_height=25;
            LauncherSettingBridge.preserveOverviewIconAspect(cell,overview); verify(icon,20); verify(shadow,12);
            LauncherSettingBridge.preserveOverviewIconAspect(cell,mode); verify(icon,5); verify(shadow,3);
            Constants.mode(overview).page_height=50;
            cell.parent=new Object(); LauncherSettingBridge.preserveOverviewIconAspect(cell,overview); verify(icon,5);
        }
        Node ignored=new Node(); LauncherSettingBridge.preserveOverviewIconAspect(new Cell(8,ignored,null),13); verify(ignored,3);
        LauncherSettingBridge.preserveOverviewIconAspect(new Cell(12,null,null),13);
        System.out.println("PASS OVERVIEW_ASPECT checks="+checks);
    }
}
