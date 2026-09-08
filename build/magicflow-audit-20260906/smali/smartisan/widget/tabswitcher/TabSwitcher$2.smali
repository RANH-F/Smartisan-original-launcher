.class Lsmartisan/widget/tabswitcher/TabSwitcher$2;
.super Ljava/lang/Object;
.source "TabSwitcher.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/tabswitcher/TabSwitcher;->makeExtendAnimator(Landroid/view/View;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

.field final synthetic val$end:I

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    iput-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$view:Landroid/view/View;

    iput p4, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$end:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$view:Landroid/view/View;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$end:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$view:Landroid/view/View;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-virtual {p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->attachAnimPanel()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$view:Landroid/view/View;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$2;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->setEditBarShadowVisibility(Z)V

    return-void
.end method
