.class final Lsmartisan/widget/BarsHelper$2;
.super Ljava/lang/Object;
.source "BarsHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/BarsHelper;->setBarIconScaleTouchListener(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mEndScale:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private playBarIconScaleAnim(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const p2, 0x3faa3d71    # 1.33f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1
    :goto_0
    iget v0, p0, Lsmartisan/widget/BarsHelper$2;->mEndScale:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iput p2, p0, Lsmartisan/widget/BarsHelper$2;->mEndScale:F

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    const-wide/16 v0, 0xc8

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lsmartisan/widget/BarsHelper$2;->playBarIconScaleAnim(Landroid/view/View;Z)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/BarsHelper$2;->playBarIconScaleAnim(Landroid/view/View;Z)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1, v1}, Lsmartisan/widget/BarsHelper$2;->playBarIconScaleAnim(Landroid/view/View;Z)V

    :goto_0
    return v0
.end method
