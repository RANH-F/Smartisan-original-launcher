.class public Lcom/smartisanos/launcher/view/RootView;
.super Landroid/widget/RelativeLayout;
.source "RootView.java"


# static fields
.field public static volatile Gd:Z

.field public static volatile Hd:Z

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Ad:F

.field private Bd:[F

.field private Cd:[F

.field private DELTA:F

.field private Dd:[F

.field private Ed:Z

.field private Fd:Z

.field private mMaximumVelocity:I

.field private mStartX:[F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private td:F

.field private ud:F

.field private vd:F

.field private wd:F

.field private xd:Z

.field private yd:Z

.field private zd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/RootView;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/view/RootView;->Gd:Z

    .line 3
    sput-boolean v0, Lcom/smartisanos/launcher/view/RootView;->Hd:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/smartisanos/launcher/view/RootView;->td:F

    .line 3
    iput p2, p0, Lcom/smartisanos/launcher/view/RootView;->ud:F

    const/high16 p2, -0x40800000    # -1.0f

    .line 4
    iput p2, p0, Lcom/smartisanos/launcher/view/RootView;->vd:F

    .line 5
    iput p2, p0, Lcom/smartisanos/launcher/view/RootView;->wd:F

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/RootView;->xd:Z

    .line 7
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/RootView;->yd:Z

    .line 8
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/RootView;->zd:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->mMaximumVelocity:I

    const/16 v0, 0xa

    new-array v1, v0, [F

    .line 12
    iput-object v1, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    new-array v1, v0, [F

    .line 13
    iput-object v1, p0, Lcom/smartisanos/launcher/view/RootView;->Cd:[F

    new-array v1, v0, [F

    .line 14
    iput-object v1, p0, Lcom/smartisanos/launcher/view/RootView;->mStartX:[F

    new-array v0, v0, [F

    .line 15
    iput-object v0, p0, Lcom/smartisanos/launcher/view/RootView;->Dd:[F

    const v0, 0x38d1b717    # 1.0E-4f

    .line 16
    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->DELTA:F

    .line 17
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/RootView;->Ed:Z

    .line 18
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/RootView;->Fd:Z

    .line 19
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private a(FLandroid/view/MotionEvent;)V
    .locals 6

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    div-float v1, p1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    .line 5
    iget v0, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    .line 6
    iput v1, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 7
    iput v3, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iget v2, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/gesture/QuickDesktopGestureDiagnostics;->onProgress(FZ)V

    invoke-static {v2, p2}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->onProgress(FLandroid/view/MotionEvent;)V

    .line 8
    iget v2, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    cmpl-float v4, v2, v1

    const/4 v5, 0x1

    if-lez v4, :cond_7

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 9
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocation deltaX "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mAndroidViewScrollProgress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v5, :cond_7

    .line 11
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/RootView;->Ed:Z

    if-eqz p1, :cond_4

    .line 12
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "updateLocation isRequestShowMagicFlowed"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 13
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->Ta()Z

    move-result p1

    if-nez p1, :cond_6

    .line 14
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "updateLocation isCanShowMagicFlow false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 15
    :cond_6
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sLeftScreenEnabled:Z

    if-eqz p1, :cond_7

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/e/e;->ng()V

    .line 17
    iput-boolean v5, p0, Lcom/smartisanos/launcher/view/RootView;->Ed:Z

    move v0, v5

    .line 18
    :cond_7
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_8

    sget-object p1, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAndroidViewScrollProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " callLeftScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    if-nez v0, :cond_9

    .line 19
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/RootView;->j(Landroid/view/MotionEvent;)V

    :cond_9
    return-void
.end method

.method private e(Landroid/view/MotionEvent;)F
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/high16 v1, 0x800000

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 4
    iget-object v6, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    aget v4, v6, v4

    sub-float/2addr v5, v4

    cmpg-float v4, v1, v5

    if-gez v4, :cond_0

    move v1, v5

    :cond_0
    cmpl-float v4, v2, v5

    if-lez v4, :cond_1

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    cmpl-float p1, v1, p0

    if-lez p1, :cond_3

    cmpl-float p1, v2, p0

    if-lez p1, :cond_3

    return v1

    :cond_3
    cmpg-float p1, v1, p0

    if-gez p1, :cond_4

    cmpg-float p0, v2, p0

    if-gez p0, :cond_4

    return v2

    :cond_4
    add-float/2addr v1, v2

    return v1
.end method

.method private f(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 5
    iget-object v6, p0, Lcom/smartisanos/launcher/view/RootView;->mStartX:[F

    aget v6, v6, v3

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 6
    iget-object v6, p0, Lcom/smartisanos/launcher/view/RootView;->Dd:[F

    aget v3, v6, v3

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 7
    sget v5, Lcom/smartisanos/launcher/data/Constants;->TOUCH_SLOP:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v5

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private g(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    if-nez v1, :cond_0

    .line 3
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 5
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    array-length v5, v4

    if-gt v5, v3, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 8
    new-array v6, v5, [F

    .line 9
    array-length v7, v4

    invoke-static {v4, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    new-array v4, v5, [F

    iput-object v4, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    .line 11
    iget-object v4, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    array-length v5, v6

    invoke-static {v6, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    aput v5, v4, v3

    .line 13
    iget-object v4, p0, Lcom/smartisanos/launcher/view/RootView;->Cd:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v3

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 16
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    const/4 v5, 0x0

    aput v5, v4, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private h(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->mStartX:[F

    array-length v3, v2

    const/4 v4, 0x0

    if-gt v3, v1, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v5, v3, [F

    .line 5
    array-length v6, v2

    invoke-static {v2, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->mStartX:[F

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->mStartX:[F

    array-length v3, v5

    invoke-static {v5, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->mStartX:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->Dd:[F

    array-length v3, v2

    if-gt v3, v1, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 10
    new-array v5, v3, [F

    .line 11
    array-length v6, v2

    invoke-static {v2, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->Dd:[F

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->Dd:[F

    array-length v3, v5

    invoke-static {v5, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->Dd:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    aput v0, v2, v1

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_3

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    array-length v5, v3

    if-gt v5, v2, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 18
    new-array v5, v2, [F

    .line 19
    array-length v6, v3

    invoke-static {v3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    .line 21
    iget-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->Bd:[F

    array-length v3, v5

    invoke-static {v5, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_5

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 23
    iget-object v3, p0, Lcom/smartisanos/launcher/view/RootView;->Cd:[F

    array-length v5, v3

    if-gt v5, v2, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 24
    new-array v5, v2, [F

    .line 25
    array-length v6, v3

    invoke-static {v3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->Cd:[F

    .line 27
    iget-object v2, p0, Lcom/smartisanos/launcher/view/RootView;->Cd:[F

    array-length v3, v5

    invoke-static {v5, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private i(Landroid/view/MotionEvent;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/RootView;->yd:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/RootView;->xd:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "sendTouchCancelToGL"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v9, 0x0

    const/4 v6, 0x3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/v;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/RootView;->yd:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/RootView;->xd:Z

    .line 11
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/RootView;->zd:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/RootView;->mMaximumVelocity:I

    return-void
.end method

.method private j(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/RootView;->zd:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object p0

    const/4 v1, 0x3

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/smartisanos/smengine/v;->a(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/v;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_0
    return-void
.end method

.method private k(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/RootView;->vd:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/smartisanos/launcher/view/RootView;->wd:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/smartisanos/launcher/view/RootView;->vd:F

    sub-float/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/smartisanos/launcher/view/RootView;->wd:F

    sub-float/2addr p1, v1

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    const/4 v0, 0x1

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-nez p1, :cond_3

    .line 5
    iget p1, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    invoke-virtual {p0, p1, v2}, Lcom/smartisanos/launcher/view/RootView;->a(FI)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    return v2
.end method


# virtual methods
.method public U()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/RootView;->wd:F

    return p0
.end method

.method public a(FI)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    sub-float/2addr p1, p2

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/RootView;->DELTA:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    if-ne p2, v1, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/view/RootView;->DELTA:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_2

    return v1

    :cond_2
    return v0

    .line 3
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "### Wrong target, target = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {p1}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :quick_desktop_key_not_handled

    const/4 v0, 0x1

    return v0

    :quick_desktop_key_not_handled

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Qh()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Oa()Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lcom/smartisanos/smengine/v;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 9
    :cond_1
    iget v0, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Oa()Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1, p1}, Lcom/smartisanos/smengine/v;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 14
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 15
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    const v0, 0x1000010

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    return v1

    :cond_0
    const/16 v0, 0x2002

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/eb;->hide()V

    const/16 v0, 0x9

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 8
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/view/uc;

    const/16 v3, 0x64

    invoke-direct {v0, p0, v3, v1}, Lcom/smartisanos/launcher/view/uc;-><init>(Lcom/smartisanos/launcher/view/RootView;IZ)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 10
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->k(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->vd:F

    .line 7
    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->wd:F

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->vd:F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->wd:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->td:F

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/RootView;->xd:Z

    .line 12
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/RootView;->yd:Z

    .line 13
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/RootView;->zd:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->k(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 15
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/smengine/v;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return v2

    .line 3
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    sget-boolean v3, Lcom/smartisanos/launcher/e/e;->uu:Z

    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sLeftScreenEnabled:Z

    invoke-static {p1, v0, v3, v4}, Lcom/smartisanos/launcher/gesture/QuickDesktopGestureDiagnostics;->onTouch(Landroid/view/MotionEvent;FZZ)V

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->onTouch(Landroid/view/MotionEvent;F)V

    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 11
    sget-boolean v4, Lcom/smartisanos/launcher/e/e;->uu:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v2, :cond_3

    .line 12
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->i(Landroid/view/MotionEvent;)V

    return v2

    :cond_3
    const/4 v4, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_9

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_9

    const/4 v5, 0x5

    if-eq v0, v5, :cond_b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 13
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->j(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 14
    :cond_4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->e(Landroid/view/MotionEvent;)F

    move-result v0

    .line 15
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->f(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 16
    sget-boolean v5, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v5, :cond_5

    .line 17
    sget-object v5, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deltaX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 18
    :cond_5
    sget-boolean v5, Lcom/smartisanos/launcher/view/RootView;->Gd:Z

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    .line 19
    sget-boolean v1, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v1, :cond_6

    .line 20
    sget-object v1, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch2 cancel deltaX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 21
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/view/RootView;->a(FLandroid/view/MotionEvent;)V

    .line 22
    sput-boolean v4, Lcom/smartisanos/launcher/view/RootView;->Gd:Z

    goto :goto_0

    .line 23
    :cond_7
    sget-boolean v1, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v1, :cond_8

    .line 24
    sget-object v1, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2 onTouch2 deltaX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 25
    :cond_8
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->j(Landroid/view/MotionEvent;)V

    .line 26
    :goto_0
    iput v3, p0, Lcom/smartisanos/launcher/view/RootView;->td:F

    goto :goto_1

    .line 27
    :cond_9
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_a

    .line 28
    sget-object v0, Lcom/smartisanos/launcher/view/RootView;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action up, result =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    .line 30
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->j(Landroid/view/MotionEvent;)V

    .line 31
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/RootView;->Ed:Z

    .line 32
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/RootView;->Fd:Z

    .line 33
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/RootView;->xd:Z

    .line 34
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/RootView;->yd:Z

    .line 35
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/RootView;->zd:Z

    .line 36
    sput-boolean v4, Lcom/smartisanos/launcher/view/RootView;->Gd:Z

    .line 37
    sput-boolean v4, Lcom/smartisanos/launcher/view/RootView;->Hd:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 38
    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->vd:F

    .line 39
    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->wd:F

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/smartisanos/launcher/view/RootView;->td:F

    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 42
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 43
    iget-object v0, p0, Lcom/smartisanos/launcher/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 44
    iput-object v1, p0, Lcom/smartisanos/launcher/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 45
    :cond_b
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->h(Landroid/view/MotionEvent;)V

    .line 46
    iget v0, p0, Lcom/smartisanos/launcher/view/RootView;->Ad:F

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/view/RootView;->a(FI)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/v;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 48
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/RootView;->xd:Z

    .line 49
    :cond_c
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/RootView;->Ed:Z

    .line 50
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/RootView;->Fd:Z

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v1, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 52
    sput-boolean v4, Lcom/smartisanos/launcher/view/RootView;->Hd:Z

    .line 53
    :cond_d
    :goto_1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->g(Landroid/view/MotionEvent;)V

    return v2
.end method
