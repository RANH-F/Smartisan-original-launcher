package com.smartisanos.launcher.gesture;

import android.util.Log;
import java.lang.reflect.*;
import java.util.*;
import org.json.*;

/** One-shot read-only GL evidence; never supplies a production target. */
final class HomeGeometryDiagnostics {
    static void capture() {
        try {
            Object scene=Class.forName("com.smartisanos.launcher.view.Eb").getMethod("getInstance").invoke(null);
            Object ra=Class.forName("com.smartisanos.smengine.Ra").getMethod("getInstance").invoke(null);
            Object camera=call(call(ra,"at"),"Vj");
            int count=0;
            for(Object page:(List<?>)call(call(scene,"Gh"),"mr")) {
                if(!Boolean.TRUE.equals(call(page,"isVisible")))continue;
                for(Object cell:(List<?>)call(page,"on")) {
                    if(count>=1)break;
                    if(Boolean.TRUE.equals(call(cell,"isVisible"))) { dump(cell,"page",camera,ra);count++; }
                }
            }
            Object dock=call(scene,"zh");
            if(dock!=null)for(Object cell:(List<?>)call(dock,"Uh")) {
                if(cell!=null&&Boolean.TRUE.equals(call(cell,"isVisible"))) {dump(cell,"dock",camera,ra);break;}
            }
        }catch(Exception e){Log.i("HomeGeometry","ERROR "+e);}
    }
    static void dump(Object cell,String owner,Object camera,Object ra)throws Exception {
        JSONObject item=new JSONObject();Object model=call(cell,"Rl");
        item.put("owner",owner);item.put("component",field(model,"componentName"));
        item.put("package",field(model,"packageName"));item.put("user",field(model,"userId"));
        item.put("cell",node(cell,camera,ra));
        Object layout=call(cell,"Ul");
        for(Field f:layout.getClass().getFields()) if(!Modifier.isStatic(f.getModifiers()) && f.getType().isPrimitive() && (f.getName().contains("icon") || f.getName().contains("shadow"))) {
            JSONObject l=new JSONObject();l.put("owner",owner);l.put("field",f.getName());l.put("value",f.get(layout));Log.i("HomeGeometry","LAYOUT "+l);
        }
        Log.i("HomeGeometry","META "+item.toString());
        Object[] nodes=(Object[])field(cell,"sc");
        for(int i=0;i<nodes.length;i++)if(nodes[i]!=null){
            JSONObject n=node(nodes[i],camera,ra);n.put("index",i);n.put("owner",owner);
            Log.i("HomeGeometry","NODE "+n.toString());
        }
        Object parent=call(cell,"getParent");
        for(int d=0;parent!=null&&d<12;d++,parent=call(parent,"getParent")) {
            JSONObject n=node(parent,camera,ra);n.put("depth",d);n.put("owner",owner);
            Log.i("HomeGeometry","PARENT "+n.toString());
        }
    }
    static JSONObject node(Object n,Object camera,Object ra)throws Exception {
        JSONObject o=new JSONObject();o.put("class",n.getClass().getName());o.put("id",System.identityHashCode(n));
        for(String m:new String[]{"getWidth","getHeight","isVisible","getAnimationState","getRenderTarget","getParent","getCamera","getViewPort","getScale","getLocation","getRotation"}) {
            try{Object v=call(n,m);o.put(m,v==null?JSONObject.NULL:String.valueOf(v));
                if(v!=null&&!(v instanceof Number)&&!(v instanceof Boolean))o.put(m+"Fields",numbers(v));
            }catch(Exception e){o.put(m,"unavailable:"+e.getClass().getSimpleName());}
        }
        float[] raw=new float[12];Arrays.fill(raw,Float.NaN);
        n.getClass().getMethod("getCornerPointScreenCoord",Class.forName("com.smartisanos.smengine.Camera"),float[].class).invoke(n,camera,raw);
        JSONArray a=new JSONArray();for(float v:raw)a.put(Float.isNaN(v)||Float.isInfinite(v)?JSONObject.NULL:v);o.put("raw12",a);
        try {
            String texture=(String)n.getClass().getMethod("getTextureName",int.class).invoke(n,0);
            o.put("texture",texture);
            Object t=call(ra,"rt").getClass().getMethod("bb",String.class).invoke(call(ra,"rt"),texture);
            if(t!=null){o.put("textureWidth",call(t,"getWidth"));o.put("textureHeight",call(t,"getHeight"));}
        }catch(Exception e){o.put("textureError",e.getClass().getSimpleName());}
        return o;
    }
    static JSONObject numbers(Object x)throws Exception {
        JSONObject o=new JSONObject();for(Class<?> c=x.getClass();c!=null;c=c.getSuperclass())for(Field f:c.getDeclaredFields()) {
            if(Modifier.isStatic(f.getModifiers()))continue;
            if(f.getType().isPrimitive()){try{f.setAccessible(true);o.put(f.getName(),f.get(x));}catch(Exception ignored){}}
        }return o;
    }
    static Object call(Object x,String m)throws Exception{return x.getClass().getMethod(m).invoke(x);}
    static Object field(Object x,String name)throws Exception{
        for(Class<?> c=x.getClass();c!=null;c=c.getSuperclass())try{Field f=c.getDeclaredField(name);f.setAccessible(true);return f.get(x);}catch(NoSuchFieldException e){}
        throw new NoSuchFieldException(name);
    }
}
