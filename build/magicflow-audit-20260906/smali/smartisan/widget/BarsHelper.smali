.class public Lsmartisan/widget/BarsHelper;
.super Ljava/lang/Object;
.source "BarsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/BarsHelper$BarShadowBuilder;,
        Lsmartisan/widget/BarsHelper$TabBuilder;,
        Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    }
.end annotation


# static fields
.field private static final BAR_ICON_SCALE_DURATION:I = 0xc8

.field private static final BAR_ICON_SCALE_NORMAL:F = 1.0f

.field private static final BAR_ICON_SCALE_PRESSED:F = 1.33f

.field public static final EXTRA_BACK_BTN_RES_ID:Ljava/lang/String; = "back_text_id"

.field public static final EXTRA_BACK_BTN_RES_NAME:Ljava/lang/String; = "back_text_res_name"

.field public static final EXTRA_BACK_BTN_TEXT:Ljava/lang/String; = "back_text"

.field public static final EXTRA_TITLE_TEXT:Ljava/lang/String; = "title"

.field public static final EXTRA_TITLE_TEXT_ID:Ljava/lang/String; = "title_id"

.field public static final SHADOW_BOTTOM_TYPE:I = 0x0

.field public static final SHADOW_TOP_TYPE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShadowBuilder(Landroid/content/Context;)Lsmartisan/widget/BarsHelper$BarShadowBuilder;
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;-><init>(Landroid/content/Context;Lsmartisan/widget/BarsHelper$1;)V

    return-object v0
.end method

.method public static createSpinnerViewBuilder(Landroid/content/Context;)Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;-><init>(Landroid/content/Context;Lsmartisan/widget/BarsHelper$1;)V

    return-object v0
.end method

.method public static createTabBuilder(Landroid/content/Context;Lsmartisan/widget/TitleBar;)Lsmartisan/widget/BarsHelper$TabBuilder;
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/BarsHelper$TabBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lsmartisan/widget/BarsHelper$TabBuilder;-><init>(Landroid/content/Context;Lsmartisan/widget/TitleBar;Lsmartisan/widget/BarsHelper$1;)V

    return-object v0
.end method

.method public static prepareNavigationBarStatusChangeAnim(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lsmartisan/widget/R$dimen;->bar_and_bottom_sheet_extra_space:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    int-to-float v0, v0

    aput v0, v2, v1

    const/4 v0, 0x1

    int-to-float p1, p1

    aput p1, v2, v0

    .line 3
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4
    new-instance v0, Lsmartisan/widget/BarsHelper$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/BarsHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-object p1
.end method

.method public static setBarIconScaleTouchListener(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lsmartisan/widget/BarsHelper;->setBarIconScaleTouchListener(Landroid/view/View;Z)V

    return-void
.end method

.method public static setBarIconScaleTouchListener(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lsmartisan/widget/BarsHelper$2;

    invoke-direct {p1}, Lsmartisan/widget/BarsHelper$2;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
