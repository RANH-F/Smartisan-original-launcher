.class Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;
.super Lcom/smartisanos/magicflow/view/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimator"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;FI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;FI)V

    return-void
.end method

.method private getTargetY()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$900(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->mDropPos:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$1000(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$SmoothAnimator;->cancel()V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$1100(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V

    const/4 v0, -0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$700(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->mDropPos:I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$800(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->srcPos:I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$1100(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V

    return-void
.end method

.method public onUpdate(FF)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 4
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p2, v3, p2

    .line 5
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v2, p2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v2, p2

    float-to-int p2, v2

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$1200(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$1200(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$1200(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/high16 v0, 0x437f0000    # 255.0f

    sub-float/2addr v3, p1

    mul-float/2addr v3, v0

    float-to-int p1, v3

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->access$600(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;Z)V

    :cond_2
    return-void
.end method
