.class Lsmartisan/widget/tabswitcher/TabSwitcher$4;
.super Ljava/lang/Object;
.source "TabSwitcher.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic val$cancel:Z

.field final synthetic val$height:I

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    iput-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$view:Landroid/view/View;

    iput p4, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$height:I

    iput-boolean p5, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$cancel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$view:Landroid/view/View;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$view:Landroid/view/View;

    iget v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$height:I

    iget-boolean v2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$cancel:Z

    invoke-virtual {p1, v0, v1, v2}, Lsmartisan/widget/tabswitcher/TabSwitcher;->detachAnimPanel(Landroid/view/View;IZ)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$view:Landroid/view/View;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$view:Landroid/view/View;

    iget v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$height:I

    iget-boolean v2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$cancel:Z

    invoke-virtual {p1, v0, v1, v2}, Lsmartisan/widget/tabswitcher/TabSwitcher;->detachAnimPanel(Landroid/view/View;IZ)V

    .line 5
    iget-boolean p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->val$cancel:Z

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$300(Lsmartisan/widget/tabswitcher/TabSwitcher;)Lsmartisan/widget/tabswitcher/model/ITabManager;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/ITabManager;->updateTabList()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$300(Lsmartisan/widget/tabswitcher/TabSwitcher;)Lsmartisan/widget/tabswitcher/model/ITabManager;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/ITabManager;->init()V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$300(Lsmartisan/widget/tabswitcher/TabSwitcher;)Lsmartisan/widget/tabswitcher/model/ITabManager;

    move-result-object v0

    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/ITabManager;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$402(Lsmartisan/widget/tabswitcher/TabSwitcher;Ljava/util/List;)Ljava/util/List;

    .line 9
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$300(Lsmartisan/widget/tabswitcher/TabSwitcher;)Lsmartisan/widget/tabswitcher/model/ITabManager;

    move-result-object v0

    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/ITabManager;->getMoreTabs()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$502(Lsmartisan/widget/tabswitcher/TabSwitcher;Ljava/util/List;)Ljava/util/List;

    .line 10
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$4;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$600(Lsmartisan/widget/tabswitcher/TabSwitcher;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
