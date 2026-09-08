.class Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;
.super Ljava/lang/Object;
.source "LifeInfoCardListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->removeItemView(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

.field final synthetic val$needViewDeleteListener:Z

.field final synthetic val$position:I

.field final synthetic val$removeView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/view/View;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->val$removeView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->val$needViewDeleteListener:Z

    iput p4, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->val$removeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$100(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$200(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$300(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$400(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$200(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;I)V

    .line 5
    :goto_0
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->val$needViewDeleteListener:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$500(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$500(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->val$removeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;->onItemViewDelete(Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;I)V

    :cond_1
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
