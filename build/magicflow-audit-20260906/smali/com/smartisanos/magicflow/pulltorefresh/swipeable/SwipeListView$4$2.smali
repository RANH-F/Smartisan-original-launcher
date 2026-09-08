.class Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;
.super Ljava/lang/Object;
.source "SwipeListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;

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
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;

    iget-object v0, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;

    iget-object p1, p1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$400(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setAdapterAnimating(Z)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;

    iget-object p1, p1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$400(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setOpenedChild(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;

    iget-object p1, p1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;

    iget-object p1, p1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;

    iget-object p1, p1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$302(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

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
