.class public Lcom/smartisanos/magicflow/h/d;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/h/d$a;
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final B:Z

.field public static final C:Z

.field public static final D:Z

.field public static final E:Ljava/lang/String;

.field public static F:F

.field public static G:Ljava/lang/String;

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I

.field public static M:I

.field public static volatile N:Z

.field public static O:I

.field public static P:Z

.field public static Q:Z

.field public static R:I

.field public static S:Z

.field public static T:I

.field public static U:Z

.field private static final a:Lcom/smartisanos/magicflow/LOG;

.field public static b:I

.field public static c:Z

.field public static d:Z

.field public static e:J

.field public static final f:I

.field public static final g:Ljava/util/concurrent/ExecutorService;

.field public static h:Ljava/lang/String;

.field public static i:J

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Ljava/lang/String;

.field public static n:Z

.field private static o:Z

.field private static p:Z

.field private static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/d;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->d:Z

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Lcom/smartisanos/magicflow/h/d;->f:I

    .line 4
    sget v1, Lcom/smartisanos/magicflow/h/d;->f:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/magicflow/h/d;->g:Ljava/util/concurrent/ExecutorService;

    .line 5
    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->j:Z

    .line 6
    sput-boolean v2, Lcom/smartisanos/magicflow/h/d;->k:Z

    .line 7
    sput-boolean v2, Lcom/smartisanos/magicflow/h/d;->l:Z

    const-string v1, "com.android.systemui/com.android.systemui.recents.RecentsActivity"

    .line 8
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    const-string v1, "com.android.recentspsp/com.android.recentspsp.RecentsPspActivity2"

    .line 9
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    const-string v1, "com.android.phone/com.android.phone.EmergencyDialer"

    const-string v3, "com.smartisanos.sara/com.smartisanos.sara.bubble.BubbleActivity"

    const-string v4, "com.android.gallery3d/com.android.gallery3d.photoeditor.PhotoEditor3"

    const-string v5, "com.android.incallui/com.android.incallui.InCallScreen"

    const-string v6, "com.smartisanos.launcher/com.smartisanos.launcher.ConfirmPasswordActivity"

    .line 10
    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/magicflow/h/d;->q:Ljava/util/List;

    const-string v3, "com.smartisanos.backup"

    const-string v4, "com.android.launcher3"

    const-string v5, "com.smartisanos.awemeplugin"

    const-string v6, "com.android.systemui"

    const-string v7, "com.android.recentspsp"

    const-string v8, "com.smartisanos.magicflow"

    .line 11
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/magicflow/h/d;->r:Ljava/util/List;

    const/high16 v1, -0x1000000

    .line 12
    sput v1, Lcom/smartisanos/magicflow/h/d;->v:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_0

    sput-object v1, Lcom/smartisanos/magicflow/h/d;->A:[I

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-le v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/smartisanos/magicflow/h/d;->B:Z

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    sput-boolean v1, Lcom/smartisanos/magicflow/h/d;->C:Z

    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    sput-boolean v1, Lcom/smartisanos/magicflow/h/d;->D:Z

    .line 17
    sget-boolean v1, Lcom/smartisanos/magicflow/h/d;->B:Z

    if-eqz v1, :cond_3

    const-string v1, "com.android.server.telecom"

    goto :goto_3

    :cond_3
    const-string v1, "com.android.phone"

    :goto_3
    sput-object v1, Lcom/smartisanos/magicflow/h/d;->E:Ljava/lang/String;

    .line 18
    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->N:Z

    .line 19
    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->P:Z

    .line 20
    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->Q:Z

    .line 21
    sput v2, Lcom/smartisanos/magicflow/h/d;->R:I

    .line 22
    sput-boolean v2, Lcom/smartisanos/magicflow/h/d;->S:Z

    const/4 v0, -0x1

    .line 23
    sput v0, Lcom/smartisanos/magicflow/h/d;->T:I

    return-void

    :array_0
    .array-data 4
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 4

    const-string v0, "key_user_agreed"

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/smartisanos/magicflow/h/d;->D:Z

    if-nez v1, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "removeSPUserAgreedData return by UNDERANDROID90 false"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    sget v1, Lcom/smartisanos/magicflow/h/d;->R:I

    const v3, 0x7a39d8

    if-lt v1, v3, :cond_1

    .line 5
    sput v2, Lcom/smartisanos/magicflow/h/d;->T:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/t;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 7
    :cond_2
    sput v2, Lcom/smartisanos/magicflow/h/d;->T:I

    .line 8
    :goto_0
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSPUserAgreedData sUserAgreedState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/smartisanos/magicflow/h/d;->T:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 9
    sget v1, Lcom/smartisanos/magicflow/h/d;->T:I

    invoke-static {v1}, Lcom/smartisanos/magicflow/h/v;->b(I)V

    .line 10
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/t;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    sput p1, Lcom/smartisanos/magicflow/h/d;->T:I

    :goto_1
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 13
    sput-boolean p0, Lcom/smartisanos/magicflow/h/d;->p:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->p:Z

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 21
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/smartisanos/magicflow/h/d;->r:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Landroid/content/Context;)[I
    .locals 7

    const-string v0, "window"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 16
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const/4 p0, 0x2

    new-array v1, p0, [I

    .line 19
    iget v2, v0, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aput v0, v1, v4

    .line 20
    aget v5, v1, v3

    aget v6, v1, v4

    if-le v5, v6, :cond_0

    new-array v1, p0, [I

    aput v0, v1, v3

    aput v2, v1, v4

    :cond_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->j(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/smartisanos/magicflow/h/d;->R:I

    .line 2
    invoke-static {p0}, Lcom/smartisanos/magicflow/a;->e(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->c:Z

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->d()I

    move-result v0

    sput v0, Lcom/smartisanos/magicflow/h/d;->T:I

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUserAgreedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/smartisanos/magicflow/h/d;->T:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 5
    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 6
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->D:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0, v2}, Lcom/smartisanos/magicflow/h/d;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    const-string v3, "test_db"

    .line 9
    iput-object v3, v0, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    .line 10
    iput v1, v0, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/n;->a(Landroid/content/ContentValues;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 12
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/d;->d(Landroid/content/Context;)V

    .line 13
    invoke-static {v3}, Lcom/smartisanos/magicflow/h/z/n;->a(Ljava/lang/String;)Z

    .line 14
    :cond_1
    :goto_0
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init sLeftScreenOpened="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/smartisanos/magicflow/h/d;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",sUserAgreedState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/smartisanos/magicflow/h/d;->T:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/d;->a(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 16
    aget v4, v0, v3

    sput v4, Lcom/smartisanos/magicflow/h/d;->H:I

    .line 17
    aget v0, v0, v1

    sput v0, Lcom/smartisanos/magicflow/h/d;->I:I

    .line 18
    sput v3, Lcom/smartisanos/magicflow/h/d;->L:I

    .line 19
    sget v0, Lcom/smartisanos/magicflow/h/d;->H:I

    neg-int v0, v0

    sput v0, Lcom/smartisanos/magicflow/h/d;->K:I

    .line 20
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init window size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/smartisanos/magicflow/h/d;->H:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/smartisanos/magicflow/h/d;->I:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 22
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    sput v0, Lcom/smartisanos/magicflow/h/d;->J:I

    const-string v0, "status_bar_height"

    const-string v4, "dimen"

    .line 23
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sput v4, Lcom/smartisanos/magicflow/h/d;->M:I

    .line 25
    sget-boolean v4, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v4, :cond_2

    .line 26
    sget-object v4, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATUS_BAR_HEIGHT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/smartisanos/magicflow/h/d;->M:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " statusBarHeightResourcesId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 27
    :cond_2
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->i()Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->P:Z

    .line 28
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->P:Z

    if-eqz v0, :cond_3

    .line 29
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->s(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->N:Z

    .line 30
    :cond_3
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/d;->e(Landroid/content/Context;)V

    const-string v0, "com.eg.android.AlipayGphone"

    .line 31
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->n:Z

    const-string v0, "com.taobao.taobao"

    .line 32
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->o:Z

    const-string v0, "com.jingdong.app.mall"

    .line 33
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->p:Z

    .line 34
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/t;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/d;->h:Ljava/lang/String;

    .line 35
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/t;->b(Landroid/content/Context;)J

    move-result-wide v4

    sput-wide v4, Lcom/smartisanos/magicflow/h/d;->i:J

    .line 36
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/d;->x:Ljava/lang/String;

    .line 38
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/d;->y:Ljava/lang/String;

    .line 39
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/d;->z:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f060151

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/smartisanos/magicflow/h/d;->u:I

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 42
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    sput v4, Lcom/smartisanos/magicflow/h/d;->F:F

    .line 43
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/d;->G:Ljava/lang/String;

    .line 44
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->k(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->S:Z

    .line 45
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->n(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->j:Z

    .line 46
    invoke-static {}, Lcom/smartisanos/magicflow/h/p;->b()Lcom/smartisanos/magicflow/h/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/h/p;->a(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/d;->c(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/j;->k(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->h()Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->k:Z

    .line 50
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init sHasGlobalLeftScreenFeature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/smartisanos/magicflow/h/d;->k:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 51
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->k:Z

    if-eqz v0, :cond_8

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sm_global_launcher_left_screen_state"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 53
    sget v5, Lcom/smartisanos/magicflow/h/d;->R:I

    const v6, 0xc44aa

    const/4 v7, 0x2

    if-lt v5, v6, :cond_5

    .line 54
    sput-boolean v3, Lcom/smartisanos/magicflow/h/d;->k:Z

    .line 55
    sput-boolean v3, Lcom/smartisanos/magicflow/h/d;->l:Z

    if-ne v0, v2, :cond_7

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    if-ne v0, v7, :cond_6

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    :cond_6
    invoke-static {p0}, Lcom/smartisanos/magicflow/a;->d(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->l:Z

    .line 59
    :cond_7
    :goto_2
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init sGlobalLeftScreenOpened="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/smartisanos/magicflow/h/d;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 60
    :cond_8
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->l(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/smartisanos/magicflow/h/d;->U:Z

    .line 61
    sget-object p0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init sHasFullScanFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/smartisanos/magicflow/h/d;->U:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .locals 0

    .line 62
    sput-boolean p0, Lcom/smartisanos/magicflow/h/d;->o:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->o:Z

    return v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.smartisanos.magicflow"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 3
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput p0, Lcom/smartisanos/magicflow/h/d;->b:I

    .line 4
    sget-object p0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initUID UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/smartisanos/magicflow/h/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->d()I

    move-result v0

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    sget-boolean v1, Lcom/smartisanos/magicflow/h/d;->D:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/d;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 5
    sput v0, Lcom/smartisanos/magicflow/h/d;->T:I

    .line 6
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->b(I)V

    const-string v0, "key_user_agreed"

    .line 7
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/t;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sput v0, Lcom/smartisanos/magicflow/h/d;->T:I

    .line 9
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->b(I)V

    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavigationBarHeight mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v1, "dimen"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4
    :try_start_1
    sput-boolean v2, Lcom/smartisanos/magicflow/h/d;->Q:Z

    const-string v0, "navigation_bar_height"

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sput p0, Lcom/smartisanos/magicflow/h/d;->O:I

    goto :goto_0

    .line 7
    :cond_1
    sget-object v3, Lsmartisanos/util/DeviceType;->OSBORN:Lsmartisanos/util/DeviceType;

    invoke-static {v3}, Lsmartisanos/util/DeviceType;->is(Lsmartisanos/util/DeviceType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spacial_nav_bar_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 9
    sget-boolean v4, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v4, :cond_2

    .line 10
    sget-object v4, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNavigationBarHeight naviSpacialMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    if-ne v3, v4, :cond_3

    .line 11
    sput-boolean v4, Lcom/smartisanos/magicflow/h/d;->Q:Z

    const-string v0, "special_navigation_bar_height"

    .line 12
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v0, "navigation_bar_round_corner_height"

    .line 13
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sub-int/2addr v1, p0

    sput v1, Lcom/smartisanos/magicflow/h/d;->O:I

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    if-nez v3, :cond_4

    .line 18
    sput-boolean v4, Lcom/smartisanos/magicflow/h/d;->Q:Z

    .line 19
    sput v2, Lcom/smartisanos/magicflow/h/d;->O:I

    .line 20
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_5

    .line 21
    sget-object p0, Lcom/smartisanos/magicflow/h/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNavigationBarHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/smartisanos/magicflow/h/d;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " navigationBarHeightResourcesId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/t;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/d;->h:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/t;->b(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/smartisanos/magicflow/h/d;->i:J

    .line 4
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/d;->d(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/h/p;->b()Lcom/smartisanos/magicflow/h/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/h/p;->a(Landroid/content/Context;)V

    return-void
.end method
