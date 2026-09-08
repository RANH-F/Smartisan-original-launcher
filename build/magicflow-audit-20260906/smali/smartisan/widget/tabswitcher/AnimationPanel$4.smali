.class Lsmartisan/widget/tabswitcher/AnimationPanel$4;
.super Ljava/lang/Object;
.source "AnimationPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/tabswitcher/AnimationPanel;->translate(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

.field final synthetic val$target:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lsmartisan/widget/tabswitcher/AnimationPanel;Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$4;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    iput-object p2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$4;->val$target:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$4;->val$target:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 3
    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 4
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$4;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
