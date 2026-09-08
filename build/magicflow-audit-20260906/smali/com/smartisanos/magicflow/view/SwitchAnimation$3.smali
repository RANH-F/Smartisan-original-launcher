.class Lcom/smartisanos/magicflow/view/SwitchAnimation$3;
.super Ljava/lang/Object;
.source "SwitchAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/SwitchAnimation;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/SwitchAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$200(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$200(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;->onCancel()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$302(Lcom/smartisanos/magicflow/view/SwitchAnimation;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$200(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$200(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;->onEnd()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->onEnd()V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$302(Lcom/smartisanos/magicflow/view/SwitchAnimation;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$200(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$200(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;->onRepeat()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$200(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$200(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;->onStart()V

    :cond_0
    return-void
.end method
