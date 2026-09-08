.class public Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;
.super Ljava/lang/Object;
.source "DoubleTapListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private HEIGHT:I

.field private WIDTH:I

.field private mAttacher:Luk/co/senab/photoview/d;

.field private magnify:Z


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/d;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->magnify:Z

    const/16 v0, 0x438

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->WIDTH:I

    const/16 v0, 0x780

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->HEIGHT:I

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    .line 6
    iput p2, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->WIDTH:I

    .line 7
    iput p3, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->HEIGHT:I

    return-void
.end method

.method private magicFlowBaseViewIsWebView()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/b;->h()Lcom/smartisanos/magicflow/view/DetailsContentView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->hasPictureView()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->getBaseView()Lcom/smartisanos/magicflow/view/BaseView;

    move-result-object v0

    .line 4
    instance-of v2, v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    if-nez v2, :cond_1

    instance-of v0, v0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Luk/co/senab/photoview/d;->k()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    invoke-virtual {v4}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    .line 6
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    invoke-virtual {v5}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    .line 7
    iget v6, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->HEIGHT:I

    int-to-float v6, v6

    div-float v6, v5, v6

    iget v7, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->WIDTH:I

    int-to-float v7, v7

    div-float v7, v4, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 8
    iget v6, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->WIDTH:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    mul-float/2addr v6, v5

    .line 9
    iget v4, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->WIDTH:I

    int-to-float v4, v4

    goto :goto_0

    .line 10
    :cond_1
    iget v6, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    mul-float/2addr v4, v6

    .line 11
    iget v5, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->HEIGHT:I

    int-to-float v6, v5

    .line 12
    :goto_0
    iget v5, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->WIDTH:I

    int-to-float v5, v5

    const/4 v7, 0x0

    add-float/2addr v5, v7

    div-float/2addr v5, v4

    .line 13
    iget v4, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    div-float/2addr v4, v6

    cmpl-float v6, v5, v4

    if-lez v6, :cond_2

    move v4, v5

    .line 14
    :cond_2
    iget-boolean v5, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->magnify:Z

    if-nez v5, :cond_3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    invoke-virtual {v0, v4, v3, p1, v2}, Luk/co/senab/photoview/d;->a(FFFZ)V

    .line 16
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->magnify:Z

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    invoke-virtual {v4}, Luk/co/senab/photoview/d;->h()F

    move-result v4

    invoke-virtual {v0, v4, v3, p1, v2}, Luk/co/senab/photoview/d;->a(FFFZ)V

    .line 18
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->magnify:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return v2
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    invoke-virtual {v0}, Luk/co/senab/photoview/d;->j()Luk/co/senab/photoview/d$h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->magicFlowBaseViewIsWebView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    invoke-virtual {v0}, Luk/co/senab/photoview/d;->j()Luk/co/senab/photoview/d$h;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;->mAttacher:Luk/co/senab/photoview/d;

    invoke-virtual {v1}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Luk/co/senab/photoview/d$h;->onViewTap(Landroid/view/View;FF)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
