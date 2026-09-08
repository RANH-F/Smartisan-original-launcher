.class public Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;
.super Landroid/widget/LinearLayout;
.source "RefreshFooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView$RefreshFooterListener;
    }
.end annotation


# instance fields
.field private mClipTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;->mClipTop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;->mClipTop:I

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;->mClipTop:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getClipTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;->mClipTop:I

    return v0
.end method

.method public setClipTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;->mClipTop:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
