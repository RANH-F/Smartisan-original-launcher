import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import com.smartisanos.smengine.Ca;
import com.smartisanos.smengine.mymaterial.f;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/** Runs real APK texture binding and shader-cache lifetimes in isolated GLES contexts. */
public final class MaterialBindingProbe {
    private static int checks;
    private static Class<?> textureClass;
    private static Method bind;

    private static final class Material extends f {
        final Object[] owners = new Object[8];
        Material() { super("binding-probe", null, null); }
        @Override protected boolean a(String name, Ca state, int slot) {
            try { return (Boolean) bind.invoke(owners[slot], false); }
            catch (ReflectiveOperationException e) { throw new RuntimeException(e); }
        }
        void bindAll() { super.Ht(); }
        void prepare() { super.create(); }
        void use() { super.As(); }
        int attribute() { return super.d(0, "aPosition"); }
        int uniform() { return super.e(1, "uColor"); }
    }

    private static void set(Class<?> type, Object owner, String name, Object value) throws Exception {
        Field field = type.getDeclaredField(name);
        field.setAccessible(true);
        field.set(owner, value);
    }

    private static Object get(Class<?> type, Object owner, String name) throws Exception {
        Field field = type.getDeclaredField(name);
        field.setAccessible(true);
        return field.get(owner);
    }

    private static Object owner(int id) throws Exception {
        Object texture = textureClass.getConstructor(int.class, int.class, int.class,
                int.class, android.graphics.Bitmap.class).newInstance(1, 1, 0, 0, null);
        if (id != -1) {
            set(textureClass, texture, "sG", id);
            set(textureClass, texture, "rT", false);
            int generation = (Integer) Class.forName("com.smartisanos.launcher.gesture.LauncherHomeCompat")
                    .getMethod("getEglContextGeneration").invoke(null);
            set(textureClass, texture, "mContextGeneration", generation);
        }
        return texture;
    }

    private static void require(boolean value, String message) {
        checks++;
        if (!value) throw new AssertionError(message);
    }

    private static int shader(int kind, String source) {
        int shader = GLES20.glCreateShader(kind);
        GLES20.glShaderSource(shader, source);
        GLES20.glCompileShader(shader);
        int[] status = new int[1];
        GLES20.glGetShaderiv(shader, GLES20.GL_COMPILE_STATUS, status, 0);
        require(status[0] != 0, GLES20.glGetShaderInfoLog(shader));
        return shader;
    }

    private static int program() {
        return program("attribute vec2 p; void main(){gl_Position=vec4(p,0.,1.);}",
                "precision mediump float; uniform sampler2D image;"
                + "void main(){gl_FragColor=texture2D(image,vec2(0.5));}");
    }

    private static int program(String vertexSource, String fragmentSource) {
        int vertex = shader(GLES20.GL_VERTEX_SHADER, vertexSource);
        int fragment = shader(GLES20.GL_FRAGMENT_SHADER, fragmentSource);
        int program = GLES20.glCreateProgram();
        GLES20.glAttachShader(program, vertex);
        GLES20.glAttachShader(program, fragment);
        GLES20.glLinkProgram(program);
        int[] status = new int[1];
        GLES20.glGetProgramiv(program, GLES20.GL_LINK_STATUS, status, 0);
        require(status[0] != 0, GLES20.glGetProgramInfoLog(program));
        GLES20.glDeleteShader(vertex);
        GLES20.glDeleteShader(fragment);
        return program;
    }

    private static int texture(int r, int g, int b) {
        int[] id = new int[1];
        GLES20.glGenTextures(1, id, 0);
        GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, id[0]);
        GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MIN_FILTER, GLES20.GL_NEAREST);
        GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MAG_FILTER, GLES20.GL_NEAREST);
        ByteBuffer data = ByteBuffer.allocateDirect(4);
        data.put(new byte[] {(byte) r, (byte) g, (byte) b, (byte) 255}).position(0);
        GLES20.glTexImage2D(GLES20.GL_TEXTURE_2D, 0, GLES20.GL_RGBA, 1, 1, 0,
                GLES20.GL_RGBA, GLES20.GL_UNSIGNED_BYTE, data);
        return id[0];
    }

    private static void checkSlot(int slot, int expectedId, int sampler, boolean blue) {
        GLES20.glActiveTexture(GLES20.GL_TEXTURE0 + slot);
        int[] id = new int[1];
        GLES20.glGetIntegerv(GLES20.GL_TEXTURE_BINDING_2D, id, 0);
        GLES20.glUniform1i(sampler, slot);
        GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4);
        ByteBuffer pixel = ByteBuffer.allocateDirect(4);
        GLES20.glReadPixels(0, 0, 1, 1, GLES20.GL_RGBA, GLES20.GL_UNSIGNED_BYTE, pixel);
        int r = pixel.get(0) & 255, g = pixel.get(1) & 255, b = pixel.get(2) & 255;
        require(id[0] == expectedId, "stale texture at unit=" + slot + " expected="
                + expectedId + " actual=" + id[0] + " pixel=" + r + "," + g + "," + b);
        require(blue ? r == 0 && g == 0 && b == 255 : r == 0 && g == 0 && b == 0,
                "foreign pixels at unit=" + slot + ": " + r + "," + g + "," + b);
    }

    public static void main(String[] args) {
        try {
            if (args.length != 0 && "shader-context".equals(args[0])) runShaderContexts();
            else if (args.length != 0 && "texture-context".equals(args[0])) runTextureContexts();
            else if (args.length != 0 && "texture-delete".equals(args[0])) runTextureDeletion();
            else if (args.length != 0 && "mesh-context".equals(args[0])) runMeshContexts();
            else if (args.length != 0 && "shadow-context".equals(args[0])) runShadowContexts();
            else if (args.length != 0 && "fbo-context".equals(args[0])) runFboContexts();
            else if (args.length != 0 && "fbo-failure".equals(args[0])) runFboFailure();
            else if (args.length != 0 && "depth-release".equals(args[0])) runDepthRelease();
            else if (args.length != 0 && "depth-target".equals(args[0])) runDepthTarget(false);
            else if (args.length != 0 && "depth-stale".equals(args[0])) runDepthTarget(true);
            else run();
        }
        catch (Throwable failure) {
            failure.printStackTrace(System.out);
            System.exit(1);
        }
    }

    private static final class Egl {
        final EGLDisplay display = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY);
        final EGLContext context;
        final EGLSurface surface;
        Egl() {
        int[] version = new int[2], count = new int[1];
        require(EGL14.eglInitialize(display, version, 0, version, 1), "EGL initialize");
        EGLConfig[] configs = new EGLConfig[1];
        require(EGL14.eglChooseConfig(display, new int[] {
                EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL14.EGL_RED_SIZE, 8, EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8, EGL14.EGL_ALPHA_SIZE, 8, EGL14.EGL_NONE},
                0, configs, 0, 1, count, 0) && count[0] > 0, "EGL config");
        context = EGL14.eglCreateContext(display, configs[0], EGL14.EGL_NO_CONTEXT,
                new int[] {EGL14.EGL_CONTEXT_CLIENT_VERSION, 2, EGL14.EGL_NONE}, 0);
        surface = EGL14.eglCreatePbufferSurface(display, configs[0],
                new int[] {EGL14.EGL_WIDTH, 8, EGL14.EGL_HEIGHT, 8, EGL14.EGL_NONE}, 0);
        require(EGL14.eglMakeCurrent(display, surface, surface, context), "EGL current");
        }
        void close() {
            EGL14.eglMakeCurrent(display, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroySurface(display, surface);
            EGL14.eglDestroyContext(display, context);
            EGL14.eglTerminate(display);
        }
    }

    private static void runDepthTarget(boolean staleOnly) throws Exception {
        Class<?> type=Class.forName("com.smartisanos.smengine.c.b");
        Class<?> manager=Class.forName("com.smartisanos.smengine.c.i");
        Method advance=manager.getMethod("advanceContextGeneration");
        if (!staleOnly) {
            Egl egl=new Egl();
            try {
                advance.invoke(null); Object target=type.getConstructor(int.class,int.class).newInstance(0,4);
                type.getMethod("create").invoke(target);
                require(GLES20.glGetError()==GLES20.GL_NO_ERROR, "incomplete depth target was cleared before completeness check");
                require((Integer)get(type,target,"UW")==-1 && (Integer)get(type,target,"uG")==-1, "failed depth resources retained");
                require(!(Boolean)type.getMethod("isReady").invoke(target),"failed depth target reported ready");
                require(integerState(GLES20.GL_FRAMEBUFFER_BINDING)==0,"failed depth FBO left bound");
                set(type,target,"mWidth",4);
                type.getMethod("create").invoke(target);
                require((Integer)get(type,target,"uG")==-1,"unchanged failed generation repeatedly allocated");
                type.getMethod("bind").invoke(target);
                require(integerState(GLES20.GL_FRAMEBUFFER_BINDING)==0,"failed depth target bound for drawing");
                texture(0,255,0); type.getMethod("Ac",int.class).invoke(target,GLES20.GL_TEXTURE0);
                require(integerState(GLES20.GL_TEXTURE_BINDING_2D)==0,"failed depth sampler retained old texture");
                advance.invoke(null); type.getMethod("create").invoke(target);
                require((Boolean)type.getMethod("isReady").invoke(target),"new generation could not recover depth target");
                type.getMethod("bind").invoke(target);
                require(GLES20.glCheckFramebufferStatus(GLES20.GL_FRAMEBUFFER)==GLES20.GL_FRAMEBUFFER_COMPLETE,"recovered depth FBO incomplete");
                type.getMethod("Zt").invoke(target);
                require(GLES20.glGetError()==GLES20.GL_NO_ERROR,"depth failure/recovery GL error");
            } finally {egl.close();}
            System.out.println("PASS DEPTH_TARGET checks="+checks);return;
        }
        Object target;int oldTex,oldFbo; Egl first=new Egl();
        try {
            advance.invoke(null);target=type.getConstructor(int.class,int.class).newInstance(4,4);
            type.getMethod("create").invoke(target);type.getMethod("bind").invoke(target);
            require(GLES20.glCheckFramebufferStatus(GLES20.GL_FRAMEBUFFER)==GLES20.GL_FRAMEBUFFER_COMPLETE,"initial depth FBO incomplete");
            oldTex=(Integer)get(type,target,"UW");oldFbo=(Integer)get(type,target,"uG");
            type.getMethod("Zt").invoke(target);
        } finally {first.close();}
        Egl next=new Egl();
        try {
            advance.invoke(null);for(int i=0;i<oldTex;i++)texture(0,255,0);
            int[] fb=new int[oldFbo];GLES20.glGenFramebuffers(fb.length,fb,0);
            for(int id:fb)GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER,id);
            GLES20.glFramebufferTexture2D(GLES20.GL_FRAMEBUFFER,GLES20.GL_COLOR_ATTACHMENT0,GLES20.GL_TEXTURE_2D,oldTex,0);
            require(GLES20.glCheckFramebufferStatus(GLES20.GL_FRAMEBUFFER)==GLES20.GL_FRAMEBUFFER_COMPLETE,"foreign depth fixture FBO");
            GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER,0);
            type.getMethod("Ac",int.class).invoke(target,GLES20.GL_TEXTURE0);
            require(integerState(GLES20.GL_TEXTURE_BINDING_2D)==0,"stale depth sampler exposed foreign texture");
            type.getMethod("bind").invoke(target);
            require(integerState(GLES20.GL_FRAMEBUFFER_BINDING)==0,"stale depth target bound foreign FBO");
            require(!(Boolean)type.getMethod("isReady").invoke(target),"old generation depth admitted");
            type.getMethod("create").invoke(target);
            require((Boolean)type.getMethod("isReady").invoke(target),"depth target not rebuilt");
            int tex=(Integer)get(type,target,"UW"),fbo=(Integer)get(type,target,"uG");
            require(tex!=oldTex && fbo!=oldFbo,"depth identifiers not rebuilt");
            type.getMethod("bind").invoke(target);
            require(GLES20.glCheckFramebufferStatus(GLES20.GL_FRAMEBUFFER)==GLES20.GL_FRAMEBUFFER_COMPLETE,"rebuilt depth FBO incomplete");
            type.getMethod("Zt").invoke(target);type.getMethod("Ac",int.class).invoke(target,GLES20.GL_TEXTURE0);
            require(integerState(GLES20.GL_TEXTURE_BINDING_2D)==tex,"valid depth sampler did not bind");
            type.getMethod("create").invoke(target);
            require(tex==(Integer)get(type,target,"UW") && fbo==(Integer)get(type,target,"uG"),"same-generation depth rebuilt unnecessarily");
            GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER,oldFbo);greenPixel("foreign texture changed during depth recovery");
            require(GLES20.glIsTexture(oldTex) && GLES20.glIsFramebuffer(oldFbo),"foreign depth names deleted");
            GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER,0);
            require(GLES20.glGetError()==GLES20.GL_NO_ERROR,"depth context GL error");
        } finally {next.close();}
        System.out.println("PASS DEPTH_STALE checks="+checks);
    }

    private static Object renderTarget(Class<?> type, int flags, int width) throws Exception {
        return type.getConstructor(String.class, int.class, int.class, boolean.class, boolean.class, boolean.class)
                .newInstance("fbo-context", width, 4, (flags & 1) != 0, (flags & 2) != 0, false);
    }

    private static int integerState(int name) {
        int[] value = new int[1]; GLES20.glGetIntegerv(name, value, 0); return value[0];
    }

    private static void greenPixel(String message) {
        ByteBuffer value = ByteBuffer.allocateDirect(4);
        GLES20.glReadPixels(0, 0, 1, 1, GLES20.GL_RGBA, GLES20.GL_UNSIGNED_BYTE, value);
        require((value.get(0) & 255) == 0 && (value.get(1) & 255) == 255 && (value.get(2) & 255) == 0, message);
    }

    private static void runFboContexts() throws Exception {
        Class<?> type = Class.forName("com.smartisanos.smengine.N");
        for (int flags = 0; flags < 4; flags++) {
            for (String op : new String[] {"bind", "get", "read", "clear", "delete", "create", "mipmap"}) {
                Object target; int tex, fbo, depth, stencil;
                Egl first = new Egl();
                try {
                    markContext(); target = renderTarget(type, flags, 4);
                    if ("mipmap".equals(op)) set(type, target, "yG", true);
                    type.getMethod("create").invoke(target);
                    require((Boolean)get(type, target, "xG"), "initial FBO incomplete flags=" + flags);
                    tex = (Integer)get(type, target, "sG"); fbo = (Integer)get(type, target, "uG");
                    depth = (Integer)get(type, target, "vG"); stencil = (Integer)get(type, target, "wG");
                    type.getMethod("create").invoke(target);
                    require(tex == (Integer)get(type, target, "sG") && fbo == (Integer)get(type, target, "uG"), "same-context FBO reused");
                } finally { first.close(); }
                Egl next = new Egl();
                try {
                    markContext();
                    for (int i = 0; i < tex; i++) texture(0, 255, 0);
                    int[] fb = new int[fbo]; GLES20.glGenFramebuffers(fb.length, fb, 0);
                    for (int id : fb) GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, id);
                    GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, fbo);
                    GLES20.glFramebufferTexture2D(GLES20.GL_FRAMEBUFFER, GLES20.GL_COLOR_ATTACHMENT0, GLES20.GL_TEXTURE_2D, tex, 0);
                    require(GLES20.glCheckFramebufferStatus(GLES20.GL_FRAMEBUFFER) == GLES20.GL_FRAMEBUFFER_COMPLETE, "foreign FBO fixture");
                    int[] rb = new int[Math.max(0, Math.max(depth, stencil))];
                    if (rb.length > 0) {
                        GLES20.glGenRenderbuffers(rb.length, rb, 0);
                        for (int id : rb) { GLES20.glBindRenderbuffer(GLES20.GL_RENDERBUFFER, id); GLES20.glRenderbufferStorage(GLES20.GL_RENDERBUFFER, GLES20.GL_DEPTH_COMPONENT16, 1, 1); }
                    }
                    GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, 0);
                    if ("bind".equals(op)) { type.getMethod("bind").invoke(target); require(integerState(GLES20.GL_FRAMEBUFFER_BINDING) == 0, "stale FBO bound after EGL recreation"); }
                    if ("get".equals(op)) require((Integer)type.getMethod("Rk").invoke(target) == -1, "stale FBO color exposed");
                    if ("read".equals(op)) require(type.getMethod("Uk").invoke(target) == null, "stale FBO foreign pixels read");
                    if ("clear".equals(op)) type.getMethod("Qk").invoke(target);
                    if ("delete".equals(op)) type.getMethod("Ka", boolean.class).invoke(target, true);
                    if ("mipmap".equals(op)) { type.getMethod("genMipmap").invoke(target); require(!(Boolean)get(type,target,"AG"), "stale mipmap marked ready"); }
                    require(GLES20.glIsTexture(tex) && GLES20.glIsFramebuffer(fbo), "foreign FBO/color deleted");
                    for (int id : rb) require(GLES20.glIsRenderbuffer(id), "foreign depth/stencil deleted");
                    GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, fbo); greenPixel("foreign FBO was cleared");
                    GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, 0);
                    type.getMethod("create").invoke(target);
                    int ownedFbo = (Integer)get(type,target,"uG"), ownedTex = (Integer)get(type,target,"sG");
                    require(ownedFbo != fbo && ownedTex != tex, "stale FBO create skipped reconstruction");
                    type.getMethod("bind").invoke(target);
                    require(GLES20.glCheckFramebufferStatus(GLES20.GL_FRAMEBUFFER) == GLES20.GL_FRAMEBUFFER_COMPLETE, "restored FBO incomplete");
                    type.getMethod("Ka", boolean.class).invoke(target, true);
                    require(!GLES20.glIsFramebuffer(ownedFbo) && !GLES20.glIsTexture(ownedTex), "current FBO release failed");
                    require(GLES20.glIsTexture(tex) && GLES20.glIsFramebuffer(fbo), "foreign FBO lost on release");
                    require(GLES20.glGetError() == GLES20.GL_NO_ERROR, "FBO GL error flags=" + flags + " op=" + op);
                } finally { next.close(); }
            }
        }
        System.out.println("PASS FBO_CONTEXT checks=" + checks);
    }

    private static void runFboFailure() throws Exception {
        Class<?> type = Class.forName("com.smartisanos.smengine.N"); Egl egl = new Egl();
        try {
            markContext(); Object target = renderTarget(type, 0, 0);
            for (int i = 0; i < 3; i++) {
                type.getMethod("create").invoke(target);
                require(!(Boolean)get(type,target,"xG"), "zero-width FBO marked complete");
                require((Integer)get(type,target,"uG") == -1 && (Integer)get(type,target,"sG") == -1,
                        "incomplete FBO resources retained across retry");
                require(integerState(GLES20.GL_FRAMEBUFFER_BINDING) == 0, "incomplete FBO remained bound");
            }
            set(type,target,"mWidth",4); type.getMethod("create").invoke(target);
            require((Boolean)get(type,target,"xG"), "valid target could not recover after failure");
            type.getMethod("Ka", boolean.class).invoke(target,true);
            require(GLES20.glGetError() == GLES20.GL_NO_ERROR, "failure cleanup GL error");
        } finally { egl.close(); }
        System.out.println("PASS FBO_FAILURE checks=" + checks);
    }

    private static void runDepthRelease() throws Exception {
        Class<?> ownerType = Class.forName("com.smartisanos.smengine.c.b");
        Class<?> eventType = Class.forName("com.smartisanos.smengine.c.a");
        java.lang.reflect.Constructor<?> ctor = eventType.getDeclaredConstructor(ownerType, int.class, long.class, int.class, int.class, int.class);
        ctor.setAccessible(true);
        Method run = eventType.getDeclaredMethod("run"); run.setAccessible(true);
        Class<?> manager = Class.forName("com.smartisanos.smengine.c.i");
        for (boolean stale : new boolean[] {false,true}) {
            Egl egl = new Egl();
            try {
                manager.getMethod("advanceContextGeneration").invoke(null);
                Object owner = ownerType.getConstructor(int.class,int.class).newInstance(4,4);
                int tex = texture(0,255,0); int[] fbo = new int[1], rbo = new int[1];
                GLES20.glGenFramebuffers(1,fbo,0); GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER,fbo[0]);
                GLES20.glGenRenderbuffers(1,rbo,0); GLES20.glBindRenderbuffer(GLES20.GL_RENDERBUFFER,rbo[0]);
                GLES20.glRenderbufferStorage(GLES20.GL_RENDERBUFFER,GLES20.GL_DEPTH_COMPONENT16,1,1);
                set(ownerType,owner,"VW",rbo[0]);
                long generation=manager.getField("WX").getLong(null);
                Object event=ctor.newInstance(owner,100,generation,tex,fbo[0],rbo[0]);
                if(stale) manager.getMethod("advanceContextGeneration").invoke(null);
                run.invoke(event);
                require(GLES20.glIsTexture(tex)==stale,"depth delayed color generation gate");
                require(GLES20.glIsFramebuffer(fbo[0])==stale,"depth delayed FBO generation gate");
                require(GLES20.glIsRenderbuffer(rbo[0])==stale,"depth delayed renderbuffer generation gate");
                require(GLES20.glGetError()==GLES20.GL_NO_ERROR,"depth delayed deletion GL error");
                // Keep the unregistered test owner alive until after the callback checks.
                require(owner != null,"depth owner");
            } finally { egl.close(); }
        }
        System.out.println("PASS DEPTH_RELEASE checks="+checks);
    }

    private static void runShadowContexts() throws Exception {
        Class<?> verifier = Class.forName("com.smartisanos.launcher.yb");
        set(verifier, null, "Db", verifier.getConstructor().newInstance());
        Class<?> rendererType = Class.forName("com.smartisanos.launcher.view.vc");
        Object renderer = rendererType.getConstructor(android.content.Context.class).newInstance(new Object[] {null});
        Method created = rendererType.getMethod("onSurfaceCreated",
                javax.microedition.khronos.opengles.GL10.class, javax.microedition.khronos.egl.EGLConfig.class);
        Class<?> managerType = Class.forName("com.smartisanos.smengine.c.i");
        Egl bootstrap = new Egl();
        try {
            created.invoke(renderer, new Object[] {null, null});
            require(get(managerType, null, "VX") == null, "renderer callback must not construct ShadowManager worker");
        } finally { bootstrap.close(); }
        Object manager = managerType.getMethod("getInstance").invoke(null);
        Field counter = managerType.getField("WX");
        Method vertexBind = managerType.getDeclaredMethod("oB"); vertexBind.setAccessible(true);
        Method indexBind = managerType.getDeclaredMethod("nB"); indexBind.setAccessible(true);
        int vertex = -1, index = -1, vertexSize = 0, indexSize = 0;
        long generation = -1;
        try {
            Egl old = new Egl();
            try {
                created.invoke(renderer, new Object[] {null, null});
                vertexBind.invoke(manager); indexBind.invoke(manager);
                vertex = (Integer) get(managerType, manager, "bF");
                index = (Integer) get(managerType, manager, "cF");
                vertexSize = bufferSize(GLES20.GL_ARRAY_BUFFER, vertex);
                indexSize = bufferSize(GLES20.GL_ELEMENT_ARRAY_BUFFER, index);
                require(vertexSize > 4 && indexSize > 4, "initial shadow data uploaded");
                generation = counter.getLong(null);
                vertexBind.invoke(manager); indexBind.invoke(manager);
                require(vertex == (Integer) get(managerType, manager, "bF"), "same-generation shadow vertex reused");
                require(index == (Integer) get(managerType, manager, "cF"), "same-generation shadow index reused");
                require(counter.getLong(null) == generation, "binding must not advance generation");
            } finally { old.close(); }
            Egl next = new Egl();
            try {
                int[] foreign = new int[Math.max(vertex, index)];
                GLES20.glGenBuffers(foreign.length, foreign, 0);
                for (int id : foreign) {
                    GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, id);
                    GLES20.glBufferData(GLES20.GL_ARRAY_BUFFER, 4, null, GLES20.GL_STATIC_DRAW);
                }
                require(GLES20.glIsBuffer(vertex) && GLES20.glIsBuffer(index), "shadow numeric collision established");
                created.invoke(renderer, new Object[] {null, null});
                vertexBind.invoke(manager); indexBind.invoke(manager);
                int nextVertex = (Integer) get(managerType, manager, "bF");
                int nextIndex = (Integer) get(managerType, manager, "cF");
                require(bufferSize(GLES20.GL_ARRAY_BUFFER, nextVertex) == vertexSize,
                        "renderer context recreation reused foreign shadow vertex");
                require(bufferSize(GLES20.GL_ELEMENT_ARRAY_BUFFER, nextIndex) == indexSize,
                        "renderer context recreation reused foreign shadow index");
                require(counter.getLong(null) == generation + 1, "renderer must advance shadow generation exactly once");
                require(bufferSize(GLES20.GL_ARRAY_BUFFER, vertex) == 4, "foreign shadow vertex preserved");
                require(bufferSize(GLES20.GL_ELEMENT_ARRAY_BUFFER, index) == 4, "foreign shadow index preserved");
                long beforeInit = counter.getLong(null);
                managerType.getMethod("init").invoke(manager);
                require(counter.getLong(null) == beforeInit + 1, "legacy explicit init still advances generation");
                vertexBind.invoke(manager); indexBind.invoke(manager);
                require(bufferSize(GLES20.GL_ARRAY_BUFFER, (Integer)get(managerType, manager, "bF")) == vertexSize,
                        "legacy init restores vertex data");
            } finally { next.close(); }
        } finally {
            android.os.HandlerThread thread = (android.os.HandlerThread) get(managerType, manager, "Pq");
            thread.quitSafely(); thread.join(2000);
        }
        System.out.println("PASS SHADOW_CONTEXT checks=" + checks);
    }

    private static Object mesh(Class<?> type) throws Exception {
        Object mesh = type.getConstructor().newInstance();
        FloatBuffer vertices = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        vertices.put(new float[] {0,0,0, 1,0,0, 0,1,0, 1,1,0}).position(0);
        java.nio.ShortBuffer indices = ByteBuffer.allocateDirect(6).order(ByteOrder.nativeOrder()).asShortBuffer();
        indices.put(new short[] {0,1,2}).position(0);
        set(type, mesh, "dF", vertices);
        set(type, mesh, "eF", indices);
        set(type, mesh, "VE", new short[] {0,1,2});
        set(type, mesh, "YE", 2);
        set(type, mesh, "fF", 3);
        return mesh;
    }

    private static int bufferSize(int target, int name) {
        GLES20.glBindBuffer(target, name);
        int[] size = new int[1];
        GLES20.glGetBufferParameteriv(target, GLES20.GL_BUFFER_SIZE, size, 0);
        require(GLES20.glGetError() == GLES20.GL_NO_ERROR, "buffer query GL error");
        return size[0];
    }

    private static void runMeshContexts() throws Exception {
        Class<?> type = Class.forName("com.smartisanos.smengine.y");
        Method bump = Class.forName("com.smartisanos.launcher.gesture.LauncherHomeCompat")
                .getMethod("onEglContextCreated");
        for (String operation : new String[] {"recover", "delete", "release", "shared", "update", "indices"}) {
            Object value;
            int vertex, index;
            Egl old = new Egl();
            try {
                bump.invoke(null);
                value = mesh(type);
                vertex = (Integer) type.getMethod("Ak").invoke(value);
                index = (Integer) type.getMethod("rk").invoke(value);
                require(bufferSize(GLES20.GL_ARRAY_BUFFER, vertex) == 48, "initial vertex data");
                require(bufferSize(GLES20.GL_ELEMENT_ARRAY_BUFFER, index) == 6, "initial index data");
                require(vertex == (Integer) type.getMethod("Ak").invoke(value), "same-context vertex reused");
                require(index == (Integer) type.getMethod("rk").invoke(value), "same-context index reused");
                type.getMethod("Aa", boolean.class).invoke(value, true);
                type.getMethod("za", boolean.class).invoke(value, true);
                require(GLES20.glIsBuffer(vertex) && GLES20.glIsBuffer(index), "same-context shared buffers retained");
                type.getMethod("Aa", boolean.class).invoke(value, false);
            } finally { old.close(); }
            Egl next = new Egl();
            try {
                bump.invoke(null);
                int[] foreign = new int[Math.max(vertex, index)];
                GLES20.glGenBuffers(foreign.length, foreign, 0);
                for (int id : foreign) {
                    GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, id);
                    GLES20.glBufferData(GLES20.GL_ARRAY_BUFFER, 4, null, GLES20.GL_STATIC_DRAW);
                }
                require(GLES20.glIsBuffer(vertex) && GLES20.glIsBuffer(index), "numeric collision established");
                if ("delete".equals(operation)) type.getMethod("ok").invoke(value);
                if ("release".equals(operation)) type.getMethod("za", boolean.class).invoke(value, true);
                if ("shared".equals(operation)) {
                    type.getMethod("Aa", boolean.class).invoke(value, true);
                    type.getMethod("za", boolean.class).invoke(value, true);
                }
                if ("update".equals(operation)) type.getMethod("Dk").invoke(value);
                if ("indices".equals(operation)) type.getMethod("Ta", int.class).invoke(value, 1);
                require(GLES20.glIsBuffer(vertex) && GLES20.glIsBuffer(index), operation + " deleted foreign buffer");
                require(bufferSize(GLES20.GL_ARRAY_BUFFER, vertex) == 4, operation + " overwrote foreign vertex");
                require(bufferSize(GLES20.GL_ELEMENT_ARRAY_BUFFER, index) == 4, operation + " overwrote foreign index");
                int newVertex = (Integer) type.getMethod("Ak").invoke(value);
                int newIndex = (Integer) type.getMethod("rk").invoke(value);
                require(bufferSize(GLES20.GL_ARRAY_BUFFER, newVertex) == 48,
                        operation + " reused foreign vertex instead of restoring CPU data");
                require(bufferSize(GLES20.GL_ELEMENT_ARRAY_BUFFER, newIndex) == 6,
                        operation + " reused foreign index instead of restoring CPU data");
                type.getMethod("Aa", boolean.class).invoke(value, false);
                type.getMethod("za", boolean.class).invoke(value, true);
                require(!GLES20.glIsBuffer(newVertex) && !GLES20.glIsBuffer(newIndex), "current buffers released");
                require(GLES20.glIsBuffer(vertex) && GLES20.glIsBuffer(index), "foreign buffers preserved on release");
            } finally { next.close(); }
        }
        System.out.println("PASS MESH_CONTEXT checks=" + checks);
    }

    private static void run() throws Exception {
        Egl egl = new Egl();
        try {
            System.out.println("GPU " + GLES20.glGetString(GLES20.GL_RENDERER));
            textureClass = Class.forName("com.smartisanos.smengine.Da");
            bind = textureClass.getMethod("Sb", boolean.class);
            int program = program();
            GLES20.glUseProgram(program);
            GLES20.glViewport(0, 0, 8, 8);
            FloatBuffer quad = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
            quad.put(new float[] {-1,-1, 1,-1, -1,1, 1,1}).position(0);
            int position = GLES20.glGetAttribLocation(program, "p");
            GLES20.glVertexAttribPointer(position, 2, GLES20.GL_FLOAT, false, 0, quad);
            GLES20.glEnableVertexAttribArray(position);
            int sampler = GLES20.glGetUniformLocation(program, "image");
            int red = texture(255, 0, 0), blue = texture(0, 0, 255);
            Material material = new Material();
            String[] names = new String[8];
            for (int i = 0; i < 8; i++) names[i] = "controlled:" + i;
            set(f.class, material, "XV", names);
            int[] masks = {0,1,2,4,8,16,32,64,128,3,129,255};
            for (int failed : masks) {
                for (int i = 0; i < 8; i++) {
                    GLES20.glActiveTexture(GLES20.GL_TEXTURE0 + i);
                    GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, red);
                    material.owners[i] = owner((failed & 1 << i) != 0 ? -1 : blue);
                }
                material.bindAll();
                for (int i = 0; i < 8; i++) checkSlot(i, (failed & 1 << i) != 0 ? 0 : blue,
                        sampler, (failed & 1 << i) == 0);
                // Same material recovers through the existing Texture owner on the next bind.
                for (int i = 0; i < 8; i++) material.owners[i] = owner(blue);
                material.bindAll();
                for (int i = 0; i < 8; i++) checkSlot(i, blue, sampler, true);
                require(GLES20.glGetError() == GLES20.GL_NO_ERROR, "GL error");
            }
            GLES20.glDeleteTextures(2, new int[] {red, blue}, 0);
            GLES20.glDeleteProgram(program);
            System.out.println("PASS MATERIAL_BINDING masks=" + masks.length + " checks=" + checks);
        } finally {
            egl.close();
        }
    }

    private static final String POSITION = "attribute vec2 aPosition;"
            + "void main(){gl_Position=vec4(aPosition,0.,1.);}";
    private static final String COLOR = "precision mediump float; uniform vec4 uColor;"
            + "void main(){gl_FragColor=uColor;}";

    private static int[] drawColor(int program, int attribute, int uniform) {
        GLES20.glUseProgram(program);
        GLES20.glViewport(0, 0, 8, 8);
        FloatBuffer quad = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        quad.put(new float[] {-1,-1, 1,-1, -1,1, 1,1}).position(0);
        GLES20.glVertexAttribPointer(attribute, 2, GLES20.GL_FLOAT, false, 0, quad);
        GLES20.glEnableVertexAttribArray(attribute);
        if (uniform >= 0) GLES20.glUniform4f(uniform, 1, 0, 0, 1);
        GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4);
        ByteBuffer pixel = ByteBuffer.allocateDirect(4);
        GLES20.glReadPixels(0, 0, 1, 1, GLES20.GL_RGBA, GLES20.GL_UNSIGNED_BYTE, pixel);
        return new int[] {pixel.get(0) & 255, pixel.get(1) & 255, pixel.get(2) & 255};
    }

    private static void runShaderContexts() throws Exception {
        Class<?> shader = Class.forName("com.smartisanos.smengine.sa");
        Object shared = shader.getConstructor(String.class, String.class, String.class)
                .newInstance("context-probe", POSITION, COLOR);
        Material first = new Material(), second = new Material();
        set(f.class, first, "mShader", shared);
        set(f.class, second, "mShader", shared);
        Method generation = Class.forName("com.smartisanos.launcher.gesture.LauncherHomeCompat")
                .getMethod("onEglContextCreated");
        for (int round = 0; round < 4; round++) {
            Egl egl = new Egl();
            try {
                generation.invoke(null); // Same callback as the real renderer, local to this process.
                int old = (Integer) get(shader, shared, "mProgram");
                int dummy = round == 0 ? 0 : program(POSITION,
                        "precision mediump float; void main(){gl_FragColor=vec4(0.,1.,0.,1.);}");
                boolean reused = round != 0 && GLES20.glIsProgram(old);
                first.prepare(); // SceneNode calls Material.create before drawing.
                first.use();
                int active = (Integer) get(shader, shared, "mProgram");
                int attribute = GLES20.glGetAttribLocation(active, "aPosition");
                int uniform = GLES20.glGetUniformLocation(active, "uColor");
                int[] pixel = drawColor(active, attribute, uniform);
                System.out.println("CONTEXT " + round + " old=" + old + " dummy=" + dummy
                        + " oldIsProgram=" + reused + " active=" + active + " color="
                        + pixel[0] + "," + pixel[1] + "," + pixel[2]);
                require(uniform >= 0 && pixel[0] == 255 && pixel[1] == 0 && pixel[2] == 0,
                        "program from previous EGL context reused");
                if (dummy != 0) require(GLES20.glIsProgram(dummy), "foreign program deleted in new context");
                require((Integer) get(shader, shared, "wS") == 0
                        && (Integer) get(shader, shared, "yS") == 0, "shader location cache survived context");
                require(((int[]) get(f.class, first, "_V"))[0] == -1
                        && ((int[]) get(f.class, first, "aW"))[1] == -1, "material location cache survived context");
                require(first.attribute() == attribute && first.uniform() == uniform, "fresh material locations");
                second.prepare();
                require(((int[]) get(f.class, second, "_V"))[0] == -1
                        && ((int[]) get(f.class, second, "aW"))[1] == -1, "shared material cache survived context");
                require(second.attribute() == attribute && second.uniform() == uniform, "shared shader locations");
                for (int repeat = 0; repeat < 20; repeat++) {
                    first.prepare(); second.prepare();
                    require((Integer) get(shader, shared, "mProgram") == active, "same-context program rebuilt");
                    require(((int[]) get(f.class, first, "_V"))[0] == attribute
                            && ((int[]) get(f.class, first, "aW"))[1] == uniform, "same-context cache cleared");
                    require((Integer) get(shader, shared, "wS") == 1
                            && (Integer) get(shader, shared, "yS") == 1, "shared cache reset or duplicated");
                }
                require(GLES20.glGetError() == GLES20.GL_NO_ERROR, "GL error after context recreation");
            } finally { egl.close(); }
        }
        System.out.println("PASS SHADER_CONTEXT contexts=4 sharedMaterials=2 checks=" + checks);
    }

    private static final class SourceMaterial extends f {
        int loads;
        boolean missing;
        android.graphics.Bitmap last;
        SourceMaterial(String name) throws Exception {
            super("source-probe", null, null);
            String[] names = new String[8]; names[0] = name;
            set(f.class, this, "XV", names);
        }
        @Override protected android.graphics.Bitmap hb(String name) {
            loads++;
            if (missing) return null;
            last = android.graphics.Bitmap.createBitmap(1, 1, android.graphics.Bitmap.Config.ARGB_8888);
            last.eraseColor(0xffff0000);
            return last;
        }
        boolean bindSource() throws Exception {
            super.Ht();
            return ((boolean[]) get(f.class, this, "jW"))[0];
        }
    }

    private static Object manager() throws Exception {
        Class<?> world = Class.forName("com.smartisanos.smengine.Ra");
        return world.getMethod("rt").invoke(world.getMethod("getInstance").invoke(null));
    }

    private static Object lookup(Object manager, String name) throws Exception {
        return manager.getClass().getMethod("bb", String.class).invoke(manager, name);
    }

    private static void register(Object manager, String name, Object texture) throws Exception {
        manager.getClass().getMethod("a", String.class, textureClass).invoke(manager, name, texture);
    }

    private static int id(Object texture) throws Exception {
        return (Integer) textureClass.getMethod("Rk").invoke(texture);
    }

    private static Object bitmapTexture(int color, boolean release) throws Exception {
        android.graphics.Bitmap bitmap = android.graphics.Bitmap.createBitmap(1, 1,
                android.graphics.Bitmap.Config.ARGB_8888);
        bitmap.eraseColor(color);
        Object texture = textureClass.getConstructor(android.graphics.Bitmap.class).newInstance(bitmap);
        textureClass.getMethod("Tb", boolean.class).invoke(texture, release);
        return texture;
    }

    private static int samplingProgram() {
        int program = program(); GLES20.glUseProgram(program); GLES20.glViewport(0, 0, 8, 8);
        FloatBuffer quad = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        quad.put(new float[] {-1,-1, 1,-1, -1,1, 1,1}).position(0);
        int position = GLES20.glGetAttribLocation(program, "p");
        GLES20.glVertexAttribPointer(position, 2, GLES20.GL_FLOAT, false, 0, quad);
        GLES20.glEnableVertexAttribArray(position);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(program, "image"), 0);
        GLES20.glActiveTexture(GLES20.GL_TEXTURE0);
        return program;
    }

    private static int[] sampledPixel() {
        GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4);
        ByteBuffer pixel = ByteBuffer.allocateDirect(4);
        GLES20.glReadPixels(0, 0, 1, 1, GLES20.GL_RGBA, GLES20.GL_UNSIGNED_BYTE, pixel);
        return new int[] {pixel.get(0) & 255, pixel.get(1) & 255, pixel.get(2) & 255};
    }

    private static void pixelIs(int red, int green, int blue, String message) {
        int[] pixel = sampledPixel();
        require(pixel[0] == red && pixel[1] == green && pixel[2] == blue,
                message + ": " + pixel[0] + "," + pixel[1] + "," + pixel[2]);
    }

    private static void markContext() throws Exception {
        Class.forName("com.smartisanos.launcher.gesture.LauncherHomeCompat")
                .getMethod("onEglContextCreated").invoke(null);
    }

    private static void initTextureProbe() throws Exception {
        textureClass = Class.forName("com.smartisanos.smengine.Da");
        bind = textureClass.getMethod("Sb", boolean.class);
        System.out.println("TEST_WORLD_ROUTER real APK Material/TextureManager/Texture; controlled hb only");
    }

    private static void runTextureContexts() throws Exception {
        initTextureProbe();
        Object manager = manager();
        SourceMaterial source = new SourceMaterial("audit-source"), peer = new SourceMaterial("audit-source"),
                missing = new SourceMaterial("audit-missing");
        Object retained, buffer, pending, oldSource, targetWrapper;
        Egl first = new Egl();
        try {
            markContext(); samplingProgram();
            require(source.bindSource(), "initial source upload"); pixelIs(255,0,0,"initial source");
            require(source.loads == 1 && source.last.isRecycled(), "existing owned bitmap release");
            oldSource = lookup(manager,"audit-source");
            int oldId = id(oldSource);
            require(source.bindSource() && id(lookup(manager,"audit-source")) == oldId && source.loads == 1,
                    "same-context source reloaded");
            require(peer.bindSource() && peer.loads == 0, "shared source decoded twice");
            require(missing.bindSource(), "initial missing-source descriptor");
            retained = bitmapTexture(0xff0000ff, false); bind.invoke(retained, false);
            register(manager,"retained",retained); register(manager,"retained-alias",retained);
            pending = bitmapTexture(0xffff0000, false); register(manager,"pending",pending);
            buffer = owner(-1);
            ByteBuffer data = ByteBuffer.allocateDirect(4);
            data.put(new byte[] {(byte)255,0,0,(byte)255}).position(0);
            set(textureClass,buffer,"qT",data); set(textureClass,buffer,"mWidth",1f);set(textureClass,buffer,"mHeight",1f);
            require((Boolean)bind.invoke(buffer,false),"buffer upload");pixelIs(255,0,0,"initial buffer");
            register(manager,"buffer",buffer);
            Class<?> target = Class.forName("com.smartisanos.smengine.N");
            Object targetOwner = target.getConstructor(String.class,int.class,int.class)
                    .newInstance("delegated-target",1,1);
            targetWrapper = textureClass.getConstructor(target).newInstance(targetOwner);
            register(manager,"target-wrapper",targetWrapper);
        } finally {first.close();}
        Egl second = new Egl();
        try {
            markContext(); samplingProgram();
            for (int i=0;i<8;i++)texture(0,255,0); // Reuse old-context names with unrelated green pixels.
            GLES20.glActiveTexture(GLES20.GL_TEXTURE0);
            require(source.bindSource(),"source reconstruction failed");
            int[] pixel=sampledPixel();System.out.println("TEXTURE_CONTEXT recovered pixel="+pixel[0]+","+pixel[1]+","+pixel[2]);
            require(pixel[0]==255&&pixel[1]==0&&pixel[2]==0,"stale ordinary texture sampled");
            require(source.loads==2 && source.last.isRecycled(),"source must reload once, retain original release policy");
            require(lookup(manager,"audit-source")!=oldSource,"released source descriptor survived context");
            int restored=id(lookup(manager,"audit-source"));
            require(source.bindSource()&&source.loads==2&&id(lookup(manager,"audit-source"))==restored,"restored source reloaded");
            require(peer.bindSource()&&peer.loads==0&&id(lookup(manager,"audit-source"))==restored,"shared source recovery duplicated");
            require(id(retained)==-1,"stale texture ID exposed");
            require(lookup(manager,"retained")==retained&&lookup(manager,"retained-alias")==retained,"retained pixels evicted");
            require((Boolean)bind.invoke(retained,false),"retained bitmap upload");pixelIs(0,0,255,"retained bitmap");
            require(!((android.graphics.Bitmap)get(textureClass,retained,"mBitmap")).isRecycled(),"retained bitmap recycled");
            int retainedId=id(retained);require((Boolean)bind.invoke(retained,false)&&id(retained)==retainedId,"duplicate retained upload");
            require(lookup(manager,"buffer")==buffer&&(Boolean)bind.invoke(buffer,false),"buffer owner lost");pixelIs(255,0,0,"reuploaded buffer");
            require(((Integer)textureClass.getMethod("getContextGeneration").invoke(buffer)).intValue()
                    ==((Integer)Class.forName("com.smartisanos.launcher.gesture.LauncherHomeCompat").getMethod("getEglContextGeneration").invoke(null)).intValue(),"buffer generation not recorded");
            require(lookup(manager,"pending")==pending&&(Boolean)bind.invoke(pending,false),"never-uploaded pixels evicted");pixelIs(255,0,0,"pending bitmap");
            require(lookup(manager,"target-wrapper")==targetWrapper,"delegated target was treated as a bitmap source");
            missing.missing=true;
            for(int attempt=0;attempt<3;attempt++){
                require(!missing.bindSource(),"missing source reported ready");pixelIs(0,0,0,"missing source sampled unrelated image");
                require(missing.loads==2,"missing source retried without a new source event");
            }
            require(GLES20.glGetError()==GLES20.GL_NO_ERROR,"GL error");
            System.out.println("PASS TEXTURE_CONTEXT contexts=2 checks="+checks);
        } finally {second.close();}
    }

    private static void runTextureDeletion() throws Exception {
        initTextureProbe();Object manager=manager();Object stale;int old;
        Egl first=new Egl();try{
            markContext();samplingProgram();stale=bitmapTexture(0xffff0000,true);
            require((Boolean)bind.invoke(stale,false),"initial deletion texture");old=id(stale);register(manager,"delete-old",stale);
        }finally{first.close();}
        Egl second=new Egl();try{
            markContext();samplingProgram();int foreign=texture(0,255,0);require(foreign==old,"negative control requires ID reuse");
            manager.getClass().getMethod("ab",String.class).invoke(manager,"delete-old");
            System.out.println("TEXTURE_DELETE old="+old+" foreignStillAlive="+GLES20.glIsTexture(foreign));
            require(GLES20.glIsTexture(foreign),"old-context deletion removed unrelated current texture");pixelIs(0,255,0,"foreign texture damaged");
            Object current=bitmapTexture(0xff0000ff,true);require((Boolean)bind.invoke(current,false),"current upload");
            int currentId=id(current);register(manager,"delete-current",current);
            manager.getClass().getMethod("ab",String.class).invoke(manager,"delete-current");
            require(!GLES20.glIsTexture(currentId),"current-context texture leaked");
            require(GLES20.glGetError()==GLES20.GL_NO_ERROR,"GL deletion error");
            System.out.println("PASS TEXTURE_DELETE contexts=2 checks="+checks);
        }finally{second.close();}
    }
}
