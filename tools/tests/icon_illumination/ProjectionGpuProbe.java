import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

/** Isolated GLES2 readback, using original-phone masks and the real fragment shaders. */
public final class ProjectionGpuProbe {
    private static final int SIZE = 512;
    private static final String VERTEX = "precision mediump float;\n"
            + "attribute vec4 position; attribute vec2 texCoord; varying vec2 vTexCoord;\n"
            + "void main(){ gl_Position=position; vTexCoord=texCoord; }\n";

    public static void main(String[] args) throws Exception {
        File root = new File(args[0]);
        EGLDisplay display = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY);
        int[] version = new int[2];
        require(EGL14.eglInitialize(display, version, 0, version, 1), "EGL initialize");
        EGLConfig[] configs = new EGLConfig[1];
        int[] count = new int[1];
        require(EGL14.eglChooseConfig(display, new int[] {
                EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL14.EGL_RED_SIZE, 8, EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8, EGL14.EGL_ALPHA_SIZE, 8, EGL14.EGL_NONE},
                0, configs, 0, 1, count, 0) && count[0] != 0, "EGL config");
        EGLContext context = EGL14.eglCreateContext(display, configs[0], EGL14.EGL_NO_CONTEXT,
                new int[] {EGL14.EGL_CONTEXT_CLIENT_VERSION, 2, EGL14.EGL_NONE}, 0);
        EGLSurface surface = EGL14.eglCreatePbufferSurface(display, configs[0],
                new int[] {EGL14.EGL_WIDTH, SIZE, EGL14.EGL_HEIGHT, SIZE, EGL14.EGL_NONE}, 0);
        require(EGL14.eglMakeCurrent(display, surface, surface, context), "EGL current");
        System.out.println("GPU_VENDOR " + GLES20.glGetString(GLES20.GL_VENDOR));
        System.out.println("GPU_RENDERER " + GLES20.glGetString(GLES20.GL_RENDERER));
        int[] value = new int[1];
        GLES20.glGetIntegerv(GLES20.GL_MAX_TEXTURE_IMAGE_UNITS, value, 0);
        System.out.println("GPU_FRAGMENT_TEXTURE_UNITS " + value[0]);
        require(value[0] >= 8, "Eight texture units");
        int[] range = new int[2], precision = new int[1];
        GLES20.glGetShaderPrecisionFormat(GLES20.GL_FRAGMENT_SHADER,
                GLES20.GL_MEDIUM_FLOAT, range, 0, precision, 0);
        System.out.println("GPU_MEDIUMP range=" + range[0] + "," + range[1]
                + " precision=" + precision[0]);
        int[] textures = new int[8];
        GLES20.glGenTextures(8, textures, 0);
        int[] sigmas = {1, 1, 2, 3, 7, 10, 15, 20};
        for (int i = 0; i < textures.length; i++) {
            GLES20.glActiveTexture(GLES20.GL_TEXTURE0 + i);
            GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, textures[i]);
            GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MIN_FILTER, GLES20.GL_LINEAR);
            GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MAG_FILTER, GLES20.GL_LINEAR);
            GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_S, GLES20.GL_CLAMP_TO_EDGE);
            GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_T, GLES20.GL_CLAMP_TO_EDGE);
            Bitmap bitmap = BitmapFactory.decodeFile(new File(root,
                    "size192-sigma" + sigmas[i] + ".png").getPath());
            require(bitmap != null, "Mask decode");
            GLUtils.texImage2D(GLES20.GL_TEXTURE_2D, 0, bitmap, 0);
            bitmap.recycle();
        }
        FloatBuffer vertices = ByteBuffer.allocateDirect(16 * 4).order(ByteOrder.nativeOrder())
                .asFloatBuffer();
        vertices.put(new float[] {-1,-1,0,0, 1,-1,1,0, -1,1,0,1, 1,1,1,1}).position(0);
        String[] names = {"front", "left", "right", "up", "down", "small", "diagonal", "edge", "back"};
        float[][] lights = {{0,0,4000}, {-2800,0,2856.5714f}, {2800,0,2856.5714f},
                {0,2800,2856.5714f}, {0,-2800,2856.5714f}, {200,100,3993.745f},
                {2000,2000,2828.427f}, {3990,0,282.666f}, {1000,-1500,-3570.714f}};
        for (String variant : new String[] {"original", "stable", "legacy"}) {
            String fragment = new String(Files.readAllBytes(new File(root,
                    variant + "-fragment.glsl").toPath()), StandardCharsets.UTF_8);
            int program = program(VERTEX, fragment);
            GLES20.glUseProgram(program);
            int position = GLES20.glGetAttribLocation(program, "position");
            int texCoord = GLES20.glGetAttribLocation(program, "texCoord");
            vertices.position(0);
            GLES20.glVertexAttribPointer(position, 2, GLES20.GL_FLOAT, false, 16, vertices);
            GLES20.glEnableVertexAttribArray(position);
            vertices.position(2);
            GLES20.glVertexAttribPointer(texCoord, 2, GLES20.GL_FLOAT, false, 16, vertices);
            GLES20.glEnableVertexAttribArray(texCoord);
            String[] samplers = {"uDiffuseMap", "uShadowMap", "uNormalMap", "uExtraTex1",
                    "uExtraTex2", "uExtraTex3", "uExtraTex4", "uExtraTex5"};
            for (int i = 0; i < samplers.length; i++) {
                int location = GLES20.glGetUniformLocation(program, samplers[i]);
                require(location >= 0, samplers[i]);
                GLES20.glUniform1i(location, i);
            }
            GLES20.glUniform1f(location(program, "uShadowLengthFactor"), 1.2f);
            GLES20.glUniform1f(location(program, "uShadowOpacityFactor"), 0.7f);
            GLES20.glUniform4f(location(program, "uShadowFactor1"), 0,1,2,4);
            GLES20.glUniform4f(location(program, "uShadowFactor2"), 6,8,11,13);
            GLES20.glUniform4f(location(program, "uShadowFactor3"), .12f,.12f,.12f,.12f);
            GLES20.glUniform4f(location(program, "uShadowFactor4"), .12f,.1f,.08f,.02f);
            GLES20.glUniform4f(location(program, "uModularColor"), 1,1,1,1);
            int radius = GLES20.glGetUniformLocation(program, "uShadowRadius");
            System.out.println("GPU_UNIFORM " + variant + " uShadowRadius=" + radius);
            if (radius >= 0) GLES20.glUniform1f(radius, 1000);
            int light = location(program, "uLightLoc");
            for (int pose = 0; pose < lights.length; pose++) {
                GLES20.glViewport(0, 0, SIZE, SIZE);
                GLES20.glClearColor(0,0,0,0);
                GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT);
                GLES20.glUniform3f(light, lights[pose][0], lights[pose][1], lights[pose][2]);
                GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4);
                ByteBuffer pixels = ByteBuffer.allocateDirect(SIZE * SIZE * 4);
                GLES20.glReadPixels(0, 0, SIZE, SIZE, GLES20.GL_RGBA, GLES20.GL_UNSIGNED_BYTE, pixels);
                require(GLES20.glGetError() == GLES20.GL_NO_ERROR, "GL draw/readback");
                int[] argb = new int[SIZE * SIZE];
                long mass = 0, weightedX = 0, weightedY = 0;
                int nonzero = 0;
                for (int y = 0; y < SIZE; y++) for (int x = 0; x < SIZE; x++) {
                    int offset = (y * SIZE + x) * 4;
                    int alpha = pixels.get(offset + 3) & 255;
                    mass += alpha; weightedX += alpha * x; weightedY += alpha * y;
                    if (alpha != 0) nonzero++;
                    argb[(SIZE - 1 - y) * SIZE + x] = alpha << 24;
                }
                Bitmap output = Bitmap.createBitmap(argb, SIZE, SIZE, Bitmap.Config.ARGB_8888);
                try (FileOutputStream stream = new FileOutputStream(new File(root,
                        variant + "-" + names[pose] + ".png"))) {
                    output.compress(Bitmap.CompressFormat.PNG, 100, stream);
                }
                output.recycle();
                System.out.println("GPU_OUTPUT " + variant + " " + names[pose]
                        + " nonzeroPixels=" + nonzero + " alphaMass=" + mass
                        + " centroid=" + (mass == 0 ? "EMPTY" : weightedX / (double) mass
                                + "," + weightedY / (double) mass));
            }
            GLES20.glDeleteProgram(program);
        }
        GLES20.glDeleteTextures(8, textures, 0);
        EGL14.eglMakeCurrent(display, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
        EGL14.eglDestroySurface(display, surface);
        EGL14.eglDestroyContext(display, context);
        EGL14.eglTerminate(display);
    }

    private static int location(int program, String name) {
        int location = GLES20.glGetUniformLocation(program, name);
        require(location >= 0, name);
        return location;
    }
    private static int shader(int type, String source) {
        int shader = GLES20.glCreateShader(type);
        GLES20.glShaderSource(shader, source);
        GLES20.glCompileShader(shader);
        int[] status = new int[1];
        GLES20.glGetShaderiv(shader, GLES20.GL_COMPILE_STATUS, status, 0);
        require(status[0] != 0, GLES20.glGetShaderInfoLog(shader));
        return shader;
    }
    private static int program(String vertex, String fragment) {
        int vs = shader(GLES20.GL_VERTEX_SHADER, vertex);
        int fs = shader(GLES20.GL_FRAGMENT_SHADER, fragment);
        int program = GLES20.glCreateProgram();
        GLES20.glAttachShader(program, vs); GLES20.glAttachShader(program, fs);
        GLES20.glLinkProgram(program);
        int[] status = new int[1];
        GLES20.glGetProgramiv(program, GLES20.GL_LINK_STATUS, status, 0);
        require(status[0] != 0, GLES20.glGetProgramInfoLog(program));
        GLES20.glDeleteShader(vs); GLES20.glDeleteShader(fs);
        return program;
    }
    private static void require(boolean condition, String message) {
        if (!condition) throw new IllegalStateException(message);
    }
}
