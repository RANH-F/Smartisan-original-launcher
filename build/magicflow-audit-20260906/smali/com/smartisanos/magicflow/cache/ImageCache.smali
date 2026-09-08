.class public Lcom/smartisanos/magicflow/cache/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# static fields
.field private static final CACHE_SIZE:I = 0x3

.field private static final LOCK:Ljava/lang/Object;

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static volatile sBlurCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sIndex:I

.field public static volatile screenshot:Landroid/graphics/Bitmap;

.field public static volatile screenshotThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/cache/ImageCache;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->LOCK:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->sBlurCache:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    sput v0, Lcom/smartisanos/magicflow/cache/ImageCache;->sIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanBlurCache()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->sBlurCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->sBlurCache:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static getCachedBlurBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->sBlurCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget v0, Lcom/smartisanos/magicflow/cache/ImageCache;->sIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/smartisanos/magicflow/cache/ImageCache;->sIndex:I

    .line 3
    sget v0, Lcom/smartisanos/magicflow/cache/ImageCache;->sIndex:I

    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->sBlurCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    sput v0, Lcom/smartisanos/magicflow/cache/ImageCache;->sIndex:I

    .line 5
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->sBlurCache:Ljava/util/List;

    sget v1, Lcom/smartisanos/magicflow/cache/ImageCache;->sIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initBlurImageCache(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ImageCache;->cleanBlurCache()V

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->sBlurCache:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5
    sget-object v3, Lcom/smartisanos/magicflow/cache/ImageCache;->sBlurCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isEffectiveBitmap(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScreenshotThumbnailRecycle()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static recycleAll()V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v2, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 4
    sget-object v2, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_0
    sput-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    .line 7
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 9
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_1
    sget-object v2, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 11
    sget-object v2, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    sget-object v2, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    :cond_3
    sput-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    .line 14
    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 15
    :cond_5
    :goto_1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ImageCache;->cleanBlurCache()V

    return-void
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public static updateThumbnailSize(II)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 7
    :try_start_2
    sput-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_0
    int-to-float p0, p0

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 9
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
