.class public Lcom/bytedance/sdk/openadsdk/g/a/c;
.super Lc/b/a/a/d/c;
.source "GifRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/a/d/c<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

.field private final e:Landroid/graphics/Bitmap$Config;

.field private final f:I

.field private final g:I

.field private final h:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/g/a/c;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lc/b/a/a/d/c;-><init>(ILjava/lang/String;Lc/b/a/a/d/p$a;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->c:Ljava/lang/Object;

    .line 3
    new-instance p1, Lc/b/a/a/d/h;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p1, v1, v2, v3}, Lc/b/a/a/d/h;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lc/b/a/a/d/c;->setRetryPolicy(Lc/b/a/a/g/e;)Lc/b/a/a/d/c;

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    .line 5
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->e:Landroid/graphics/Bitmap$Config;

    .line 6
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    .line 7
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    .line 8
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Landroid/widget/ImageView$ScaleType;

    .line 9
    invoke-virtual {p0, v0}, Lc/b/a/a/d/c;->setShouldCache(Z)Lc/b/a/a/d/c;

    return-void
.end method

.method static a(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 14
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p2

    float-to-double v0, p3

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2

    if-nez p0, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    if-nez p0, :cond_3

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double/2addr p2, p0

    double-to-int p0, p2

    return p0

    :cond_3
    if-nez p1, :cond_4

    return p0

    :cond_4
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    .line 3
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_6

    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_5

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_5
    return p0

    :cond_6
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_7

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_7
    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/c;)Lcom/bytedance/sdk/openadsdk/g/a/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    return-object p0
.end method

.method private b(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/m;",
            ")",
            "Lc/b/a/a/d/p<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/b/a/a/d/m;->b:[B

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v1

    .line 3
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    aget-byte v2, v0, v4

    const/16 v5, 0x47

    if-ne v2, v5, :cond_1

    aget-byte v2, v0, v3

    const/16 v5, 0x49

    if-ne v2, v5, :cond_1

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v5, 0x46

    if-ne v2, v5, :cond_1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;[B)V

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lc/b/a/a/d/c;->b:Landroid/os/Handler;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/g/a/c$1;

    invoke-direct {v5, p0, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/c;[B)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_0
    invoke-static {p1}, Lc/b/a/a/e/c;->a(Lc/b/a/a/d/m;)Lc/b/a/a/g/b$a;

    move-result-object v2

    invoke-static {v0, v2}, Lc/b/a/a/d/p;->a(Ljava/lang/Object;Lc/b/a/a/g/b$a;)Lc/b/a/a/d/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 8
    :catch_0
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 9
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    if-nez v5, :cond_2

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    if-nez v5, :cond_2

    .line 10
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->e:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 11
    array-length v3, v0

    invoke-static {v0, v4, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_2
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 13
    array-length v5, v0

    invoke-static {v0, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 14
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 15
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 16
    iget v7, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Landroid/widget/ImageView$ScaleType;

    .line 17
    invoke-static {v7, v8, v5, v6, v9}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    .line 18
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Landroid/widget/ImageView$ScaleType;

    .line 19
    invoke-static {v8, v9, v6, v5, v10}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v8

    .line 20
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    invoke-static {v5, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(IIII)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 22
    array-length v5, v0

    invoke-static {v0, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v7, :cond_3

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v8, :cond_4

    .line 25
    :cond_3
    invoke-static {v0, v7, v8, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v2

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 27
    new-instance v0, Lc/b/a/a/f/f;

    invoke-direct {v0, p1}, Lc/b/a/a/f/f;-><init>(Lc/b/a/a/d/m;)V

    invoke-static {v0}, Lc/b/a/a/d/p;->a(Lc/b/a/a/f/a;)Lc/b/a/a/d/p;

    move-result-object p1

    return-object p1

    .line 28
    :cond_5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/f;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;[B)V

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    if-eqz v1, :cond_6

    .line 31
    iget-object v1, p0, Lc/b/a/a/d/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/a/c$2;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/c;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    :cond_6
    invoke-static {p1}, Lc/b/a/a/e/c;->a(Lc/b/a/a/d/m;)Lc/b/a/a/g/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lc/b/a/a/d/p;->a(Ljava/lang/Object;Lc/b/a/a/g/b$a;)Lc/b/a/a/d/p;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/m;",
            ")",
            "Lc/b/a/a/d/p<",
            "[B>;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a/c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "GifRequest"

    const-string v2, "Caught OOM for byte image"

    .line 6
    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    new-instance v1, Lc/b/a/a/f/f;

    invoke-direct {v1, p1}, Lc/b/a/a/f/f;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lc/b/a/a/d/p;->a(Lc/b/a/a/f/a;)Lc/b/a/a/d/p;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected a(Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "[B>;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v1, p1}, Lc/b/a/a/d/p$a;->a(Lc/b/a/a/d/p;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 2

    .line 1
    invoke-super {p0}, Lc/b/a/a/d/c;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPriority()Lc/b/a/a/d/c$c;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/a/d/c$c;->a:Lc/b/a/a/d/c$c;

    return-object v0
.end method
