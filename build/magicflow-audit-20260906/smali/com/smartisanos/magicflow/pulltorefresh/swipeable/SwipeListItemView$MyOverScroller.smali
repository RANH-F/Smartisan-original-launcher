.class Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;
.super Landroid/widget/OverScroller;
.source "SwipeListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOverScroller"
.end annotation


# instance fields
.field mIgnoreInterrupt:Z

.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    .line 5
    invoke-direct {p0, p2, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    return-void
.end method

.method private isFlingFinished()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public fling(IIIIIIII)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->fling(IIIIIIIIZ)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 6
    invoke-virtual/range {v0 .. v11}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->fling(IIIIIIIIIIZ)V

    return-void
.end method

.method public fling(IIIIIIIIIIZ)V
    .locals 0

    .line 4
    invoke-super/range {p0 .. p10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 5
    iput-boolean p11, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    return-void
.end method

.method public fling(IIIIIIIIZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 2
    iput-boolean p9, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    return-void
.end method

.method public ignoreInterrupt()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    return v0
.end method

.method public isClearFinished()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->isFlingFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public startScroll(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->startScroll(IIIIZ)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->startScroll(IIIIIZ)V

    return-void
.end method

.method public startScroll(IIIIIZ)V
    .locals 0

    .line 4
    invoke-super/range {p0 .. p5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5
    iput-boolean p6, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    return-void
.end method

.method public startScroll(IIIIZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 2
    iput-boolean p5, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    return-void
.end method
