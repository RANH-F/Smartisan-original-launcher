.class Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->scrollDir:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mAbort:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    iget-object v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 8
    iget-object v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v6}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$500(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v7}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2000(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v8}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$300(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 9
    iget-object v7, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v7}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$500(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v8}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2000(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v8

    iget-object v9, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v9}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$300(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 10
    iget v8, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->scrollDir:I

    const/4 v9, 0x1

    if-nez v8, :cond_3

    .line 11
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 12
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 14
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    .line 16
    invoke-static {v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2300(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    iget-object v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v6}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2100(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F

    move-result v6

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v7}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2200(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F

    move-result v7

    div-float/2addr v6, v7

    iget-wide v7, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mPrevTime:J

    invoke-interface {v3, v6, v7, v8}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    goto :goto_0

    .line 17
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    sub-int v8, v2, v0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_4

    .line 18
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_4
    sub-int/2addr v3, v9

    if-ne v2, v3, :cond_5

    .line 19
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v7, v5, v4

    if-gt v3, v7, :cond_5

    .line 20
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    .line 21
    :cond_5
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    .line 22
    invoke-static {v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2300(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    int-to-float v6, v6

    iget-object v7, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v7}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    .line 23
    invoke-static {v7}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2500(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F

    move-result v7

    div-float/2addr v6, v7

    iget-wide v7, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 24
    invoke-interface {v3, v6, v7, v8}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 25
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mCurrTime:J

    .line 26
    iget-wide v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iget-wide v10, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mPrevTime:J

    sub-long/2addr v6, v10

    long-to-float v3, v6

    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->dt:F

    .line 27
    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    iget v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->dy:I

    .line 28
    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->dy:I

    if-ltz v3, :cond_6

    .line 29
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->dy:I

    move v2, v0

    goto :goto_1

    :cond_6
    neg-int v5, v5

    .line 30
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->dy:I

    .line 31
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->dy:I

    add-int/2addr v3, v5

    if-nez v2, :cond_7

    if-le v3, v4, :cond_7

    move v3, v4

    .line 33
    :cond_7
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v5, v9}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2602(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;Z)Z

    .line 34
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    sub-int/2addr v3, v4

    invoke-virtual {v5, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 35
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->layoutChildren()V

    .line 36
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 37
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v3, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2602(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;Z)Z

    .line 38
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v3, v2, v0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2700(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 39
    iget-wide v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 40
    invoke-static {}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$2800()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  updated prevTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mPrevTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startScrolling(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mAbort:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->tStart:J

    .line 5
    iget-wide v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->scrollDir:I

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->mAbort:Z

    :goto_0
    return-void
.end method
