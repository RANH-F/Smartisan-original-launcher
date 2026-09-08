.class Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$3;
.super Ljava/lang/Object;
.source "SwipeListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$3;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

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
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$3;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->superScrollTo(II)V

    return-void
.end method
