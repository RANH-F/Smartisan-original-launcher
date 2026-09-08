.class public Lcom/smartisanos/magicflow/view/BackgroundView;
.super Landroid/widget/FrameLayout;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;,
        Lcom/smartisanos/magicflow/view/BackgroundView$Int;
    }
.end annotation


# static fields
.field private static final DEBUG_BLUR:Z = false

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static final sAlphaEnableMaxProgress:F = 0.08f


# instance fields
.field private mBgImageReady:Z

.field private mBlurBg:Landroid/widget/ImageView;

.field private mDimBg:Landroid/widget/ImageView;

.field private mMaskBg:Landroid/widget/ImageView;

.field private mPreProgress:I

.field private mQueue:Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;

.field private final maxProgress:F

.field private final maxRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/BackgroundView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/BackgroundView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/BackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/magicflow/view/BackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBgImageReady:Z

    .line 6
    new-instance p1, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;-><init>(Lcom/smartisanos/magicflow/view/BackgroundView;I)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mQueue:Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;

    const/16 p1, 0x19

    .line 7
    iput p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->maxRadius:I

    const p1, 0x3ecccccd    # 0.4f

    .line 8
    iput p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->maxProgress:F

    return-void
.end method

.method private updateAlpha(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mDimBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x3da3d70a    # 0.08f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-gez v1, :cond_0

    div-float/2addr p1, v0

    sub-float p1, v2, p1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    move p1, v3

    :cond_1
    const v0, 0x3f7ae148    # 0.98f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    move p1, v2

    .line 2
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mMaskBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private updateBackground(F)V
    .locals 3

    const v0, 0x3ecccccd    # 0.4f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    div-float/2addr p1, v0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/BackgroundView;->updateAlpha(F)V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBgImageReady:Z

    if-nez v0, :cond_1

    .line 3
    sget-object p1, Lcom/smartisanos/magicflow/view/BackgroundView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "background img not ready"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x19

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_3

    move p1, v0

    .line 4
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mQueue:Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->add(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mQueue:Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->toArray()[Lcom/smartisanos/magicflow/view/BackgroundView$Int;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_5

    .line 7
    aget-object v2, p1, v0

    if-eqz v2, :cond_4

    .line 8
    aget-object v2, p1, v0

    iget v2, v2, Lcom/smartisanos/magicflow/view/BackgroundView$Int;->v:I

    add-int/2addr v1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mQueue:Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->access$000(Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;)Ljava/util/ArrayDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    div-int/2addr v1, p1

    .line 10
    iget p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mPreProgress:I

    if-ne p1, v1, :cond_6

    return-void

    .line 11
    :cond_6
    iput v1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mPreProgress:I

    .line 12
    iget p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mPreProgress:I

    .line 13
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ImageCache;->isScreenshotThumbnailRecycle()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 14
    :cond_7
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ImageCache;->getCachedBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    .line 15
    sget-object p1, Lcom/smartisanos/magicflow/view/BackgroundView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "updateBackground return by cached image is null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17
    sget-object p1, Lcom/smartisanos/magicflow/view/BackgroundView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "updateBackground return by cached image is isRecycled"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_9
    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    int-to-float p1, p1

    .line 20
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v0, :cond_b

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    .line 23
    :cond_a
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBlurBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 24
    :cond_b
    :goto_2
    sget-object p1, Lcom/smartisanos/magicflow/view/BackgroundView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "blur result is isRecycled"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBlurBg:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ImageView;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mMaskBg:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ImageView;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBlurBg:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mMaskBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method public initBackgroundImage()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBgImageReady:Z

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBgImageReady:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mMaskBg:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBlurBg:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mMaskBg:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mDimBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mQueue:Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->clear()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mPreProgress:I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f080053

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBlurBg:Landroid/widget/ImageView;

    const v0, 0x7f0801b6

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mMaskBg:Landroid/widget/ImageView;

    const v0, 0x7f0800df

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mDimBg:Landroid/widget/ImageView;

    return-void
.end method

.method public updateBackgroundByScreenshot(F)V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/view/BackgroundView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "start updateBackgroundByScreenshot, set mBgImageReady true"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mMaskBg:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBlurBg:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView;->mBgImageReady:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/BackgroundView;->updateShadowBackground(F)V

    .line 8
    sget-object p1, Lcom/smartisanos/magicflow/view/BackgroundView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "end updateBackgroundByScreenshot, set mBgImageReady true"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateShadowBackground(F)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/smartisanos/magicflow/h/d;->H:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    int-to-float p1, v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/smartisanos/magicflow/h/d;->H:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    const/high16 p1, 0x400000

    .line 3
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/BackgroundView;->updateBackground(F)V

    return-void
.end method
