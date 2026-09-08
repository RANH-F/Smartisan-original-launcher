.class public Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;
.super Ljava/lang/Object;
.source "SimpleFloatViewManager.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;


# static fields
.field private static final SHADOW_PADDING:I = 0xa


# instance fields
.field private mFloatBGColor:I

.field private mFloatBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private paddingBottom:I

.field private paddingTop:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mFloatBGColor:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingTop:I

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingBottom:I

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingBottom:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingTop:I

    return v0
.end method

.method public onCreateFloatView(I)Landroid/view/View;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    .line 2
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr p1, v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xa

    .line 4
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingBottom:I

    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingTop:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 9
    iget v5, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingTop:I

    iget v6, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingBottom:I

    add-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 10
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 11
    iget-object v6, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 12
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v1, v1, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingTop:I

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget v12, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->paddingTop:I

    add-int/2addr v11, v12

    invoke-direct {v8, v1, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    invoke-virtual {v6, v3, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 23
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 26
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->mFloatBGColor:I

    return-void
.end method
