.class public Lcom/smartisanos/launcher/view/vc;
.super Ljava/lang/Object;
.source "SMRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field public static my:Z

.field public static ny:I


# instance fields
.field private Zx:Ljava/lang/StringBuilder;

.field private ky:I

.field private ly:Lcom/smartisanos/launcher/view/Eb;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mWidth:I

.field private time:J

# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/vc;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/view/vc;->my:Z

    .line 3
    sput v0, Lcom/smartisanos/launcher/view/vc;->ny:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/view/vc;->mWidth:I

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/view/vc;->mHeight:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/smartisanos/launcher/view/vc;->time:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/view/vc;->ky:I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/vc;->Zx:Ljava/lang/StringBuilder;

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/view/vc;->mContext:Landroid/content/Context;

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/vc;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/smartisanos/smengine/r;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static b(III)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 1
    new-array v0, v0, [B

    .line 2
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v0, 0x8d40

    .line 4
    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    const-string p0, "bindframebuffer"

    .line 5
    invoke-static {p0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move v5, p1

    move v6, p2

    move-object v9, v1

    .line 6
    invoke-static/range {v3 .. v9}, Lcom/smartisanos/smengine/P;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string p0, "glReadPixels"

    .line 7
    invoke-static {p0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 8
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 10
    invoke-static {v0, v2}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    return-object p0
.end method


# virtual methods
.method public i(Lcom/smartisanos/launcher/view/Eb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/vc;->ly:Lcom/smartisanos/launcher/view/Eb;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/vc;->ly:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->update()V

    invoke-static {}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopBackgroundCapture;->isGlCaptureRequested()Z

    move-result p1

    if-eqz p1, :quick_desktop_capture_done

    const/4 p1, 0x0

    iget v0, p0, Lcom/smartisanos/launcher/view/vc;->mWidth:I

    iget v1, p0, Lcom/smartisanos/launcher/view/vc;->mHeight:I

    invoke-static {p1, v0, v1}, Lcom/smartisanos/launcher/view/vc;->b(III)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopBackgroundCapture;->onGlFrame(Landroid/graphics/Bitmap;)V

    :quick_desktop_capture_done

    sget-boolean p1, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->sLauncherFrameReportPending:Z

    if-eqz p1, :startup_frame_reported

    const/4 p1, 0x0

    sput-boolean p1, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->sLauncherFrameReportPending:Z

    const-string p1, "LAUNCH_FIRST_FRAME"

    invoke-static {p1}, Lcom/smartisanos/launcher/diagnostics/LauncherStartupDiagnostics;->mark(Ljava/lang/String;)V

    invoke-static {}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->onLauncherFirstFrame()V

    invoke-static {}, Lcom/smartisanos/launcher/reload/LauncherColdReloadCoordinator;->onRendererFirstFrame()V

    :startup_frame_reported

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/view/vc;->my:Z

    if-eqz p1, :cond_1

    .line 3
    sget p1, Lcom/smartisanos/launcher/view/vc;->ny:I

    iget v0, p0, Lcom/smartisanos/launcher/view/vc;->mWidth:I

    iget p0, p0, Lcom/smartisanos/launcher/view/vc;->mHeight:I

    invoke-static {p1, v0, p0}, Lcom/smartisanos/launcher/view/vc;->b(III)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "readPixelForScreen.png"

    .line 4
    invoke-static {p1, p0}, Lcom/smartisanos/smengine/s;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "sScreenCap bitmap is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    .line 7
    sput-boolean p0, Lcom/smartisanos/launcher/view/vc;->my:Z

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    .line 1
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged begin width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget p1, p0, Lcom/smartisanos/launcher/view/vc;->mWidth:I

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/smartisanos/launcher/view/vc;->mHeight:I

    if-eq p1, p3, :cond_4

    .line 3
    :cond_1
    sget p1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    iput p1, p0, Lcom/smartisanos/launcher/view/vc;->mWidth:I

    .line 4
    sget p1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    iput p1, p0, Lcom/smartisanos/launcher/view/vc;->mHeight:I

    .line 5
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged mSize ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/launcher/view/vc;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/launcher/view/vc;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], size ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iput p2, p0, Lcom/smartisanos/launcher/view/vc;->mWidth:I

    .line 9
    iput p3, p0, Lcom/smartisanos/launcher/view/vc;->mHeight:I

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/vc;->ly:Lcom/smartisanos/launcher/view/Eb;

    iget v0, p0, Lcom/smartisanos/launcher/view/vc;->mWidth:I

    iget p0, p0, Lcom/smartisanos/launcher/view/vc;->mHeight:I

    invoke-virtual {p1, v0, p0}, Lcom/smartisanos/launcher/view/Eb;->create(II)V

    :cond_4
    const/4 p0, 0x1

    if-le p2, p3, :cond_6

    .line 11
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_5

    .line 12
    sget-object p1, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "ENABLE_LARGE_SCREEN_MODE setCanDraw true"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/Ra;->Vb(Z)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Ra;->Vb(Z)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/Ra;->Vb(Z)V

    .line 16
    :goto_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    const-string p0, "LAUNCH_SURFACE_READY"

    invoke-static {p0}, Lcom/smartisanos/launcher/diagnostics/LauncherStartupDiagnostics;->mark(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    invoke-static {}, Lcom/smartisanos/launcher/animations/AnimationFrameRateController;->reset()V

    .line 1
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "onSurfaceCreated begin"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x1f00

    .line 2
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1f01

    .line 3
    invoke-static {p2}, Lcom/smartisanos/smengine/P;->glGetString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1f02

    .line 4
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x8b8c

    .line 5
    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f03

    .line 6
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vender = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :cond_1
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "render = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_2
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_3
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shadingL = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_4
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extent = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/vc;->ly:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/Ra;->a(Lcom/smartisanos/smengine/La;)V

    .line 13
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/yb;->U(I)V

    .line 16
    sget-object p0, Lcom/smartisanos/launcher/view/vc;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GL_THREAD_ID ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/yb;->Yc()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/yb;->Yc()I

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    .line 19
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "surfaceCreate GlThread id can\'t is 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_7
    :goto_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p0

    check-cast p0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/theme/t;->a(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method
