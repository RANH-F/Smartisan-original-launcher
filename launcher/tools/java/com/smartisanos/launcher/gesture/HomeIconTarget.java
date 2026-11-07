package com.smartisanos.launcher.gesture;

import android.content.ComponentName;
import android.graphics.RectF;
import android.os.UserHandle;
import com.smartisanos.launcher.model.ProfileRepository;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/** Read-only original model lookup. Never treats an unverified native rectangle as artwork. */
final class HomeIconTarget {
    static final class Result {
        final RectF position;
        final String reason;
        Result(RectF position, String reason) { this.position = position; this.reason = reason; }
    }

    private HomeIconTarget() { }

    static Result resolve(ComponentName component, UserHandle user, ProfileRepository profiles)
            throws ReflectiveOperationException {
        return resolve(component,user,profiles,0,0);
    }

    static Result resolve(ComponentName component, UserHandle user, ProfileRepository profiles,
            int surfaceWidth,int surfaceHeight) throws ReflectiveOperationException {
        Object scene = Class.forName("com.smartisanos.launcher.view.Eb")
                .getMethod("getInstance").invoke(null);
        if (scene == null) return new Result(null, "scene_missing");
        // Do not close or reinterpret a folder, nor return the hidden underlying page.
        if (call(scene, "Ch") != null) return new Result(null, "folder_active");
        Object pages = call(scene, "Gh");
        if (pages == null) return new Result(null, "pages_missing");
        List<Object> matches = new ArrayList<Object>();
        for (Object page : (List<?>) call(pages, "mr")) {
            if (!visible(page)) continue;
            collect((List<?>) call(page, "on"), component, user, profiles, matches);
        }
        Object dock = call(scene, "zh");
        if (dock != null && visible(dock)) {
            collect((List<?>) call(dock, "Uh"), component, user, profiles, matches);
        }
        if (matches.size() != 1) return new Result(null,
                matches.isEmpty() ? "no_visible_exact_target" : "ambiguous_target");
        if (surfaceWidth<=0 || surfaceHeight<=0) return new Result(null,"native_artwork_geometry_unverified");
        Object cell=matches.get(0);
        if (call(cell,"getParent") == dock) return new Result(null,"dock_not_pixel_verified");
        if (((Number)field(cell,"fH")).intValue()!=12) return new Result(null,"grid_not_pixel_verified");
        for(Object parent=cell;parent!=null;parent=call(parent,"getParent")) {
            if (!identity(parent,true)) return new Result(null,"transformed_or_animated");
        }
        Object[] nodes=(Object[])field(cell,"sc");
        if(nodes.length<=7 || nodes[0]==null || nodes[7]!=null) return new Result(null,"special_icon");
        Object node=nodes[0];
        if(!identity(node,false)) return new Result(null,"artwork_transformed");
        String key=(String)node.getClass().getMethod("getTextureName",int.class).invoke(node,0);
        if(key==null || !key.contains(":STATIC_APPLICATION_COMPOSER:")
                || !key.contains(":DEFAULT:default:") || !key.contains("contentBoxType=NORMAL")
                || !key.contains("defaultShape=circle") || !key.contains(":100:12:grid=12:"))
            return new Result(null,"representation_not_pixel_verified");
        Object layout=call(cell,"Ul");
        float art=((Number)field(layout,"icon_size_origin")).floatValue();
        float texture=((Number)field(layout,"icon_size_with_shadow")).floatValue();
        Object ra=Class.forName("com.smartisanos.smengine.Ra").getMethod("getInstance").invoke(null);
        Object camera=call(call(ra,"at"),"Vj");
        if(((Number)call(camera,"getWidth")).intValue()!=surfaceWidth
                || ((Number)call(camera,"getHeight")).intValue()!=surfaceHeight)
            return new Result(null,"camera_viewport_mismatch");
        Object manager=call(ra,"rt");
        Object image=manager.getClass().getMethod("bb",String.class).invoke(manager,key);
        if(image==null) return new Result(null,"texture_missing");
        int tw=((Number)call(image,"getWidth")).intValue(),th=((Number)call(image,"getHeight")).intValue();
        if(Math.abs(tw-texture)>.01f || tw!=th || call(node,"getRenderTarget")==null)
            return new Result(null,"texture_or_target_unverified");
        // Match the compositor's integer rounding without applying the user's size setting twice.
        float body=Math.round(tw*(Math.round(art)/(float)Math.round(texture)));
        float[] cellRaw=project(cell,camera),nodeRaw=project(node,camera);
        RectF rect=HomeIconGeometry.staticComposite(cellRaw,nodeRaw,body,tw,surfaceWidth,surfaceHeight);
        return new Result(rect,rect==null?"projection_unverified":"static_default_circle_12");
    }

    private static float[] project(Object node,Object camera) throws ReflectiveOperationException {
        float[] raw=new float[12];java.util.Arrays.fill(raw,Float.NaN);
        node.getClass().getMethod("getCornerPointScreenCoord",Class.forName("com.smartisanos.smengine.Camera"),float[].class).invoke(node,camera,raw);
        return raw;
    }

    private static boolean identity(Object node,boolean requireUnitScale) throws ReflectiveOperationException {
        if(((Number)call(node,"getAnimationState")).intValue()!=0) return false;
        Object transform=call(node,"getLocalTransform");
        if(Boolean.TRUE.equals(call(transform,"Ct")) || Boolean.TRUE.equals(call(transform,"Dt")))return false;
        if(requireUnitScale) {
            Object scale=call(node,"getScale");
            for(String axis:new String[]{"x","y","z"}) {
                float value=((Number)field(scale,axis)).floatValue();
                if(Float.isNaN(value) || Float.isInfinite(value) || Math.abs(value-1f)>.0001f)return false;
            }
        }
        return true;
    }

    private static void collect(List<?> cells, ComponentName component, UserHandle user,
            ProfileRepository profiles, List<Object> matches) throws ReflectiveOperationException {
        for (Object cell : cells) {
            if (cell == null || !visible(cell)) continue;
            Object item = call(cell, "Rl");
            if (item == null || ((Number) field(item, "itemType")).intValue() != 0) continue;
            Object pkg = field(item, "packageName"), name = field(item, "componentName");
            if (!matches(component, pkg, name)) continue;
            int legacyUser = ((Number) field(item, "userId")).intValue();
            UserHandle owner = profiles.userForLegacyId(legacyUser < 0 ? 0 : legacyUser);
            if (user.equals(owner) && !matches.contains(cell)) matches.add(cell);
        }
    }

    static boolean matches(ComponentName component, Object pkg, Object name) {
        if (!component.getPackageName().equals(pkg) || !(name instanceof String)) return false;
        String value = (String) name;
        return component.getClassName().equals(value)
                || component.flattenToString().equals(value)
                || component.flattenToShortString().equals(value)
                || (value.startsWith(".") && component.getClassName().equals(pkg + value));
    }

    private static boolean visible(Object node) throws ReflectiveOperationException {
        for (int depth = 0; node != null; depth++) {
            if (depth >= 64 || !Boolean.TRUE.equals(call(node, "isVisible"))) return false;
            node = call(node, "getParent");
        }
        return true;
    }

    private static Object call(Object target, String name) throws ReflectiveOperationException {
        return target.getClass().getMethod(name).invoke(target);
    }

    private static Object field(Object target, String name) throws ReflectiveOperationException {
        for (Class<?> type = target.getClass(); type != null; type = type.getSuperclass()) {
            try {
                Field field = type.getDeclaredField(name);
                field.setAccessible(true);
                return field.get(target);
            } catch (NoSuchFieldException missing) {
                // ItemInfo fields may be inherited by its original subclasses.
            }
        }
        throw new NoSuchFieldException(name);
    }
}
