.class Lcom/smartisanos/magicflow/view/UpDownAnimation$2;
.super Ljava/lang/Object;
.source "UpDownAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/UpDownAnimation;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/UpDownAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$200(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$200(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;->onCancel()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$302(Lcom/smartisanos/magicflow/view/UpDownAnimation;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$200(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$200(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;->onEnd()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->onEnd()V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$302(Lcom/smartisanos/magicflow/view/UpDownAnimation;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$200(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$200(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;->onRepeat()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$200(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$200(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;->onStart()V

    :cond_0
    return-void
.end method
