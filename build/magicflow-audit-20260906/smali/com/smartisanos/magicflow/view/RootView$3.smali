.class Lcom/smartisanos/magicflow/view/RootView$3;
.super Ljava/lang/Object;
.source "RootView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/RootView;->horizontalScrollAnim(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/RootView;

.field final synthetic val$targetLocX:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/RootView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$3;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    iput p2, p0, Lcom/smartisanos/magicflow/view/RootView$3;->val$targetLocX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$3;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/RootView;->access$300(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "onAnimationCancel !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$3;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/RootView;->access$300(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "onAnimationEnd !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$3;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/RootView;->access$202(Lcom/smartisanos/magicflow/view/RootView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$3;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    iget v0, p0, Lcom/smartisanos/magicflow/view/RootView$3;->val$targetLocX:I

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/RootView;->access$400(Lcom/smartisanos/magicflow/view/RootView;I)V

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
