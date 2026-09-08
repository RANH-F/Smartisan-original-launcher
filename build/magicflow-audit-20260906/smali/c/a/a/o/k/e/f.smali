.class public abstract Lc/a/a/o/k/e/f;
.super Ljava/lang/Object;
.source "Downsampler.java"

# interfaces
.implements Lc/a/a/o/k/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/k/e/a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/a/o/k/e/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/a/a/o/k/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lc/a/a/o/k/e/l$a;->c:Lc/a/a/o/k/e/l$a;

    sget-object v1, Lc/a/a/o/k/e/l$a;->d:Lc/a/a/o/k/e/l$a;

    sget-object v2, Lc/a/a/o/k/e/l$a;->e:Lc/a/a/o/k/e/l$a;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lc/a/a/o/k/e/f;->a:Ljava/util/Set;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lc/a/a/t/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lc/a/a/o/k/e/f;->b:Ljava/util/Queue;

    .line 3
    new-instance v0, Lc/a/a/o/k/e/f$a;

    invoke-direct {v0}, Lc/a/a/o/k/e/f$a;-><init>()V

    sput-object v0, Lc/a/a/o/k/e/f;->c:Lc/a/a/o/k/e/f;

    .line 4
    new-instance v0, Lc/a/a/o/k/e/f$b;

    invoke-direct {v0}, Lc/a/a/o/k/e/f$b;-><init>()V

    .line 5
    new-instance v0, Lc/a/a/o/k/e/f$c;

    invoke-direct {v0}, Lc/a/a/o/k/e/f$c;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IIIII)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p5, v0, :cond_0

    move p5, p3

    :cond_0
    if-ne p4, v0, :cond_1

    move p4, p2

    :cond_1
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lc/a/a/o/k/e/f;->a(IIII)I

    move-result p1

    goto :goto_1

    .line 43
    :cond_3
    :goto_0
    invoke-virtual {p0, p3, p2, p4, p5}, Lc/a/a/o/k/e/f;->a(IIII)I

    move-result p1

    :goto_1
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 44
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    :goto_2
    const/4 p2, 0x1

    .line 45
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private static a(Ljava/io/InputStream;Lc/a/a/o/a;)Landroid/graphics/Bitmap$Config;
    .locals 7

    const-string v0, "Cannot reset the input stream"

    const-string v1, "Downsampler"

    .line 70
    sget-object v2, Lc/a/a/o/a;->a:Lc/a/a/o/a;

    if-eq p1, v2, :cond_5

    sget-object v2, Lc/a/a/o/a;->b:Lc/a/a/o/a;

    if-eq p1, v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    goto :goto_5

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x400

    .line 71
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    const/4 v3, 0x5

    .line 72
    :try_start_0
    new-instance v4, Lc/a/a/o/k/e/l;

    invoke-direct {v4, p0}, Lc/a/a/o/k/e/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lc/a/a/o/k/e/l;->c()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 74
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    :goto_0
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 76
    :try_start_2
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 79
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 80
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_2
    return-object p0

    .line 81
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 82
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_4
    :goto_4
    throw p1

    .line 85
    :cond_5
    :goto_5
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method private a(Lc/a/a/t/f;Lc/a/a/o/k/e/o;Landroid/graphics/BitmapFactory$Options;Lc/a/a/o/i/m/c;IIILc/a/a/o/a;)Landroid/graphics/Bitmap;
    .locals 4

    .line 46
    invoke-static {p1, p8}, Lc/a/a/o/k/e/f;->a(Ljava/io/InputStream;Lc/a/a/o/a;)Landroid/graphics/Bitmap$Config;

    move-result-object p8

    .line 47
    iput p7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 48
    iput-object p8, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 49
    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lc/a/a/o/k/e/f;->a(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-double v0, p5

    int-to-double v2, p7

    div-double/2addr v0, v2

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p5, v0

    int-to-double p6, p6

    div-double/2addr p6, v2

    .line 51
    invoke-static {p6, p7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p6

    double-to-int p6, p6

    .line 52
    invoke-interface {p4, p5, p6, p8}, Lc/a/a/o/i/m/c;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p3, p4}, Lc/a/a/o/k/e/f;->a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    .line 53
    :cond_1
    invoke-static {p1, p2, p3}, Lc/a/a/o/k/e/f;->b(Lc/a/a/t/f;Lc/a/a/o/k/e/o;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static declared-synchronized a()Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v0, Lc/a/a/o/k/e/f;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lc/a/a/o/k/e/f;->b:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    sget-object v2, Lc/a/a/o/k/e/f;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 94
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 95
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    invoke-static {v2}, Lc/a/a/o/k/e/f;->b(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    .line 98
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    .line 99
    invoke-static {p0}, Lc/a/a/o/k/e/f;->b(Landroid/graphics/BitmapFactory$Options;)V

    .line 100
    sget-object v0, Lc/a/a/o/k/e/f;->b:Ljava/util/Queue;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lc/a/a/o/k/e/f;->b:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_0

    .line 91
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/InputStream;)Z
    .locals 5

    const-string v0, "Cannot reset the input stream"

    const-string v1, "Downsampler"

    .line 54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v3, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v2, 0x400

    .line 55
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x5

    .line 56
    :try_start_0
    new-instance v3, Lc/a/a/o/k/e/l;

    invoke-direct {v3, p0}, Lc/a/a/o/k/e/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lc/a/a/o/k/e/l;->b()Lc/a/a/o/k/e/l$a;

    move-result-object v3

    .line 57
    sget-object v4, Lc/a/a/o/k/e/f;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 61
    :try_start_2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Cannot determine the image type from header"

    .line 62
    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0

    .line 66
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 67
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_4
    :goto_3
    throw v3
.end method

.method private static b(Lc/a/a/t/f;Lc/a/a/o/k/e/o;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x500000

    .line 2
    invoke-virtual {p0, p1}, Lc/a/a/t/f;->mark(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lc/a/a/o/k/e/o;->j()V

    :goto_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    :try_start_0
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lc/a/a/t/f;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, 0x6

    const-string v1, "Downsampler"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception loading inDecodeBounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sample="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object p1
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 11
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 12
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 13
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 17
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-gt v3, v1, :cond_0

    .line 19
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 20
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(IIII)I
.end method

.method public a(Ljava/io/InputStream;Lc/a/a/o/i/m/c;IILc/a/a/o/a;)Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v10, p2

    const-string v1, "Cannot reset the input stream"

    const-string v2, "Downsampler"

    .line 1
    invoke-static {}, Lc/a/a/t/a;->b()Lc/a/a/t/a;

    move-result-object v11

    .line 2
    invoke-virtual {v11}, Lc/a/a/t/a;->a()[B

    move-result-object v12

    .line 3
    invoke-virtual {v11}, Lc/a/a/t/a;->a()[B

    move-result-object v13

    .line 4
    invoke-static {}, Lc/a/a/o/k/e/f;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    .line 5
    new-instance v3, Lc/a/a/o/k/e/o;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v13}, Lc/a/a/o/k/e/o;-><init>(Ljava/io/InputStream;[B)V

    .line 6
    invoke-static {v3}, Lc/a/a/t/c;->b(Ljava/io/InputStream;)Lc/a/a/t/c;

    move-result-object v15

    .line 7
    new-instance v4, Lc/a/a/t/f;

    invoke-direct {v4, v15}, Lc/a/a/t/f;-><init>(Ljava/io/InputStream;)V

    const/high16 v0, 0x500000

    .line 8
    :try_start_0
    invoke-virtual {v15, v0}, Lc/a/a/t/c;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 9
    :try_start_1
    new-instance v0, Lc/a/a/o/k/e/l;

    invoke-direct {v0, v15}, Lc/a/a/o/k/e/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lc/a/a/o/k/e/l;->a()I

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v15}, Lc/a/a/t/c;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 11
    :try_start_3
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {v2, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    move v0, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    .line 13
    :try_start_4
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Cannot determine the image orientation from header"

    .line 14
    invoke-static {v2, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :cond_1
    :try_start_5
    invoke-virtual {v15}, Lc/a/a/t/c;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v7, v0

    .line 16
    :try_start_6
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {v2, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    move v0, v5

    .line 18
    :goto_2
    iput-object v12, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    move-object/from16 v9, p0

    .line 19
    invoke-virtual {v9, v4, v3, v14}, Lc/a/a/o/k/e/f;->a(Lc/a/a/t/f;Lc/a/a/o/k/e/o;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v1

    .line 20
    aget v6, v1, v5

    const/4 v2, 0x1

    .line 21
    aget v7, v1, v2

    .line 22
    invoke-static {v0}, Lc/a/a/o/k/e/r;->a(I)I

    move-result v17

    move-object/from16 v16, p0

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, p3

    move/from16 v21, p4

    .line 23
    invoke-direct/range {v16 .. v21}, Lc/a/a/o/k/e/f;->a(IIIII)I

    move-result v8

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v9, p5

    .line 24
    invoke-direct/range {v1 .. v9}, Lc/a/a/o/k/e/f;->a(Lc/a/a/t/f;Lc/a/a/o/k/e/o;Landroid/graphics/BitmapFactory$Options;Lc/a/a/o/i/m/c;IIILc/a/a/o/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 25
    invoke-virtual {v15}, Lc/a/a/t/c;->j()Ljava/io/IOException;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 26
    invoke-static {v1, v10, v0}, Lc/a/a/o/k/e/r;->a(Landroid/graphics/Bitmap;Lc/a/a/o/i/m/c;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v10, v1}, Lc/a/a/o/i/m/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 29
    :cond_3
    invoke-virtual {v11, v12}, Lc/a/a/t/a;->a([B)Z

    .line 30
    invoke-virtual {v11, v13}, Lc/a/a/t/a;->a([B)Z

    .line 31
    invoke-virtual {v15}, Lc/a/a/t/c;->k()V

    .line 32
    invoke-static {v14}, Lc/a/a/o/k/e/f;->a(Landroid/graphics/BitmapFactory$Options;)V

    return-object v2

    .line 33
    :cond_4
    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 34
    :goto_3
    :try_start_8
    invoke-virtual {v15}, Lc/a/a/t/c;->reset()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 35
    :try_start_9
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    invoke-static {v2, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_5
    :goto_4
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    .line 38
    invoke-virtual {v11, v12}, Lc/a/a/t/a;->a([B)Z

    .line 39
    invoke-virtual {v11, v13}, Lc/a/a/t/a;->a([B)Z

    .line 40
    invoke-virtual {v15}, Lc/a/a/t/c;->k()V

    .line 41
    invoke-static {v14}, Lc/a/a/o/k/e/f;->a(Landroid/graphics/BitmapFactory$Options;)V

    throw v0
.end method

.method public a(Lc/a/a/t/f;Lc/a/a/o/k/e/o;Landroid/graphics/BitmapFactory$Options;)[I
    .locals 2

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 87
    invoke-static {p1, p2, p3}, Lc/a/a/o/k/e/f;->b(Lc/a/a/t/f;Lc/a/a/o/k/e/o;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 89
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, p2, p1

    iget p1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p1, p2, v0

    return-object p2
.end method
