.class Lsmartisan/widget/tabswitcher/TabSwitcher$5;
.super Ljava/lang/Object;
.source "TabSwitcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/tabswitcher/TabSwitcher;->makeShrinkAmimator(Landroid/view/View;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$5;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    iput-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$5;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$5;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$5;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$5;->val$view:Landroid/view/View;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$5;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
