.class Lsmartisan/widget/tabswitcher/AnimationPanel$2;
.super Ljava/lang/Object;
.source "AnimationPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/tabswitcher/AnimationPanel;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;


# direct methods
.method constructor <init>(Lsmartisan/widget/tabswitcher/AnimationPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$2;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$2;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$600(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Pickable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$2;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$600(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Pickable;

    move-result-object p1

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$2;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$700(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v0

    invoke-interface {p1, v0}, Lsmartisan/widget/tabswitcher/Pickable;->cancelPick(Lsmartisan/widget/tabswitcher/model/TabBrick;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$2;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$800(Lsmartisan/widget/tabswitcher/AnimationPanel;)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$2;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$302(Lsmartisan/widget/tabswitcher/AnimationPanel;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$2;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$302(Lsmartisan/widget/tabswitcher/AnimationPanel;Z)Z

    return-void
.end method
