.class public Lcom/smartisanos/launcher/J;
.super Ljava/lang/Object;
.source "ActivityProxy.java"


# static fields
.field private static volatile Db:Lcom/smartisanos/launcher/J;

.field public static volatile Dg:Z

.field private static Eg:J

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Ag:Landroid/hardware/SensorEventListener;

.field private Bg:Lcom/smartisanos/launcher/I;

.field private Cg:Ljava/lang/Runnable;

.field public volatile Oa:Z

.field private Sf:Landroid/view/WindowManager;

.field private Tf:Landroid/view/View;

.field private Uf:Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

.field public volatile Vf:Z

.field public volatile Wf:Z

.field public volatile Xf:Z

.field public volatile Yf:Z

.field public volatile Zf:Z

.field public volatile _f:Z

.field public volatile ag:Z

.field private bg:J

.field private cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

.field private dg:Z

.field public eg:Lcom/smartisanos/launcher/widget/c;

.field private volatile fg:Z

.field private gg:Landroid/content/Intent;

.field private hg:Landroid/app/PendingIntent;

.field private ig:Lcom/smartisanos/launcher/view/Qa;

.field private jg:J

.field private kg:Z

.field private lg:Lcom/smartisanos/smengine/n;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mHour:I

.field private mMinute:I

.field public volatile mPaused:Z

.field private mRegistered:Z

.field private mRootView:Lcom/smartisanos/launcher/view/RootView;

.field private mTime:Ljava/util/Calendar;

.field private mWindow:Landroid/view/Window;

.field private mg:Lcom/smartisanos/smengine/n;

.field private ng:Z

.field private og:[F

.field pg:Lcom/smartisanos/smengine/a/g;

.field qg:[F

.field rg:[F

.field sg:Lcom/smartisanos/smengine/a/j;

.field tg:Lcom/smartisanos/smengine/a/f;

.field ug:Lcom/smartisanos/smengine/a/e;

.field vg:Lcom/smartisanos/smengine/a/f;

.field wg:Lcom/smartisanos/smengine/a/j;

.field xg:Landroid/hardware/SensorEventListener;

.field private yg:Landroid/hardware/Sensor;

.field private zg:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/J;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/J;->Dg:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->Oa:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Wf:Z

    .line 4
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->mPaused:Z

    .line 5
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Xf:Z

    .line 6
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Yf:Z

    .line 7
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Zf:Z

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->_f:Z

    .line 9
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->ag:Z

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Lcom/smartisanos/launcher/J;->bg:J

    .line 11
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->dg:Z

    .line 12
    new-instance v4, Lcom/smartisanos/launcher/widget/c;

    invoke-direct {v4}, Lcom/smartisanos/launcher/widget/c;-><init>()V

    iput-object v4, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    .line 13
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->fg:Z

    const/4 v4, 0x0

    .line 14
    iput-object v4, p0, Lcom/smartisanos/launcher/J;->ig:Lcom/smartisanos/launcher/view/Qa;

    .line 15
    iput-wide v2, p0, Lcom/smartisanos/launcher/J;->jg:J

    .line 16
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->kg:Z

    .line 17
    new-instance v0, Lcom/smartisanos/launcher/o;

    const/16 v2, 0x64

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/o;-><init>(Lcom/smartisanos/launcher/J;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->lg:Lcom/smartisanos/smengine/n;

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/q;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/q;-><init>(Lcom/smartisanos/launcher/J;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->mg:Lcom/smartisanos/smengine/n;

    .line 19
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->ng:Z

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 20
    iput-object v0, p0, Lcom/smartisanos/launcher/J;->og:[F

    .line 21
    new-instance v0, Lcom/smartisanos/smengine/a/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->pg:Lcom/smartisanos/smengine/a/g;

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 22
    iput-object v0, p0, Lcom/smartisanos/launcher/J;->qg:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 23
    iput-object v0, p0, Lcom/smartisanos/launcher/J;->rg:[F

    .line 24
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->sg:Lcom/smartisanos/smengine/a/j;

    .line 25
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->tg:Lcom/smartisanos/smengine/a/f;

    .line 26
    new-instance v0, Lcom/smartisanos/smengine/a/e;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/e;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->ug:Lcom/smartisanos/smengine/a/e;

    .line 27
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->vg:Lcom/smartisanos/smengine/a/f;

    .line 28
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->wg:Lcom/smartisanos/smengine/a/j;

    .line 29
    new-instance v0, Lcom/smartisanos/launcher/H;

    invoke-direct {v0, p0, v4}, Lcom/smartisanos/launcher/H;-><init>(Lcom/smartisanos/launcher/J;Lcom/smartisanos/launcher/p;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->xg:Landroid/hardware/SensorEventListener;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 30
    iput v0, p0, Lcom/smartisanos/launcher/J;->zg:F

    .line 31
    new-instance v0, Lcom/smartisanos/launcher/r;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/r;-><init>(Lcom/smartisanos/launcher/J;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->Ag:Landroid/hardware/SensorEventListener;

    .line 32
    new-instance v0, Lcom/smartisanos/launcher/I;

    invoke-direct {v0, p0, v4}, Lcom/smartisanos/launcher/I;-><init>(Lcom/smartisanos/launcher/J;Lcom/smartisanos/launcher/p;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->Bg:Lcom/smartisanos/launcher/I;

    .line 33
    iput v1, p0, Lcom/smartisanos/launcher/J;->mHour:I

    .line 34
    iput v1, p0, Lcom/smartisanos/launcher/J;->mMinute:I

    .line 35
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->mRegistered:Z

    .line 36
    iput-object p1, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    .line 37
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    .line 38
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/smartisanos/launcher/J;->Sf:Landroid/view/WindowManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->Oa:Z

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Wf:Z

    .line 42
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->mPaused:Z

    .line 43
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Xf:Z

    .line 44
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Yf:Z

    .line 45
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Zf:Z

    .line 46
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->_f:Z

    .line 47
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->ag:Z

    const-wide/16 v2, 0x0

    .line 48
    iput-wide v2, p0, Lcom/smartisanos/launcher/J;->bg:J

    .line 49
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->dg:Z

    .line 50
    new-instance v4, Lcom/smartisanos/launcher/widget/c;

    invoke-direct {v4}, Lcom/smartisanos/launcher/widget/c;-><init>()V

    iput-object v4, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    .line 51
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->fg:Z

    const/4 v4, 0x0

    .line 52
    iput-object v4, p0, Lcom/smartisanos/launcher/J;->ig:Lcom/smartisanos/launcher/view/Qa;

    .line 53
    iput-wide v2, p0, Lcom/smartisanos/launcher/J;->jg:J

    .line 54
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->kg:Z

    .line 55
    new-instance v0, Lcom/smartisanos/launcher/o;

    const/16 v2, 0x64

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/o;-><init>(Lcom/smartisanos/launcher/J;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->lg:Lcom/smartisanos/smengine/n;

    .line 56
    new-instance v0, Lcom/smartisanos/launcher/q;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/q;-><init>(Lcom/smartisanos/launcher/J;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->mg:Lcom/smartisanos/smengine/n;

    .line 57
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->ng:Z

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 58
    iput-object v0, p0, Lcom/smartisanos/launcher/J;->og:[F

    .line 59
    new-instance v0, Lcom/smartisanos/smengine/a/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->pg:Lcom/smartisanos/smengine/a/g;

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 60
    iput-object v0, p0, Lcom/smartisanos/launcher/J;->qg:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 61
    iput-object v0, p0, Lcom/smartisanos/launcher/J;->rg:[F

    .line 62
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->sg:Lcom/smartisanos/smengine/a/j;

    .line 63
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->tg:Lcom/smartisanos/smengine/a/f;

    .line 64
    new-instance v0, Lcom/smartisanos/smengine/a/e;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/e;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->ug:Lcom/smartisanos/smengine/a/e;

    .line 65
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->vg:Lcom/smartisanos/smengine/a/f;

    .line 66
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->wg:Lcom/smartisanos/smengine/a/j;

    .line 67
    new-instance v0, Lcom/smartisanos/launcher/H;

    invoke-direct {v0, p0, v4}, Lcom/smartisanos/launcher/H;-><init>(Lcom/smartisanos/launcher/J;Lcom/smartisanos/launcher/p;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->xg:Landroid/hardware/SensorEventListener;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 68
    iput v0, p0, Lcom/smartisanos/launcher/J;->zg:F

    .line 69
    new-instance v0, Lcom/smartisanos/launcher/r;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/r;-><init>(Lcom/smartisanos/launcher/J;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->Ag:Landroid/hardware/SensorEventListener;

    .line 70
    new-instance v0, Lcom/smartisanos/launcher/I;

    invoke-direct {v0, p0, v4}, Lcom/smartisanos/launcher/I;-><init>(Lcom/smartisanos/launcher/J;Lcom/smartisanos/launcher/p;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->Bg:Lcom/smartisanos/launcher/I;

    .line 71
    iput v1, p0, Lcom/smartisanos/launcher/J;->mHour:I

    .line 72
    iput v1, p0, Lcom/smartisanos/launcher/J;->mMinute:I

    .line 73
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->mRegistered:Z

    .line 74
    iput-object p1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    .line 75
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/smartisanos/launcher/J;->Sf:Landroid/view/WindowManager;

    return-void
.end method

.method private Ev()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/n;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/n;-><init>(Lcom/smartisanos/launcher/J;I)V

    return-object v0
.end method

.method private Fv()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/z;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/z;-><init>(Lcom/smartisanos/launcher/J;I)V

    return-object v0
.end method

.method private Gv()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    .line 4
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x20000

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Hv()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "handleSettingsChange !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "handleSettingsChange main view is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->Y(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/N;->vf()I

    move-result v2

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/data/N;->init(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/N;->vf()I

    move-result p0

    const/4 v1, 0x0

    if-eq v2, p0, :cond_a

    .line 9
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "handleSettingsChange oldComplexMode != newComplexMode"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_2
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v4, "]"

    if-eqz v3, :cond_3

    sget-object v3, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSettingsChange oldComplexMode == ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_3
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSettingsChange newComplexMode == ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    :cond_4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSettingsChange currMode       == ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    :cond_6
    if-nez v2, :cond_7

    .line 17
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "updatePageModeAndView targetPage is null"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 18
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 21
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/bb;->Gp()V

    .line 22
    :cond_8
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    .line 23
    :cond_9
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "mPageView.getPageViewAnimation().initPageLocation()"

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 24
    :cond_a
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "handleSettingsChange() done"

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 25
    :cond_b
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->Y(Z)V

    return-void
.end method

.method private Iv()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/p;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/p;-><init>(Lcom/smartisanos/launcher/J;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Jv()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->Bg:Lcom/smartisanos/launcher/I;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private K(II)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/J;->bg:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->Vf:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/smartisanos/launcher/data/Constants;->time_activity_onCreate_start:J

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/RootView;

    iput-object p1, p0, Lcom/smartisanos/launcher/J;->mRootView:Lcom/smartisanos/launcher/view/RootView;

    invoke-static {p1}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->attach(Landroid/view/ViewGroup;)V

    .line 6
    invoke-virtual {v1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    iput-object p1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/4 p1, 0x1

    const/16 p2, 0x400

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/J;->b(ZI)V

    .line 8
    sget p2, Lcom/smartisanos/launcher/ob;->initializing:I

    invoke-static {p2}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/smartisanos/launcher/reload/LauncherColdReloadCoordinator;->armInitializationLoadingWindow()V


    .line 9
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    iget-object v2, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, p2}, Lcom/smartisanos/launcher/widget/c;->q(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/widget/c;->show()V

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/smartisanos/launcher/data/N;->G(Landroid/content/Context;)Z

    move-result p2

    sput-boolean p2, Lcom/smartisanos/launcher/data/Constants;->FIRST_USE_MENU_KEY_SWITCH_PAGE_MODE:Z

    .line 13
    # Resource validation is a debug-only full asset scan.  The production
    # port resolves each asset lazily with fallback, so doing it here only
    # adds cold-start I/O and reports optional paths as errors.

    .line 14
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Gv()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 16
    iget-object v2, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x8

    invoke-virtual/range {v2 .. v8}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 17
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p2, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 18
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p2, p1}, Landroid/opengl/GLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 19
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object p2

    iget-object v1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/v;->a(Landroid/opengl/GLSurfaceView;)V

    .line 20
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ra;->ut()V

    .line 21
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p2

    iget-object v1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/Ra;->b(Landroid/opengl/GLSurfaceView;)V

    .line 22
    new-instance p2, Lcom/smartisanos/launcher/view/vc;

    iget-object v1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/smartisanos/launcher/view/vc;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v1, Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {v1}, Lcom/smartisanos/launcher/view/Eb;-><init>()V

    .line 24
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Eb;->h(Lcom/smartisanos/launcher/view/Eb;)V

    .line 25
    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/view/vc;->i(Lcom/smartisanos/launcher/view/Eb;)V

    .line 26
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {v1, p2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 27
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p2, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 28
    :try_start_0
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "setShouldStopWindow"

    new-array v2, p1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 29
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "set glsurfaceview not stop window"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    :cond_2
    sget-object p2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->eaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p2}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 32
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/c/i;->init()V

    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->db()V

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object p2

    .line 35
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const-string v2, ""

    if-eqz v1, :cond_5

    invoke-static {p2}, Lcom/smartisanos/launcher/theme/X;->i(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sStatusbarColorSuffix:Ljava/lang/String;

    const-string v3, "_light"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    invoke-static {p2, v3}, Lcom/smartisanos/launcher/e/s;->d(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_3
    invoke-static {p2}, Lcom/smartisanos/launcher/e/s;->n(Lcom/smartisanos/launcher/theme/v;)V

    .line 39
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    invoke-static {p2, v3}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_1

    .line 41
    :cond_4
    invoke-static {p2, v2}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_5
    invoke-static {p2}, Lcom/smartisanos/launcher/e/s;->n(Lcom/smartisanos/launcher/theme/v;)V

    .line 43
    invoke-static {p2, v2}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    .line 44
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->disableDeathOnFileUriExposure()V

    .line 45
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lcom/smartisanos/launcher/data/M;->qr:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_6

    move p2, p1

    goto :goto_2

    :cond_6
    move p2, v0

    .line 46
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Lcom/smartisanos/launcher/ub;->d(IZ)V

    .line 47
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/smartisanos/launcher/lb;->config_shortAnimTime:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v1, p2

    sput-wide v1, Lcom/smartisanos/launcher/J;->Eg:J

    .line 48
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lcom/smartisanos/launcher/data/M;->USER_SETUP_COMPLETE:Ljava/lang/String;

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 49
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "## init for activity wizard value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ###"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    if-eq p2, p1, :cond_9

    .line 50
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_8

    sget-object p1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "## wizard hide surfaceview"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 51
    :cond_8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 52
    :cond_9
    .line 53
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Iv()V

    return-void
.end method

.method private Kv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->Bg:Lcom/smartisanos/launcher/I;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private Lv()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mTime:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->mTime:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/J;->mHour:I

    .line 5
    iput v1, p0, Lcom/smartisanos/launcher/J;->mMinute:I

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget p0, p0, Lcom/smartisanos/launcher/J;->mHour:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/Ra;->pc(I)V

    return-void
.end method

.method public static Ua()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static Va()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Qh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Za()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/J;->ag:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/J;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/J;->zg:F

    return p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/J;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/J;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/J;->mTime:Ljava/util/Calendar;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10

    .line 45
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "initForWindow"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 46
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_4

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "Duplicate init !!!"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 50
    sget v1, Lcom/smartisanos/launcher/ja;->PROC_ID:I

    if-eqz v1, :cond_2

    .line 51
    sget v1, Lcom/smartisanos/launcher/ja;->PROC_ID:I

    if-ne v0, v1, :cond_2

    .line 52
    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "maybe is relaunch activity ! kill launcher"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/smartisanos/launcher/ua;->dc()V

    return-void

    .line 54
    :cond_2
    sput v0, Lcom/smartisanos/launcher/ja;->PROC_ID:I

    .line 55
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/yb;->V(I)V

    .line 56
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAIN_THREAD_ID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/yb;->Zc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 57
    :cond_3
    # SmtPCUtils is absent on normal Android ROMs.  The primary display is
    # always the safe Launcher startup fallback.
    const/4 v0, 0x0

    sput v0, Lcom/smartisanos/launcher/data/Constants;->DISPLAY_ID:I

    .line 58
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->initLayoutParams(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/smartisanos/launcher/view/Mc;->hq()V

    .line 60
    new-instance v0, Lcom/smartisanos/launcher/J;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/J;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/launcher/J;->Db:Lcom/smartisanos/launcher/J;

    .line 61
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/J;->mWindow:Landroid/view/Window;

    .line 62
    sget v0, Lcom/smartisanos/launcher/mb;->large_screen:I

    .line 63
    sget v2, Lcom/smartisanos/launcher/kb;->landscapeRootView:I

    .line 64
    sget v3, Lcom/smartisanos/launcher/kb;->landscapeGlView:I

    .line 65
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v8, 0x1810518

    .line 66
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7e8

    const/4 v9, -0x3

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v4, "launchpad"

    .line 67
    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    .line 68
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 69
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v4

    iput-object v0, v4, Lcom/smartisanos/launcher/J;->Tf:Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 p0, 0x0

    .line 71
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/J;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->setPageMode(I)V

    .line 74
    sget-object v1, Lcom/smartisanos/launcher/J;->Db:Lcom/smartisanos/launcher/J;

    invoke-direct {v1, v0, v2, v3}, Lcom/smartisanos/launcher/J;->b(Landroid/view/View;II)V

    .line 75
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/launcher/qa;->c(IZ)V

    .line 76
    invoke-static {p0}, Lcom/smartisanos/launcher/Qa;->s(Z)V

    return-void

    .line 77
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "initForWindow just for ENABLE_LARGE_SCREEN_MODE"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/J;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/J;->ng:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/smartisanos/launcher/J;->Eg:J

    return-wide v0
.end method

.method static synthetic access$400()Lcom/smartisanos/launcher/J;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/J;->Db:Lcom/smartisanos/launcher/J;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/J;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/J;->mMinute:I

    return p0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .line 2
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 3
    sget v1, Lcom/smartisanos/launcher/ja;->PROC_ID:I

    if-eqz v1, :cond_0

    .line 4
    sget v1, Lcom/smartisanos/launcher/ja;->PROC_ID:I

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "maybe is relaunch activity ! kill launcher"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ua;->dc()V

    return-void

    .line 7
    :cond_0
    sput v0, Lcom/smartisanos/launcher/ja;->PROC_ID:I

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/yb;->V(I)V

    .line 9
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAIN_THREAD_ID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/yb;->Zc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_1
    .line 11
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->initLayoutParams(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Mc;->hq()V

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/J;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/J;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/smartisanos/launcher/J;->Db:Lcom/smartisanos/launcher/J;

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/J;->mWindow:Landroid/view/Window;

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 16
    sget v0, Lcom/smartisanos/launcher/mb;->launcher_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->a(Landroid/view/Window;)V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->setPageMode(I)V

    .line 19
    sget-object v0, Lcom/smartisanos/launcher/J;->Db:Lcom/smartisanos/launcher/J;

    sget v1, Lcom/smartisanos/launcher/kb;->portraitRootView:I

    sget v2, Lcom/smartisanos/launcher/kb;->portraitGlView:I

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/J;->K(II)V

    .line 20
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->la(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/view/View;II)V
    .locals 8

    .line 41
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "initForWindowImpl !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/J;->bg:J

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->Vf:Z

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/smartisanos/launcher/data/Constants;->time_activity_onCreate_start:J

    .line 45
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/RootView;

    iput-object p2, p0, Lcom/smartisanos/launcher/J;->mRootView:Lcom/smartisanos/launcher/view/RootView;

    .line 47
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    iput-object p2, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    .line 48
    sget p2, Lcom/smartisanos/launcher/kb;->large_screen_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    iput-object p1, p0, Lcom/smartisanos/launcher/J;->Uf:Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    .line 49
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_1

    .line 50
    sget p1, Lcom/smartisanos/launcher/ob;->initializing:I

    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/smartisanos/launcher/reload/LauncherColdReloadCoordinator;->armInitializationLoadingWindow()V


    .line 51
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    iget-object p3, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lcom/smartisanos/launcher/widget/c;->q(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/widget/c;->show()V

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/smartisanos/launcher/data/N;->G(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/smartisanos/launcher/data/Constants;->FIRST_USE_MENU_KEY_SWITCH_PAGE_MODE:Z

    .line 54
    # Skip debug-only full asset validation during configuration rebuilds.

    .line 55
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Gv()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 57
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/16 v7, 0x8

    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 58
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 59
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p1, p2}, Landroid/opengl/GLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 60
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object p1

    iget-object p3, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p1, p3}, Lcom/smartisanos/smengine/v;->a(Landroid/opengl/GLSurfaceView;)V

    .line 61
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ut()V

    .line 62
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    iget-object p3, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p1, p3}, Lcom/smartisanos/smengine/Ra;->b(Landroid/opengl/GLSurfaceView;)V

    .line 63
    new-instance p1, Lcom/smartisanos/launcher/view/vc;

    iget-object p3, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p3}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/smartisanos/launcher/view/vc;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance p3, Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {p3}, Lcom/smartisanos/launcher/view/Eb;-><init>()V

    .line 65
    invoke-static {p3}, Lcom/smartisanos/launcher/view/Eb;->h(Lcom/smartisanos/launcher/view/Eb;)V

    .line 66
    invoke-virtual {p1, p3}, Lcom/smartisanos/launcher/view/vc;->i(Lcom/smartisanos/launcher/view/Eb;)V

    .line 67
    iget-object p3, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    const/4 v1, -0x2

    invoke-interface {p3, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 68
    iget-object p3, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p3, p2}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 69
    iget-object p3, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p3, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 70
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 71
    :try_start_0
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p3, "setShouldStopWindow"

    new-array v1, p2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    invoke-virtual {p1, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 72
    sget-boolean p3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p3, :cond_2

    sget-object p3, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "set glsurfaceview not stop window"

    invoke-virtual {p3, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 73
    :cond_2
    iget-object p3, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    :cond_3
    sget-object p1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->eaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 75
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/c/i;->init()V

    .line 76
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->db()V

    .line 77
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    .line 78
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const-string p3, ""

    if-eqz p2, :cond_7

    iget-object p2, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const-string v0, "smartisan_theme_aero"

    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const-string v0, "smartisan_theme_trans"

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 81
    :cond_4
    sget-object p2, Lcom/smartisanos/launcher/data/Constants;->sStatusbarColorSuffix:Ljava/lang/String;

    const-string v0, "_light"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 82
    invoke-static {p1, v0}, Lcom/smartisanos/launcher/e/s;->d(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_5
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->n(Lcom/smartisanos/launcher/theme/v;)V

    .line 84
    :goto_0
    sget-object p2, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 85
    invoke-static {p1, v0}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_6
    invoke-static {p1, p3}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_7
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->n(Lcom/smartisanos/launcher/theme/v;)V

    .line 88
    invoke-static {p1, p3}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    .line 89
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->disableDeathOnFileUriExposure()V

    .line 90
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/smartisanos/launcher/lb;->config_shortAnimTime:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    sput-wide p1, Lcom/smartisanos/launcher/J;->Eg:J

    .line 91
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-static {p0}, Lcom/smartisanos/launcher/eb;->init(Landroid/view/View;)V

    .line 92
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->onResume()V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/J;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/J;->zg:F

    return p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/data/M;->USER_SETUP_COMPLETE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "## wizard value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ###"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "wizard is not finish"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/smartisanos/launcher/J;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Lv()V

    return-void
.end method

.method static synthetic e(Lcom/smartisanos/launcher/J;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Hv()V

    return-void
.end method

.method static synthetic f(Lcom/smartisanos/launcher/J;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Fv()Lcom/smartisanos/smengine/n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/J;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/J;->kg:Z

    return p0
.end method

.method public static getInstance()Lcom/smartisanos/launcher/J;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/J;->Db:Lcom/smartisanos/launcher/J;

    return-object v0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/J;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/J;->dg:Z

    return p0
.end method

.method static synthetic i(Lcom/smartisanos/launcher/J;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->og:[F

    return-object p0
.end method

.method static synthetic j(Lcom/smartisanos/launcher/J;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/J;->mHour:I

    return p0
.end method

.method public static onFinish()V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " some one finish me. stack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/smartisanos/launcher/ua;->J(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static sendBroadcast(Landroid/content/Intent;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abandon sendBroadcast ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] by isContextReady false"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object p1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abandon sendBroadcast ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] by isContextReady false"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G(I)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/smartisanos/launcher/ua;->getAnimationScale(I)F

    move-result v1

    const-string v2, "WINDOW_ANIM_SCALE"

    if-ne p1, v0, :cond_1

    const-string v2, "TRANSITION_ANIM_SCALE"

    .line 2
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableAnimationScale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " oldScale:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_3

    .line 3
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "disableAnimationScale ERROR, oldScale == 0"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v2

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, p1, v1}, Lcom/smartisanos/launcher/data/N;->a(Landroid/content/Context;IF)Z

    .line 5
    invoke-static {p1, v0}, Lcom/smartisanos/launcher/ua;->setAnimationScale(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public H(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/data/N;->c(Landroid/content/Context;I)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    .line 2
    :try_start_0
    invoke-static {p1, v0}, Lcom/smartisanos/launcher/ua;->setAnimationScale(IF)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, v1}, Lcom/smartisanos/launcher/data/N;->a(Landroid/content/Context;IF)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Ka()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "clearContext !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    return-void
.end method

.method public La()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->Cg:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/s;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/s;-><init>(Lcom/smartisanos/launcher/J;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->Cg:Ljava/lang/Runnable;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->Cg:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public Ma()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/C;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/C;-><init>(Lcom/smartisanos/launcher/J;I)V

    const p0, 0x3f4ccccd    # 0.8f

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public Na()Lcom/smartisanos/launcher/view/Qa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->ig:Lcom/smartisanos/launcher/view/Qa;

    return-object p0
.end method

.method public Oa()Lcom/smartisanos/launcher/view/SMGLSurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->cg:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    return-object p0
.end method

.method public Pa()Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->Uf:Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Qa()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/J;->fg:Z

    return p0
.end method

.method public Ra()Landroid/content/res/Resources;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Sa()Landroid/view/View;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->Tf:Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Ta()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/J;->ng:Z

    return p0
.end method

.method public Wa()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/c;->dismiss()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public Xa()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/c;->destroy()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Ya()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/e;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/e;-><init>(Lcom/smartisanos/launcher/J;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public _a()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/J;->mRegistered:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->Cg:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->mRegistered:Z

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/16 v2, 0xb

    .line 7
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/J;->xg:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    const/4 v0, 0x5

    .line 9
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->yg:Landroid/hardware/Sensor;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->yg:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->Ag:Landroid/hardware/SensorEventListener;

    const/16 v2, 0x7d0

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_4
    return-void
.end method

.method public a(Landroid/app/AlertDialog;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 80
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->Tf:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 8

    .line 18
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "onNewIntent start"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 20
    invoke-static {v1}, Lcom/smartisanos/launcher/d/h;->dismiss(Z)V

    .line 21
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/d/e;->dismissDialog()V

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logPageViewNotReady()V

    .line 23
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "onNewIntent mainView is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 24
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logPageViewNotReady()V

    .line 25
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "onNewIntent pageView is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 26
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/r;->Gd()Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_3

    .line 27
    :cond_6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vr()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Tq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-nez v2, :cond_10

    if-eqz v0, :cond_7

    goto/16 :goto_2

    .line 29
    :cond_7
    invoke-static {p1}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->isStandardAndroidHome(Landroid/content/Intent;)Z

    move-result v7

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGateFlags(I)V

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    move p1, v2

    goto :goto_0

    :cond_8
    move p1, v1

    .line 30
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/J;->Oa:Z

    const-string v3, "HOME_GATE_STANDARD_HOME"

    invoke-static {v3, v7}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGate(Ljava/lang/String;Z)V

    const-string v3, "HOME_GATE_ORIGINAL_FOCUS"

    invoke-static {v3, v0}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGate(Ljava/lang/String;Z)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/smartisanos/launcher/J;->jg:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gez v3, :cond_9

    move v1, v2

    :cond_9
    const-string v3, "HOME_GATE_DEBOUNCED"

    invoke-static {v3, v1}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGate(Ljava/lang/String;Z)V

    if-eqz p1, :cond_home_from_background

    if-nez v1, :cond_home_debounced

    if-nez v7, :cond_a

    if-nez v0, :cond_a

    const-string v3, "HOME_BLOCKED_ORIGINAL_FOCUS"

    invoke-static {v3}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGateEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/J;->jg:J

    .line 33
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_home_smartisan_environment

    invoke-static {p1}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->isCurrentDefaultHome(Landroid/content/Context;)Z

    move-result p1

    goto :goto_home_environment_checked

    :cond_home_smartisan_environment
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->ia(Landroid/content/Context;)Z

    move-result p1

    :goto_home_environment_checked
    const-string v0, "HOME_GATE_DEFAULT_HOME"

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGate(Ljava/lang/String;Z)V

    if-eqz p1, :cond_c

    sget-boolean p1, Lcom/smartisanos/launcher/a/oa;->kk:Z

    if-eqz p1, :cond_b

    if-eqz v7, :cond_home_uninstall_blocked

    const-string p1, "HOME_GATE_UNINSTALL_STATE_BYPASSED_STANDARD_HOME"

    invoke-static {p1}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGateEvent(Ljava/lang/String;)V

    goto :cond_b

    :cond_home_uninstall_blocked
    const-string p1, "HOME_GATE_UNINSTALL_STATE"

    invoke-static {p1}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGateEvent(Ljava/lang/String;)V

    goto :cond_c

    .line 34
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_b

    sget-object p1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "onNewIntent createScrollToLeftEvent"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 35
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logOriginalHomeAnimationRequested()V

    iput-boolean v2, p0, Lcom/smartisanos/launcher/J;->dg:Z

    .line 36
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/J;->lg:Lcom/smartisanos/smengine/n;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 37
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Ev()Lcom/smartisanos/smengine/n;

    move-result-object p0

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 39
    :cond_c
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_d

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "onNewIntent finish"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_d
    return-void

    .line 40
    :cond_home_from_background
    const-string v3, "HOME_FROM_BACKGROUND"

    invoke-static {v3}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGateEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_home_debounced
    const-string v3, "HOME_DEBOUNCED"

    invoke-static {v3}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGateEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    :goto_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_f

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent alreadyOnHome = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " quicklyPressHome = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mHasFocus = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logOriginalHomeNoOp()V

    return-void

    .line 41
    :cond_10
    :goto_2
    const-string p0, "HOME_GATE_WAITING_PAGE"

    invoke-static {p0}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGateEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->v(Lcom/smartisanos/launcher/view/b/M;)V

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->t(Lcom/smartisanos/launcher/view/b/M;)V

    .line 43
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_11

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent pageWait ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], pageConfirm ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_11
    return-void

    .line 44
    :cond_12
    :goto_3
    const-string p0, "HOME_GATE_PAGE_ANIMATION_RUNNING"

    invoke-static {p0}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeGateEvent(Ljava/lang/String;)V

    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_13

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "onNewIntent getHasAnimationPlaying is true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 3

    .line 81
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    .line 83
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_0

    .line 84
    invoke-static {p1, p2, v0}, Lcom/smartisanos/launcher/Qa;->a(Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 85
    invoke-static {p0}, Lcom/smartisanos/launcher/Qa;->setVisible(Z)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Tf()V

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Gaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/t;->Uf()Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/t;->Uf()Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/launcher/J;->a(ZLjava/lang/String;)V

    .line 12
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/X;->h(Lcom/smartisanos/launcher/theme/v;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p1, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    .line 14
    :cond_3
    new-instance p2, Lcom/smartisanos/launcher/f;

    const/16 v0, 0x64

    invoke-direct {p2, p0, v0, p1}, Lcom/smartisanos/launcher/f;-><init>(Lcom/smartisanos/launcher/J;ILcom/smartisanos/launcher/theme/v;)V

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ChangeThemeEvent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    const p0, 0x3d4ccccd    # 0.05f

    .line 16
    invoke-virtual {p2, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/B;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/launcher/B;-><init>(Lcom/smartisanos/launcher/J;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ab()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/smartisanos/launcher/J;->jg:J

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .line 30
    sget-boolean v0, Lcom/smartisanos/launcher/ja;->Bh:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/smartisanos/launcher/ja;->Bh:Z

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/N;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 34
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch language from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] to ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 35
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v0, 0x800000

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 36
    iget-boolean p1, p0, Lcom/smartisanos/launcher/J;->ag:Z

    if-nez p1, :cond_2

    .line 37
    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "launcher startup not finish, languageChanged abandon, force reload when handle MESSAGE_COMPLETE"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 38
    sput-boolean v1, Lcom/smartisanos/launcher/J;->Dg:Z

    return-void

    .line 39
    :cond_2
    new-instance p1, Lcom/smartisanos/launcher/E;

    const/16 v0, 0x64

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/E;-><init>(Lcom/smartisanos/launcher/J;I)V

    const/4 p0, 0x0

    .line 40
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public b(ZI)V
    .locals 1

    .line 21
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 22
    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "updateWindowAttributesFlag abandon by ENABLE_LARGE_SCREEN_MODE true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/A;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/launcher/A;-><init>(Lcom/smartisanos/launcher/J;ZI)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(ZLjava/lang/String;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 25
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show dialog ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/launcher/widget/c;->q(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/c;->show()V

    goto :goto_0

    .line 28
    :cond_2
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "Dismiss dialog by showDialog(false)"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 29
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/c;->dismiss()Z

    :goto_0
    return-void
.end method

.method public bb()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/D;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/D;-><init>(Lcom/smartisanos/launcher/J;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->Xa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x400

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/J;->b(ZI)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-ne p0, p1, :cond_1

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->Ka()V

    .line 13
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->dc()V

    return-void
.end method

.method public db()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "setDateChangeIntent"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_3

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->hg:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->hg:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 5
    iput-object v2, p0, Lcom/smartisanos/launcher/J;->hg:Landroid/app/PendingIntent;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->gg:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 7
    iput-object v2, p0, Lcom/smartisanos/launcher/J;->gg:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "smartisan.intent.action.update_calendar_date"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/J;->gg:Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->gg:Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "ttt"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartisanos/launcher/J;->gg:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/J;->hg:Landroid/app/PendingIntent;

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->xg()J

    move-result-wide v1

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->hg:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_3
    return-void
.end method

.method public eb()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 3
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 6
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.provision"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    .line 10
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    .line 11
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v4, "android.intent.category.DEFAULT"

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 13
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 15
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSetupWizardToDefaultHome homeActivities i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 16
    :cond_3
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 17
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    aput-object v6, v2, v1

    .line 19
    sget-object v7, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    iget-object v7, v7, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 20
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSetupWizardToDefaultHome setupWizardHomeName = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    move-object v4, v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_8

    .line 21
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSetupWizardToDefaultHome pm.addPreferredActivity. homeFilter = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    const/high16 v0, 0x100000

    .line 22
    invoke-virtual {p0, v3, v0, v2, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_8
    return-void
.end method

.method public fb()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->mRegistered:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->xg:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->Ag:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHour()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/J;->mHour:I

    return p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootView()Lcom/smartisanos/launcher/view/RootView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mRootView:Lcom/smartisanos/launcher/view/RootView;

    return-object p0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->mWindow:Landroid/view/Window;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->Sf:Landroid/view/WindowManager;

    return-object p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->ig:Lcom/smartisanos/launcher/view/Qa;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/view/Qa;

    iget-object v1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/Qa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->ig:Lcom/smartisanos/launcher/view/Qa;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->ig:Lcom/smartisanos/launcher/view/Qa;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Qa;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage begin, msg.what == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/16 v1, 0x11

    if-eq v0, v1, :cond_e

    const/16 v1, 0x12

    if-eq v0, v1, :cond_d

    const/4 p1, 0x0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->_f:Z

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Sa()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/d;

    const/16 v1, 0x65

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/d;-><init>(Lcom/smartisanos/launcher/J;I)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto/16 :goto_2

    .line 8
    :pswitch_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    goto/16 :goto_2

    .line 9
    :pswitch_2
    const-string v0, "LAUNCH_MODEL_READY"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/LauncherStartupDiagnostics;->mark(Ljava/lang/String;)V

    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "#### MESSAGE_COMPLETE #####"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->ag:Z

    .line 11
    sget-boolean v2, Lcom/smartisanos/launcher/J;->Dg:Z

    if-eqz v2, :cond_3

    .line 12
    sput-boolean v1, Lcom/smartisanos/launcher/J;->Dg:Z

    .line 13
    sput-boolean v0, Lcom/smartisanos/launcher/ja;->Bh:Z

    .line 14
    iget-object v2, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/J;->b(Landroid/content/Context;)V

    .line 15
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->r()V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/ja;->kb()V

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 18
    new-instance v2, Lcom/smartisanos/launcher/F;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/F;-><init>(Lcom/smartisanos/launcher/J;)V

    .line 19
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "#### loadAllApps #####"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    const-wide/16 v3, 0x2

    .line 20
    invoke-static {v2, v3, v4}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    const/16 v2, 0x400

    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/J;->b(ZI)V

    const-string v2, "LAUNCH_PAGE_READY"

    invoke-static {v2}, Lcom/smartisanos/launcher/diagnostics/LauncherStartupDiagnostics;->mark(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->Wa()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/ja;->m(Z)V

    .line 24
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 25
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launcher startup time ==> ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/smartisanos/launcher/J;->bg:J

    sub-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 26
    :cond_6
    # MESSAGE_COMPLETE is the original model-ready boundary.  Replay any
    # persisted package events only after this point, never from a guessed
    # Activity lifecycle callback.
    invoke-static {}, Lcom/smartisanos/launcher/install/SmartisanInstallManager;->onLauncherModelReady()V

    invoke-static {}, Lcom/smartisanos/launcher/quicksearch/SearchIndexRepository;->onLauncherModelReady()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/backup/RestoreIconSourceReconciler;->onLauncherModelReady(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.smartisanos.launcher.ready"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v2}, Lcom/smartisanos/launcher/J;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/H;->zq()V

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/launcher/data/M;->USER_SETUP_COMPLETE:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 30
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## wizard value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ###"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 31
    :cond_7
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v2, :cond_a

    if-eq v1, v0, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->eb()V

    .line 33
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 34
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    const-string v4, "com.smartisanos.setupwizard.SetupWizardActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartSetupWizard intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 39
    :cond_8
    new-instance v2, Lcom/smartisanos/launcher/G;

    invoke-direct {v2, p0, v1}, Lcom/smartisanos/launcher/G;-><init>(Lcom/smartisanos/launcher/J;Landroid/content/Intent;)V

    const-wide/16 v3, 0x14

    invoke-static {v2, v3, v4}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    .line 40
    new-instance v1, Lcom/smartisanos/launcher/a;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/a;-><init>(Lcom/smartisanos/launcher/J;)V

    .line 41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_9

    const-wide/16 v2, 0x320

    goto :goto_0

    :cond_9
    const-wide/16 v2, 0x320

    .line 42
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 43
    :cond_a
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 44
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->enableScreenAfterBoot(Landroid/app/ActivityManager;)V

    .line 45
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->vg()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 46
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Ig()V

    .line 47
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->v()V

    .line 48
    iget-object v1, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->fa(Landroid/content/Context;)V

    .line 49
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LauncherTime enableScreen_init2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/smartisanos/launcher/data/Constants;->time_application_start:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 50
    :cond_c
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->pg()V

    .line 51
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->Vf:Z

    .line 52
    new-instance v0, Lcom/smartisanos/launcher/b;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/b;-><init>(Lcom/smartisanos/launcher/J;I)V

    .line 53
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_2

    .line 54
    :cond_d
    invoke-static {p1}, Lcom/smartisanos/launcher/a/r;->a(Landroid/os/Message;)V

    goto :goto_2

    .line 55
    :cond_e
    invoke-static {p1}, Lcom/smartisanos/launcher/a/r;->b(Landroid/os/Message;)V

    goto :goto_2

    .line 56
    :cond_f
    invoke-static {p1}, Lcom/smartisanos/launcher/a/oa;->c(Landroid/os/Message;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseEventStatus set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/smartisanos/launcher/J;->fg:Z

    .line 3
    iget-boolean p0, p0, Lcom/smartisanos/launcher/J;->fg:Z

    if-nez p0, :cond_2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p0

    sget-object p1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 5
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "setPauseEventStatus handleTaskList !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->Ge()V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x14

    if-eq v0, p1, :cond_1

    const/16 v0, 0x15

    if-eq v0, p1, :cond_1

    const/16 v0, 0x16

    if-ne v0, p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    :try_start_0
    const-string v1, "SHOW_LAUNCHPAD"

    .line 3
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_2
    invoke-static {v0}, Lcom/smartisanos/launcher/Qa;->setVisible(Z)V

    :cond_3
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/smartisanos/launcher/m;

    invoke-direct {p3, p0, p2}, Lcom/smartisanos/launcher/m;-><init>(Lcom/smartisanos/launcher/J;I)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 7
    :pswitch_1
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/smartisanos/launcher/j;

    invoke-direct {p3, p0, p2}, Lcom/smartisanos/launcher/j;-><init>(Lcom/smartisanos/launcher/J;I)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 9
    :pswitch_2
    sget-boolean p3, Lcom/smartisanos/launcher/va;->DBG:Z

    const/4 v0, -0x1

    if-eqz p3, :cond_4

    sget-object p3, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult REQUEST_CODE_LOCK_PASSWORD requestCode == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Activity.RESULT_OK ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] resultCode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    if-ne v0, p2, :cond_5

    .line 10
    new-instance p1, Lcom/smartisanos/launcher/g;

    const/16 p2, 0x64

    invoke-direct {p1, p0, p2}, Lcom/smartisanos/launcher/g;-><init>(Lcom/smartisanos/launcher/J;I)V

    const/4 p0, 0x0

    .line 11
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/J;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/J;->Wf:Z

    .line 2
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->ng:Z

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->fb()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Kv()V

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "UnlockAnim,#### onPause begin ####"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->sh()V

    .line 9
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->ai()V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {v1}, Lcom/smartisanos/launcher/d/h;->dismiss(Z)V

    .line 12
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Na()Lcom/smartisanos/launcher/view/Qa;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Na()Lcom/smartisanos/launcher/view/Qa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Qa;->dismiss()V

    .line 14
    :cond_3
    sget-object v0, Lcom/smartisanos/launcher/a/J;->Jj:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 16
    :cond_4
    sget-object v0, Lcom/smartisanos/launcher/view/Qb;->Fj:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 18
    :cond_5
    sput-boolean v1, Lcom/smartisanos/launcher/a/oa;->kk:Z

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->fd()V

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_6

    .line 21
    sget-object v0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    sget-object v0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 23
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Ya()V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->vg()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/J;->Va()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/J;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/J;->a(ZLjava/lang/String;)V

    .line 29
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->lg:Lcom/smartisanos/smengine/n;

    const v0, 0x3ca3d70a    # 0.02f

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->mPaused:Z

    .line 31
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "#### onPause #### done"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "#### onResume begin #####"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->_a()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Jv()V

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/J;->mTime:Ljava/util/Calendar;

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/J;->Lv()V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/J;->mHour:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ra;->pc(I)V

    .line 7
    iget-boolean v0, p0, Lcom/smartisanos/launcher/J;->Vf:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/smartisanos/launcher/a/oa;->kk:Z

    .line 10
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->NEED_REBOOT:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    if-eq v2, v3, :cond_2

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/ua;->dc()V

    return-void

    .line 12
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 14
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnlockAnim, onResume begin mUnlockAnimationHasInit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/r;->Kd()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_3
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Wf:Z

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/t;->bg()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->showDialogForThemeUninstalled:Z

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v0

    .line 19
    :goto_0
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->showDialogForThemeUninstalled:Z

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->Na()Lcom/smartisanos/launcher/view/Qa;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->Na()Lcom/smartisanos/launcher/view/Qa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Qa;->dismiss()V

    .line 23
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    iget-boolean v3, v3, Lcom/smartisanos/launcher/J;->Xf:Z

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    iput-boolean v0, v3, Lcom/smartisanos/launcher/J;->Xf:Z

    .line 25
    new-instance v3, Lcom/smartisanos/launcher/t;

    invoke-direct {v3, p0, v4}, Lcom/smartisanos/launcher/t;-><init>(Lcom/smartisanos/launcher/J;I)V

    .line 26
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 27
    :cond_6
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHasStartSetupWizard ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v7

    iget-boolean v7, v7, Lcom/smartisanos/launcher/J;->Yf:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 28
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    iget-boolean v3, v3, Lcom/smartisanos/launcher/J;->Yf:Z

    if-eqz v3, :cond_8

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    iput-boolean v0, v3, Lcom/smartisanos/launcher/J;->Yf:Z

    .line 30
    new-instance v3, Lcom/smartisanos/launcher/u;

    invoke-direct {v3, p0, v4}, Lcom/smartisanos/launcher/u;-><init>(Lcom/smartisanos/launcher/J;I)V

    const v6, 0x3dcccccd    # 0.1f

    .line 31
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_1

    .line 32
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Zh()V

    .line 33
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->rc()Z

    move-result v3

    const/16 v6, 0x2000

    if-nez v3, :cond_a

    if-eqz v2, :cond_9

    goto :goto_2

    .line 34
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 35
    new-instance v3, Lcom/smartisanos/launcher/w;

    invoke-direct {v3, p0, v4}, Lcom/smartisanos/launcher/w;-><init>(Lcom/smartisanos/launcher/J;I)V

    .line 36
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_4

    .line 37
    :cond_a
    :goto_2
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDirtyMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/Aa;->rc()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", shouldDoChangeThemeAnim = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 38
    :cond_b
    new-instance v3, Lcom/smartisanos/launcher/v;

    invoke-direct {v3, p0, v4, v2}, Lcom/smartisanos/launcher/v;-><init>(Lcom/smartisanos/launcher/J;IZ)V

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dirtyModeEvent "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v4

    if-eqz v4, :cond_c

    const v4, 0x3f4ccccd    # 0.8f

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    goto :goto_3

    :cond_c
    move v4, v5

    .line 43
    :goto_3
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 44
    :cond_d
    :goto_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->onResume()V

    .line 45
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LAUNCH_FLIP_ANIMATION:Z

    if-eqz v3, :cond_e

    .line 46
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->Ma()V

    goto :goto_5

    .line 47
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->bb()V

    :goto_5
    if-eqz v2, :cond_f

    .line 48
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v3

    if-nez v3, :cond_11

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/theme/t;->Yf()V

    .line 50
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v4

    sget v6, Lcom/smartisanos/launcher/ob;->theme_changing:I

    .line 51
    invoke-static {v6}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-virtual {v3, v4, v6}, Lcom/smartisanos/launcher/J;->a(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_6

    .line 53
    :cond_f
    sget-object v3, Lcom/smartisanos/launcher/a/r;->sj:Landroid/os/Message;

    if-eqz v3, :cond_11

    .line 54
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_10

    sget-object v3, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "changeThemeMessage begin from onResume "

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 55
    :cond_10
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/a/r;->sj:Landroid/os/Message;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v3

    .line 57
    sget-object v4, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 58
    :cond_11
    :goto_6
    sget-boolean v3, Lcom/smartisanos/launcher/ja;->Bh:Z

    if-eqz v3, :cond_12

    .line 59
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/J;->b(Landroid/content/Context;)V

    .line 60
    :cond_12
    iget-object v3, p0, Lcom/smartisanos/launcher/J;->lg:Lcom/smartisanos/smengine/n;

    if-eqz v3, :cond_13

    .line 61
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/J;->lg:Lcom/smartisanos/smengine/n;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    :cond_13
    if-nez v2, :cond_14

    .line 62
    iget-object v3, p0, Lcom/smartisanos/launcher/J;->mg:Lcom/smartisanos/smengine/n;

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 63
    :cond_14
    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->dg:Z

    .line 64
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    iput-boolean v0, v3, Lcom/smartisanos/launcher/J;->mPaused:Z

    if-nez v2, :cond_15

    .line 65
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/J;->H(I)V

    .line 66
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/J;->H(I)V

    .line 67
    :cond_15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Hh()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 68
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/Da;->sc()V

    .line 69
    :cond_16
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/ja;->Hg:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_19

    .line 70
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### launcher resume send flip event."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 71
    :cond_17
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_18

    .line 72
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/ja;->Hg:Lcom/smartisanos/smengine/n;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_7

    .line 73
    :cond_18
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/ja;->Hg:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 74
    :goto_7
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/ja;->Hg:Lcom/smartisanos/smengine/n;

    .line 75
    :cond_19
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->mb()V

    .line 76
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 77
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 78
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnlockAnim, onResume Done mUnlockAnimationHasInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/r;->Kd()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 81
    :cond_1a
    new-instance v0, Lcom/smartisanos/launcher/x;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/x;-><init>(Lcom/smartisanos/launcher/J;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    .line 82
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "#### onResume Done #####"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    sget-object v2, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v3, v2, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/S;->Fr:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iput-boolean p1, v0, Lcom/smartisanos/launcher/J;->Oa:Z

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/J;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/v;->rh()Z

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/y;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/y;-><init>(Lcom/smartisanos/launcher/J;I)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_0

    .line 6
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->NEED_REBOOT:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ua;->dc()V

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    iget-object v0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/N;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    sget v1, Lcom/smartisanos/launcher/ob;->not_correct_theme:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 11
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0, v3}, Lcom/smartisanos/launcher/Bb;->h(Ljava/lang/String;I)V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mContext:Landroid/content/Context;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/N;->h(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    iget-boolean p0, p0, Lcom/smartisanos/launcher/J;->mPaused:Z

    if-eqz p0, :cond_4

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->onPause()V

    :cond_4
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1, p2, v0}, Lcom/smartisanos/launcher/Qa;->a(Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Lcom/smartisanos/launcher/Qa;->setVisible(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
