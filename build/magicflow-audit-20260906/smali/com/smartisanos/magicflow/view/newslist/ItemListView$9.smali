.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView;->startTipFadeInFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

.field final synthetic val$recyclerParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic val$updatedTipParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->val$updatedTipParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->val$recyclerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->val$updatedTipParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->val$recyclerParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$1000(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$300(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;->val$recyclerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
