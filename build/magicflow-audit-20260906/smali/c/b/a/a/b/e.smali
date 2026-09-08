.class public Lc/b/a/a/b/e;
.super Lc/b/a/a/d/c;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/a/d/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Ljava/lang/Object;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:Landroid/widget/ImageView$ScaleType;

.field private final x:Ljava/lang/Object;

.field private y:Lc/b/a/a/d/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/a/d/p$a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/b/a/a/b/e;->D:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc/b/a/a/d/p$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/b/a/a/d/p$a<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lc/b/a/a/d/c;-><init>(ILjava/lang/String;Lc/b/a/a/d/p$a;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/a/a/b/e;->x:Ljava/lang/Object;

    .line 3
    new-instance p1, Lc/b/a/a/d/h;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p1, v1, v2, v3}, Lc/b/a/a/d/h;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lc/b/a/a/d/c;->setRetryPolicy(Lc/b/a/a/g/e;)Lc/b/a/a/d/c;

    .line 4
    iput-object p2, p0, Lc/b/a/a/b/e;->y:Lc/b/a/a/d/p$a;

    .line 5
    iput-object p6, p0, Lc/b/a/a/b/e;->z:Landroid/graphics/Bitmap$Config;

    .line 6
    iput p3, p0, Lc/b/a/a/b/e;->A:I

    .line 7
    iput p4, p0, Lc/b/a/a/b/e;->B:I

    .line 8
    iput-object p5, p0, Lc/b/a/a/b/e;->C:Landroid/widget/ImageView$ScaleType;

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

    .line 13
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

    .line 1
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

    .line 2
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

.method private b(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/m;",
            ")",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/b/a/a/d/m;->b:[B

    .line 2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3
    iget v2, p0, Lc/b/a/a/b/e;->A:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, p0, Lc/b/a/a/b/e;->B:I

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lc/b/a/a/b/e;->z:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 5
    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 9
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 10
    iget v6, p0, Lc/b/a/a/b/e;->A:I

    iget v7, p0, Lc/b/a/a/b/e;->B:I

    iget-object v8, p0, Lc/b/a/a/b/e;->C:Landroid/widget/ImageView$ScaleType;

    .line 11
    invoke-static {v6, v7, v4, v5, v8}, Lc/b/a/a/b/e;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 12
    iget v7, p0, Lc/b/a/a/b/e;->B:I

    iget v8, p0, Lc/b/a/a/b/e;->A:I

    iget-object v9, p0, Lc/b/a/a/b/e;->C:Landroid/widget/ImageView$ScaleType;

    .line 13
    invoke-static {v7, v8, v5, v4, v9}, Lc/b/a/a/b/e;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    .line 14
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    invoke-static {v4, v5, v6, v7}, Lc/b/a/a/b/e;->a(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 16
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_1

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 19
    :cond_1
    invoke-static {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 21
    new-instance v0, Lc/b/a/a/f/f;

    invoke-direct {v0, p1}, Lc/b/a/a/f/f;-><init>(Lc/b/a/a/d/m;)V

    invoke-static {v0}, Lc/b/a/a/d/p;->a(Lc/b/a/a/f/a;)Lc/b/a/a/d/p;

    move-result-object p1

    return-object p1

    .line 22
    :cond_3
    invoke-static {p1}, Lc/b/a/a/e/c;->a(Lc/b/a/a/d/m;)Lc/b/a/a/g/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lc/b/a/a/d/p;->a(Ljava/lang/Object;Lc/b/a/a/g/b$a;)Lc/b/a/a/d/p;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/m;",
            ")",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lc/b/a/a/b/e;->D:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lc/b/a/a/b/e;->b(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;

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
    move-exception v1

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    iget-object p1, p1, Lc/b/a/a/d/m;->b:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lc/b/a/a/d/r;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance p1, Lc/b/a/a/f/f;

    invoke-direct {p1, v1}, Lc/b/a/a/f/f;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lc/b/a/a/d/p;->a(Lc/b/a/a/f/a;)Lc/b/a/a/d/p;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 7
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
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lc/b/a/a/b/e;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/b/e;->y:Lc/b/a/a/d/p$a;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1, p1}, Lc/b/a/a/d/p$a;->a(Lc/b/a/a/d/p;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
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
    iget-object v0, p0, Lc/b/a/a/b/e;->x:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Lc/b/a/a/b/e;->y:Lc/b/a/a/d/p$a;

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
