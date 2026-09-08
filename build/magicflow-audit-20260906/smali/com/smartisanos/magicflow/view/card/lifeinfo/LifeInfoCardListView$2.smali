.class Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;
.super Ljava/lang/Object;
.source "LifeInfoCardListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->showAllItemView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iput p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;->val$count:I

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
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$702(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Z)Z

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;->val$count:I

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$300(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$400(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$200(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->access$600(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Z)V

    return-void
.end method
