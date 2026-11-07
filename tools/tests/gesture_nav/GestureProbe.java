package com.smartisanos.launcher.gesture;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.RectF;
import android.opengl.GLSurfaceView;
import android.os.*;
import com.smartisanos.launcher.model.ProfileRepository;
import com.smartisanos.launcher.theme.LauncherSettingBridge;
import com.smartisanos.launcher.view.Eb;
import java.lang.reflect.*;

/** Deterministic platform substitutes; never represents a physical gesture or native geometry. */
public final class GestureProbe {
    static int checks;
    static final ComponentName COMPONENT = new ComponentName("p", "p.Main");
    static void check(boolean condition, String name) {
        checks++;
        if (!condition) throw new AssertionError(name);
    }
    static Message callback(Messenger receiver, Object token) {
        Message m = Message.obtain();
        m.replyTo = receiver; m.obj = token; m.what = 77; m.arg1 = 23; m.arg2 = 41;
        Bundle b = new Bundle(); b.putBoolean("old", true); m.setData(b);
        return m;
    }
    static Intent home(Message m, int user) {
        Bundle b = new Bundle(); b.putParcelable(Intent.EXTRA_COMPONENT_NAME, COMPONENT);
        b.putParcelable(Intent.EXTRA_USER, new UserHandle(user));
        b.putParcelable(HomeGestureContract.CALLBACK, m);
        return new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME)
                .addFlags(256).putExtra(HomeGestureContract.EXTRA, b);
    }
    static HomeGestureContract.Request request(Object token, long now) {
        return new HomeGestureContract.Request(COMPONENT, new UserHandle(0),
                callback(RECEIVER, token), now);
    }
    static final Messenger RECEIVER = new Messenger();
    static Object work() throws Exception {
        Field f = LauncherHomeCompat.class.getDeclaredField("gestureWork"); f.setAccessible(true);
        return f.get(null);
    }
    static void invokeComplete(Object work, RectF rect) throws Exception {
        Method method = LauncherHomeCompat.class.getDeclaredMethod("completeGestureFrame",
                work.getClass(), HomeIconTarget.Result.class);
        method.setAccessible(true);
        method.invoke(null, work, new HomeIconTarget.Result(rect, "controlled_fixture"));
    }
    static Activity start(String token, int api) {
        Build.VERSION.SDK_INT = api;
        Activity activity = new Activity(); activity.intent = home(callback(RECEIVER, token), 0);
        LauncherHomeCompat.onLauncherCreated(activity);
        return activity;
    }
    static GLSurfaceView bind(Activity a) {
        GLSurfaceView v = new GLSurfaceView(a); LauncherHomeCompat.bindSurface(v);
        LauncherHomeCompat.onSceneCreate(Eb.instance);
        LauncherHomeCompat.onLauncherResumed(a);
        Handler.drain();
        return v;
    }
    static void protocol() throws Exception {
        Message cb = callback(RECEIVER, "first");
        for (int api : new int[]{26,27,28,29}) {
            Build.VERSION.SDK_INT = api; Intent i = home(cb, 0);
            check(HomeGestureContract.consume(i, true, 0) == null, "old API skips protocol");
            check(i.hasExtra(HomeGestureContract.EXTRA), "old API leaves original intent intact");
        }
        for (int api : new int[]{30,31,33,35,36,37}) {
            Build.VERSION.SDK_INT = api; Intent i = home(cb, 10);
            HomeGestureContract.Request r = HomeGestureContract.consume(i, true, 0);
            check(r != null && r.user.equals(new UserHandle(10)), "API/user parse");
            check(!i.hasExtra(HomeGestureContract.EXTRA), "extra consumed once");
            check(HomeGestureContract.consume(i, true, 0) == null, "same Intent cannot repeat");
            check(i.getFlags() == 256 && i.hasCategory(Intent.CATEGORY_HOME)
                    && Intent.ACTION_MAIN.equals(i.getAction()), "HOME semantics intact");
        }
        Intent off = home(cb, 0);
        check(HomeGestureContract.consume(off, false, 0) == null && !off.hasExtra(HomeGestureContract.EXTRA), "disabled consumes only extra");
        Intent disabled = home(cb, 0); Bundle b = disabled.getParcelableExtra(HomeGestureContract.EXTRA);
        b.putBoolean("gesture_nav_contract_enable", false);
        check(HomeGestureContract.consume(disabled, true, 0) == null, "sender disabled");
        for (String key : new String[]{Intent.EXTRA_COMPONENT_NAME,Intent.EXTRA_USER,HomeGestureContract.CALLBACK}) {
            for (Object invalid : new Object[]{null, "wrong type"}) {
                Intent bad = home(cb, 0); Bundle bundle = bad.getParcelableExtra(HomeGestureContract.EXTRA);
                bundle.putParcelable(key, invalid);
                check(HomeGestureContract.consume(bad, true, 0) == null && !bad.hasExtra(HomeGestureContract.EXTRA), "bad field fallback");
            }
        }
        Message noReply = Message.obtain();
        check(HomeGestureContract.consume(home(noReply,0),true,0)==null,"missing replyTo");
        check(HomeGestureContract.consume(new Intent(Intent.ACTION_MAIN),true,0)==null,"non HOME");
        check(HomeGestureContract.consume(null,true,0)==null,"null intent");
        check(HomeGestureContract.consume(new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME),true,0)==null,"no contract");
        Intent malformed=home(cb,0).putExtra(HomeGestureContract.EXTRA,"wrong bundle");
        check(HomeGestureContract.consume(malformed,true,0)==null&&!malformed.hasExtra(HomeGestureContract.EXTRA),"wrong bundle consumed");
        HomeGestureContract.Request r=request("reply",0); int before=RECEIVER.sent.size();
        RectF rect=new RectF(10,20,50,70); HomeGestureContract.send(r,rect);
        Message sent=RECEIVER.sent.get(before);
        check(sent.what==77&&sent.arg1==23&&sent.arg2==41&&sent.obj.equals("reply"),"association preserved");
        check(sent.replyTo==RECEIVER&&sent.getData()!=r.callback.getData(),"reply callback retained data replaced");
        RectF received=sent.getData().getParcelable(HomeGestureContract.POSITION);
        rect.left=99;
        check(received.left==10&&!sent.getData().getBoolean("old",false),"defensive position copy");
        RECEIVER.dead=true;
        try {HomeGestureContract.send(r,received);throw new AssertionError("dead receiver");}
        catch(RemoteException expected){checks++;} finally{RECEIVER.dead=false;}
        for(RectF invalid:new RectF[]{null,new RectF(0,0,0,1),new RectF(-1,0,5,5),new RectF(0,0,Float.NaN,4),new RectF(0,0,5,Float.POSITIVE_INFINITY)}) {
            try {HomeGestureContract.send(r,invalid);throw new AssertionError("bad rect sent");}
            catch(IllegalArgumentException expected){checks++;}
        }
    }
    static void finishProbe() throws Exception {
        HomeGestureContract.Request r=request("probe",0);r.id=4242;
        HomeGestureContract.send(r,new RectF(10,20,30,40));
        check(RECEIVER.sent.get(RECEIVER.sent.size()-1).getData().getParcelable("gesture_nav_contract_finish_callback")==null,"probe off omits callback");
        android.util.Log.finishEnabled=true;
        HomeGestureContract.send(r,new RectF(10,20,30,40));
        Message finish=RECEIVER.sent.get(RECEIVER.sent.size()-1).getData().getParcelable("gesture_nav_contract_finish_callback");
        check(finish!=null&&finish.obj instanceof ParcelUuid,"finish callback carries unique ParcelUuid");
        int lines=android.util.Log.lines.size();Message wrong=Message.obtain(finish);wrong.obj=new ParcelUuid(java.util.UUID.randomUUID());finish.replyTo.send(wrong);
        check(android.util.Log.lines.size()==lines,"unknown finish token ignored");
        finish.replyTo.send(finish);
        check(android.util.Log.lines.get(android.util.Log.lines.size()-1).contains("FINISH_ACK requestId=4242"),"finish correlated to exact request");
        lines=android.util.Log.lines.size();finish.replyTo.send(finish);check(lines==android.util.Log.lines.size(),"duplicate finish ignored");
        r.id=4243;HomeGestureContract.send(r,new RectF(10,20,30,40));SystemClock.now+=3000;Handler.drain();
        check(android.util.Log.lines.get(android.util.Log.lines.size()-1).contains("FINISH_ACK_TIMEOUT requestId=4243"),"bounded timeout is unknown, not rejection");
        android.util.Log.finishEnabled=false;
    }
    static void sessions() {
        HomeGestureContract.State state=new HomeGestureContract.State();
        HomeGestureContract.Request a=state.start(request("a",0),0);
        check(a.id>0&&state.claim(0)==a&&state.claim(0)==null,"single frame claim");
        HomeGestureContract.Request b=state.start(request("b",1),1);
        check(b.id>a.id&&!state.finish(a,2)&&state.finish(b,2),"stale reply cannot finish new HOME");
        check(!state.finish(b,3),"send once");
        check(state.start(request("b",4),4)==null,"copied callback token dedup");
        check(state.start(request("c",5),5)!=null,"shared Messenger fresh token allowed");
        state.cancel();check(state.claim(6)==null,"cancelled claim");
        a=state.start(request("d",10),10);
        check(state.current(a,1009)&&!state.current(a,1010),"exact deadline");
        check(state.start(request("old",0),1000)==null,"already expired input");
        a=state.start(request("clock",2000),2000);
        check(!state.current(a,1999),"clock reversal fails closed");
        check(state.start(request(null,3000),3000)!=null&&state.start(request(null,3001),3001)!=null,"no token does not dedup reused Messenger");
        state.clear();check(state.claim(3001)==null,"destroy clears");
    }
    static void geometry() {
        // Synthetic projected-artwork fixtures, not native Cell mappings. Shadows/title never input.
        for(int grid:new int[]{12,20}) for(float scale:new float[]{.8f,1f,1.2f})
            for(boolean dock:new boolean[]{false,true}) for(boolean label:new boolean[]{false,true}) {
                float cx=dock?700:200,cy=dock?150:1800;
                float half=(grid==12?60:45)*scale;
                float[] corners={cx-half,cy-half,cx+half,cy-half,cx+half,cy+half,cx-half,cy+half};
                RectF r=HomeIconGeometry.fromProjectedArtwork(corners,1080,2400,1080,2400,0,0,1080,2400);
                check(r!=null&&Math.abs(r.left-(cx-half))<.001&&Math.abs(r.top-(2400-cy-half))<.001,"single Y flip, projected scale once");
                check(Math.abs((r.right-r.left)-half*2)<.001,"no Cell/title/shadow inflation");
            }
        float[] corners={10,20,50,20,50,80,10,80};
        RectF r=HomeIconGeometry.fromProjectedArtwork(corners,100,200,200,400,4,24,240,500);
        check(r!=null&&r.left==24&&r.top==264&&r.right==104&&r.bottom==384,"viewport scaling and screen origin once");
        check(HomeIconGeometry.fromProjectedArtwork(corners,0,200,200,400,0,0,400,500)==null,"zero viewport");
        check(HomeIconGeometry.fromProjectedArtwork(corners,100,200,200,400,-50,0,400,500)==null,"no offscreen clamping");
        corners[0]=Float.NaN;
        check(HomeIconGeometry.fromProjectedArtwork(corners,100,200,200,400,0,0,400,500)==null,"NaN rejected");
        check(HomeIconTarget.matches(COMPONENT,"p",".Main")&&HomeIconTarget.matches(COMPONENT,"p","p/p.Main"),"component formats");
        check(!HomeIconTarget.matches(COMPONENT,"q","p.Main")&&!HomeIconTarget.matches(COMPONENT,"p","p.Other"),"no package-only fallback");
    }
    static void targets() throws Exception {
        ProfileRepository p=new ProfileRepository(new Activity());
        Eb.instance=new Eb();Eb.Node page=new Eb.Node(),cell=new Eb.Node();page.cells.add(cell);Eb.instance.pages.pages.add(page);
        HomeIconTarget.Result result=HomeIconTarget.resolve(COMPONENT,new UserHandle(0),p);
        check(result.position==null&&result.reason.equals("native_artwork_geometry_unverified"),"ordinary native fail closed");
        cell.item.userId=10;
        check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),p).reason.equals("no_visible_exact_target"),"other profile excluded");
        check(HomeIconTarget.resolve(COMPONENT,new UserHandle(10),p).reason.equals("native_artwork_geometry_unverified"),"profile exact match");
        cell.item.userId=0;page.visible=false;
        check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),p).reason.equals("no_visible_exact_target"),"hidden page excluded");
        Eb.instance.dock.cells.add(new Eb.Node());
        check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),p).reason.equals("native_artwork_geometry_unverified"),"Dock lookup independent");
        page.visible=true;
        check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),p).reason.equals("ambiguous_target"),"duplicate visible identity rejected");
        Eb.instance.folder=new Object();
        check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),p).reason.equals("folder_active"),"folder not reinterpreted");
        Eb.instance=new Eb();
    }
    static void productionResolver() throws Exception {
        Eb.instance=new Eb();Eb.Node page=new Eb.Node(),cell=new Eb.Node(),art=new Eb.Node();
        art.artwork=true;cell.sc[0]=art;cell.parent=page;page.cells.add(cell);Eb.instance.pages.pages.add(page);
        ProfileRepository profiles=new ProfileRepository(new Activity());
        HomeIconTarget.Result r=HomeIconTarget.resolve(COMPONENT,new UserHandle(0),profiles,1080,2400);
        check(r.position!=null&&Math.abs(r.position.left-84)<.001&&Math.abs(r.position.top-229.5)<.001,"recorded GL inputs through actual production resolver");
        cell.fH=20;check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),profiles,1080,2400).position==null,"20 grid not admitted");cell.fH=12;
        cell.transform.rotated=true;check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),profiles,1080,2400).position==null,"rotation rejected");cell.transform.rotated=false;
        cell.transform.skewed=true;check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),profiles,1080,2400).position==null,"skew rejected");cell.transform.skewed=false;
        page.scale.x=.8f;check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),profiles,1080,2400).position==null,"parent scale rejected");page.scale.x=1;
        art.key="iconpack";check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),profiles,1080,2400).position==null,"iconpack not admitted");art.key=":DEFAULT:default::100:12:grid=12:STATIC_APPLICATION_COMPOSER:contentBoxType=NORMAL:defaultShape=circle";
        cell.sc[7]=new Eb.Node();check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),profiles,1080,2400).position==null,"dynamic layer rejected");cell.sc[7]=null;
        page.cells.clear();cell.parent=Eb.instance.dock;Eb.instance.dock.cells.add(cell);
        check(HomeIconTarget.resolve(COMPONENT,new UserHandle(0),profiles,1080,2400).position==null,"Dock not admitted");
        Eb.instance=new Eb();
        page=new Eb.Node();cell=new Eb.Node();art=new Eb.Node();art.artwork=true;cell.sc[0]=art;
        cell.parent=page;page.cells.add(cell);Eb.instance.pages.pages.add(page);
        LauncherSettingBridge.enabled=true;SystemClock.now=4000;
        Activity owner=start("real-resolver-path",36);bind(owner);
        int before=RECEIVER.sent.size();LauncherHomeCompat.onRendererFrameComplete();Handler.drain();
        check(RECEIVER.sent.size()==before+1,"actual resolver to GL sampling to Messenger without injected RectF");
        RectF sent=RECEIVER.sent.get(before).getData().getParcelable(HomeGestureContract.POSITION);
        check(sent.left==84&&sent.top==229.5f,"production path emits recorded design rectangle");
        LauncherHomeCompat.onLauncherDestroyed(owner);Eb.instance=new Eb();
    }
    static void lifecycle() throws Exception {
        SystemClock.now=5000;LauncherSettingBridge.enabled=false;
        int handlers=Handler.created; Activity off=start("off",36);
        LauncherHomeCompat.onRendererFrameComplete();
        check(work()==null&&Handler.created==handlers,"default off allocates no handler or work");
        LauncherHomeCompat.onLauncherDestroyed(off);
        LauncherSettingBridge.enabled=true;
        for(int api:new int[]{26,28,29}) {
            Activity old=start("old"+api,api);bind(old);
            LauncherHomeCompat.onRendererFrameComplete();
            check(work()==null&&Handler.created==handlers,"old API no job");
            LauncherHomeCompat.onLauncherDestroyed(old);
        }
        Activity a=start("create",36);GLSurfaceView v=bind(a);Object first=work();
        check(first!=null,"CREATE captured then prepared at resume");
        LauncherHomeCompat.onRendererFrameComplete();Handler.drain();
        check(work()==null,"no target fallback clears pending");
        a.intent=home(callback(RECEIVER,"new"),0);LauncherHomeCompat.onHomeIntent(a,a.intent);Handler.drain();
        Object hot=work();check(hot!=null,"NEW_INTENT path");
        int before=RECEIVER.sent.size();invokeComplete(hot,new RectF(30,40,60,90));
        check(RECEIVER.sent.size()==before+1,"controlled verified RectF sends via product completion");
        invokeComplete(hot,new RectF(30,40,60,90));check(RECEIVER.sent.size()==before+1,"completion cannot repeat");
        Activity cold=start("late_surface",36);
        Field surfaceRef=LauncherHomeCompat.class.getDeclaredField("surfaceRef");surfaceRef.setAccessible(true);surfaceRef.set(null,null);
        LauncherHomeCompat.onLauncherResumed(cold);
        check(work()!=null,"cold request survives missing initial surface");
        GLSurfaceView late=new GLSurfaceView(cold);LauncherHomeCompat.bindSurface(late);
        LauncherHomeCompat.onSceneCreate(new Object());Handler.drain();
        Object coldWork=work();before=RECEIVER.sent.size();
        invokeComplete(coldWork,new RectF(30,40,60,90));
        check(RECEIVER.sent.size()==before+1,"cold resume binds late scene without forcing frame");
        LauncherHomeCompat.onLauncherDestroyed(cold);
        for(String cancel:new String[]{"pause","stop","destroy","surface","detach","size","scene","rotation","locked","locked_reply","non_home","setting","timeout"}) {
            Activity owner=start(cancel,36);GLSurfaceView surface=bind(owner);Object pending=work();
            check(pending!=null,"pending before "+cancel);
            switch(cancel) {
                case "pause":LauncherHomeCompat.onLauncherPaused(owner);break;
                case "stop":LauncherHomeCompat.onLauncherStopped(owner);break;
                case "destroy":LauncherHomeCompat.onLauncherDestroyed(owner);break;
                case "surface":LauncherHomeCompat.onSurfaceDestroyed(surface);break;
                case "detach":LauncherHomeCompat.onSurfaceDetached(surface);break;
                case "size":LauncherHomeCompat.onSurfaceSizeChanged(surface,720,1600);break;
                case "scene":LauncherHomeCompat.onSceneCreate(new Object());break;
                case "rotation":surface.display.rotation=1;invokeComplete(pending,new RectF(30,40,60,90));break;
                case "locked":KeyguardManager.locked=true;LauncherHomeCompat.onLauncherResumed(owner);KeyguardManager.locked=false;break;
                case "locked_reply":KeyguardManager.locked=true;invokeComplete(pending,new RectF(30,40,60,90));KeyguardManager.locked=false;break;
                case "non_home":LauncherHomeCompat.onHomeIntent(owner,new Intent("settings"));break;
                case "setting":LauncherSettingBridge.enabled=false;LauncherHomeCompat.onIconAnimationSettingChanged(owner);LauncherSettingBridge.enabled=true;break;
                case "timeout":SystemClock.now+=1000;Handler.drain();break;
            }
            check(work()==null,"cancel "+cancel);
            int count=RECEIVER.sent.size();invokeComplete(pending,new RectF(30,40,60,90));
            check(RECEIVER.sent.size()==count,"late completion suppressed after "+cancel);
            LauncherHomeCompat.onLauncherDestroyed(owner);
        }
        check(Handler.count()==0,"destroy removes bounded expiry and UI jobs");
    }
    public static void main(String[] args) throws Exception {
        protocol();sessions();geometry();targets();productionResolver();lifecycle();finishProbe();
        System.out.println("PASS "+checks+" controlled protocol/geometry/model/lifecycle checks; native and OEM animations NOT tested");
    }
}
