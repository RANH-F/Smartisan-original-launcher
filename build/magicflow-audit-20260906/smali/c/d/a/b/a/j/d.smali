.class public Lc/d/a/b/a/j/d;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static b:Ljava/lang/String;

.field private static volatile c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lc/d/a/b/a/c/f;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final e:[C

.field private static f:Ljava/util/regex/Pattern;

.field private static g:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lc/d/a/b/a/j/d;->c:Landroid/util/SparseArray;

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lc/d/a/b/a/j/d;->d:Landroid/util/SparseArray;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lc/d/a/b/a/j/d;->e:[C

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lc/d/a/b/a/j/d;->f:Ljava/util/regex/Pattern;

    .line 5
    sput-object v0, Lc/d/a/b/a/j/d;->g:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a()J
    .locals 2

    const-wide v0, 0x80000000L

    return-wide v0
.end method

.method public static a(Lc/d/a/b/a/h/c;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "Content-Length"

    .line 11
    invoke-interface {p0, v2}, Lc/d/a/b/a/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    .line 13
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Lc/d/a/b/a/a/i;
    .locals 1

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object p0, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    return-object p0

    .line 81
    :cond_0
    invoke-static {p0}, Lc/d/a/b/a/j/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    sget-object p0, Lc/d/a/b/a/a/i;->c:Lc/d/a/b/a/a/i;

    return-object p0

    .line 84
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 85
    sget-object p0, Lc/d/a/b/a/a/i;->d:Lc/d/a/b/a/a/i;

    return-object p0

    .line 86
    :cond_2
    sget-object p0, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/a/i;
    .locals 1

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object p0, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 72
    sget-object p0, Lc/d/a/b/a/a/i;->b:Lc/d/a/b/a/a/i;

    return-object p0

    .line 73
    :cond_1
    invoke-static {v0}, Lc/d/a/b/a/j/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    sget-object p0, Lc/d/a/b/a/a/i;->c:Lc/d/a/b/a/a/i;

    return-object p0

    .line 76
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 77
    sget-object p0, Lc/d/a/b/a/a/i;->d:Lc/d/a/b/a/a/i;

    return-object p0

    .line 78
    :cond_3
    sget-object p0, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/f;
    .locals 5

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lc/d/a/b/a/d/a;

    const/16 v1, 0x40b

    new-instance v2, Ljava/io/IOException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, p0

    const-string p0, "path is :%s, path is directory:%B:"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6

    .line 23
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_3

    .line 25
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 27
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    .line 28
    :cond_4
    new-instance p0, Lc/d/a/b/a/d/a;

    const/16 p1, 0x406

    const-string v0, "download savePath directory can not created"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw p0

    .line 29
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 30
    new-instance p0, Lc/d/a/b/a/d/a;

    const/16 p1, 0x407

    const-string v0, "download savePath is not directory"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Lc/d/a/b/a/d/a;

    const/16 v0, 0x40c

    invoke-direct {p1, v0, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 32
    :cond_6
    :goto_1
    new-instance p0, Lc/d/a/b/a/f/f;

    invoke-direct {p0, v0}, Lc/d/a/b/a/f/f;-><init>(Ljava/io/File;)V

    return-object p0

    .line 33
    :cond_7
    new-instance p0, Lc/d/a/b/a/d/a;

    const/16 p1, 0x3fd

    new-instance v0, Ljava/io/IOException;

    const-string v1, "path must be not empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw p0
.end method

.method public static a(Lc/d/a/b/a/h/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Disposition"

    .line 14
    invoke-interface {p0, v0}, Lc/d/a/b/a/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lc/d/a/b/a/j/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p1}, Lc/d/a/b/a/j/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s.temp"

    .line 59
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lc/d/a/b/a/j/d;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "bytes is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_2

    if-ltz p1, :cond_1

    add-int v0, p1, p2

    .line 3
    array-length v1, p0

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, p2, 0x2

    .line 4
    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p2, :cond_0

    add-int v5, v3, p1

    .line 5
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    .line 6
    sget-object v7, Lc/d/a/b/a/j/d;->e:[C

    shr-int/lit8 v8, v5, 0x4

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 7
    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/b;

    if-nez v3, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 38
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->t()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->t()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 40
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/d/a/b/a/f/b;

    .line 41
    invoke-virtual {v6, v3}, Lc/d/a/b/a/f/b;->a(Lc/d/a/b/a/f/b;)V

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v3, v4}, Lc/d/a/b/a/f/b;->a(Ljava/util/List;)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/a/f/b;

    if-eqz v4, :cond_5

    .line 44
    invoke-virtual {v4}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_4

    .line 45
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {v4, v5}, Lc/d/a/b/a/f/b;->a(Ljava/util/List;)V

    .line 47
    :cond_4
    invoke-virtual {v3, v4}, Lc/d/a/b/a/f/b;->a(Lc/d/a/b/a/f/b;)V

    .line 48
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_5
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_6

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->b()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    :cond_6
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 54
    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 55
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 56
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 57
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move-object p0, v1

    :goto_3
    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 218
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/f/e;

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 221
    new-instance p0, Lc/d/a/b/a/f/e;

    const-string v1, "If-Match"

    invoke-direct {p0, v1, p1}, Lc/d/a/b/a/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_2
    new-instance p0, Lc/d/a/b/a/f/e;

    const-string p1, "Accept-Encoding"

    const-string v1, "identity"

    invoke-direct {p0, p1, v1}, Lc/d/a/b/a/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object p0, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "range CurrentOffset:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " EndOffset:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    cmp-long p0, p4, p0

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_3

    new-array p0, p1, [Ljava/lang/Object;

    .line 224
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "bytes=%s-"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 225
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "bytes=%s-%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 226
    :goto_1
    new-instance p1, Lc/d/a/b/a/f/e;

    const-string p2, "Range"

    invoke-direct {p1, p2, p0}, Lc/d/a/b/a/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Lc/d/a/b/a/f/b;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;",
            "Ljava/lang/String;",
            "Lc/d/a/b/a/f/b;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-virtual {p2}, Lc/d/a/b/a/f/b;->n()J

    move-result-wide v2

    invoke-virtual {p2}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lc/d/a/b/a/j/d;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(IZLc/d/a/b/a/d/a;)V
    .locals 3

    .line 187
    sget-object v0, Lc/d/a/b/a/j/d;->c:Landroid/util/SparseArray;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-object v1, Lc/d/a/b/a/j/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 189
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/c/f;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 190
    invoke-interface {v2}, Lc/d/a/b/a/c/f;->a()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {v2, p2}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    goto :goto_0

    .line 192
    :cond_2
    sget-object p1, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTempSaveCallback id:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object p1, Lc/d/a/b/a/j/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lc/d/a/b/a/f/c;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/j/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lc/d/a/b/a/j/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/c/e0;Lc/d/a/b/a/c/f;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 129
    sget-object v3, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveFileAsTargetName targetName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_0
    sget-object v4, Lc/d/a/b/a/j/d;->c:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    sget-object v5, Lc/d/a/b/a/j/d;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_0
    if-eqz v5, :cond_3

    .line 132
    sget-object v0, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    const-string v5, "has another same task is saving temp file"

    invoke-static {v0, v5}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 133
    sget-object v0, Lc/d/a/b/a/j/d;->d:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget-object v5, Lc/d/a/b/a/j/d;->d:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    monitor-exit v4

    return-void

    .line 138
    :cond_3
    sget-object v5, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveTempFileStatusMap put id:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v5, Lc/d/a/b/a/j/d;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v6

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v9, 0x5

    const/16 v10, 0x3ed

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x4

    if-eqz v6, :cond_a

    .line 144
    sget-object v6, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    const-string v15, "targetFile exist"

    invoke-static {v6, v15}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->H()Lc/d/a/b/a/a/i;

    move-result-object v6

    .line 146
    sget-object v15, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    if-ne v6, v15, :cond_5

    .line 147
    sget-object v6, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    const-string v10, "tempFile not exist , targetFile exists and md5 check valid"

    invoke-static {v6, v10}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 148
    invoke-interface/range {p2 .. p2}, Lc/d/a/b/a/c/f;->a()V

    .line 149
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v6

    invoke-static {v6, v7, v11}, Lc/d/a/b/a/j/d;->a(IZLc/d/a/b/a/d/a;)V

    goto/16 :goto_2

    .line 150
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_7

    .line 151
    new-instance v15, Lc/d/a/b/a/d/a;

    const-string v11, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile is not exist and target file is exist but md5 verify invalid :%s"

    new-array v3, v9, [Ljava/lang/Object;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v8

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v7

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v13

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v12

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v14

    .line 153
    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v10, v3}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    if-eqz v2, :cond_6

    .line 154
    invoke-interface {v2, v15}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    .line 155
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-static {v3, v8, v15}, Lc/d/a/b/a/j/d;->a(IZLc/d/a/b/a/d/a;)V

    move v3, v8

    goto :goto_1

    :cond_7
    move v3, v7

    .line 156
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_d

    if-nez v3, :cond_8

    if-eqz v0, :cond_d

    .line 157
    new-instance v6, Lc/d/a/b/a/d/a;

    const-string v10, "tempFile is not exist and target file is exist but md5 verify invalid, delete target file failed"

    const/16 v11, 0x40e

    invoke-direct {v6, v11, v10}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v10

    invoke-static {v0, v1, v6, v10}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    goto :goto_3

    .line 158
    :cond_8
    new-instance v3, Lc/d/a/b/a/d/a;

    const/16 v10, 0x40d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "delete targetPath file existed with md5 check invalid status:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed!"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v10, v6}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    if-eqz v2, :cond_9

    .line 159
    invoke-interface {v2, v3}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    .line 160
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v6

    invoke-static {v6, v8, v3}, Lc/d/a/b/a/j/d;->a(IZLc/d/a/b/a/d/a;)V

    goto :goto_2

    .line 161
    :cond_a
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    .line 162
    new-instance v3, Lc/d/a/b/a/d/a;

    const-string v6, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile is not exist"

    new-array v11, v14, [Ljava/lang/Object;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v8

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v7

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v12

    .line 164
    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v10, v6}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    if-eqz v2, :cond_b

    .line 165
    invoke-interface {v2, v3}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    .line 166
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v6

    invoke-static {v6, v8, v3}, Lc/d/a/b/a/j/d;->a(IZLc/d/a/b/a/d/a;)V

    :goto_2
    move v3, v8

    goto :goto_3

    :cond_c
    move v3, v7

    :cond_d
    :goto_3
    if-eqz v3, :cond_14

    .line 167
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lc/d/a/b/a/j/d;->a(Ljava/io/File;Ljava/lang/String;)Lc/d/a/b/a/a/i;

    move-result-object v3

    .line 168
    sget-object v6, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    if-eq v3, v6, :cond_f

    .line 169
    new-instance v5, Lc/d/a/b/a/d/a;

    const-string v6, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile md5 is invalid : %s"

    new-array v9, v9, [Ljava/lang/Object;

    .line 170
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v13

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v12

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v14

    .line 171
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x40e

    invoke-direct {v5, v6, v3}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    if-eqz v2, :cond_e

    .line 172
    invoke-interface {v2, v5}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    .line 173
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-static {v3, v8, v5}, Lc/d/a/b/a/j/d;->a(IZLc/d/a/b/a/d/a;)V

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_14

    if-eqz v0, :cond_14

    .line 175
    new-instance v3, Lc/d/a/b/a/d/a;

    const-string v4, "tempFile md5 is invalid ,but delete failed"

    const/16 v5, 0x40e

    invoke-direct {v3, v5, v4}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_5

    .line 176
    :cond_f
    :try_start_3
    invoke-static {v4, v5}, Lc/d/a/b/a/j/d;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_3
    .catch Lc/d/a/b/a/d/a; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    xor-int/2addr v0, v7

    const/4 v3, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v8

    :goto_4
    if-eqz v0, :cond_12

    if-nez v3, :cond_10

    .line 177
    :try_start_4
    new-instance v3, Lc/d/a/b/a/d/a;

    const-string v0, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s)"

    new-array v4, v14, [Ljava/lang/Object;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    .line 179
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x40e

    invoke-direct {v3, v4, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    :cond_10
    if-eqz v2, :cond_11

    .line 180
    invoke-interface {v2, v3}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    .line 181
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-static {v0, v8, v3}, Lc/d/a/b/a/j/d;->a(IZLc/d/a/b/a/d/a;)V

    goto :goto_5

    :cond_12
    if-eqz v2, :cond_13

    .line 182
    invoke-interface/range {p2 .. p2}, Lc/d/a/b/a/c/f;->a()V

    .line 183
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Lc/d/a/b/a/j/d;->a(IZLc/d/a/b/a/d/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 184
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 185
    sget-object v1, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveFileAsTargetName throwable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_14

    .line 186
    new-instance v1, Lc/d/a/b/a/d/a;

    const-string v3, "saveFileAsTargetName"

    invoke-static {v0, v3}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x40e

    invoke-direct {v1, v3, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    :cond_14
    :goto_5
    return-void
.end method

.method public static a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/c/f;)V
    .locals 9

    .line 87
    sget-object v0, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFileAsTargetName targetName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40e

    .line 88
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v3

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v3

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "targetFile exist"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_3

    .line 92
    :try_start_1
    sget-object v4, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    const-string v8, "tempFile not exist"

    invoke-static {v4, v8}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    sget-object v4, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->H()Lc/d/a/b/a/a/i;

    move-result-object v4

    .line 96
    sget-object v5, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    if-ne v4, v5, :cond_1

    .line 97
    sget-object p0, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    const-string v1, "tempFile not exist , targetFile exists and md5 check valid"

    invoke-static {p0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p1}, Lc/d/a/b/a/c/f;->a()V

    :cond_0
    return-void

    :cond_1
    if-eqz v3, :cond_a

    .line 99
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->E()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 100
    invoke-virtual {v3, p1}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/c/f;)V

    return-void

    .line 101
    :cond_2
    sget-object v4, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    const-string v5, "targetFile not exist"

    invoke-static {v4, v5}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    .line 102
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->E()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 103
    invoke-virtual {v3, p1}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/c/f;)V

    return-void

    .line 104
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 105
    sget-object v4, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->H()Lc/d/a/b/a/a/i;

    move-result-object v4

    .line 107
    sget-object v5, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    if-ne v4, v5, :cond_5

    .line 108
    sget-object p0, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    const-string v1, "tempFile exist , targetFile exists and md5 check valid"

    invoke-static {p0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 109
    invoke-interface {p1}, Lc/d/a/b/a/c/f;->a()V

    :cond_4
    return-void

    :cond_5
    if-eqz v3, :cond_6

    .line 110
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->E()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 111
    invoke-virtual {v3, p1}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/c/f;)V

    return-void

    :cond_6
    if-eqz v3, :cond_7

    .line 112
    invoke-virtual {v3, v7}, Lc/d/a/b/a/f/c;->g(Z)V

    .line 113
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_a

    .line 114
    new-instance p0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x40d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete targetPath file existed with md5 check invalid status:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    if-eqz p1, :cond_8

    .line 115
    invoke-interface {p1, p0}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    :cond_8
    if-eqz v3, :cond_9

    .line 116
    invoke-virtual {v3, v6, p0}, Lc/d/a/b/a/f/c;->a(ZLc/d/a/b/a/d/a;)V

    :cond_9
    return-void

    :cond_a
    if-eqz v3, :cond_b

    .line 117
    invoke-virtual {v3, v7}, Lc/d/a/b/a/f/c;->g(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    const/4 v4, 0x0

    .line 118
    :try_start_2
    invoke-static {v1, v2}, Lc/d/a/b/a/j/d;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v2
    :try_end_2
    .catch Lc/d/a/b/a/d/a; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr v2, v7

    move-object v5, v4

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v5, v2

    move v2, v6

    :goto_0
    if-eqz v2, :cond_e

    if-nez v5, :cond_c

    .line 119
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 120
    new-instance v5, Lc/d/a/b/a/d/a;

    const-string v2, "Can\'t save the temp downloaded file(%s/%s) to the target file(%s/%s), temp file is exist: %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x3

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v7

    const/4 p0, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, p0

    .line 122
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, v0, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 123
    invoke-interface {p1, v5}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    :cond_d
    if-eqz v3, :cond_10

    .line 124
    invoke-virtual {v3, v6, v5}, Lc/d/a/b/a/f/c;->a(ZLc/d/a/b/a/d/a;)V

    goto :goto_1

    :cond_e
    if-eqz p1, :cond_f

    .line 125
    invoke-interface {p1}, Lc/d/a/b/a/c/f;->a()V

    :cond_f
    if-eqz v3, :cond_10

    .line 126
    invoke-virtual {v3, v7, v4}, Lc/d/a/b/a/f/c;->a(ZLc/d/a/b/a/d/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 127
    sget-object v1, Lc/d/a/b/a/j/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFileAsTargetName throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 128
    new-instance v1, Lc/d/a/b/a/d/a;

    const-string v2, "saveFileAsTargetName"

    invoke-static {p0, v2}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V

    :cond_10
    :goto_1
    return-void
.end method

.method public static a(Lc/d/a/b/a/f/c;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_4

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    new-instance p0, Lc/d/a/b/a/d/a;

    const/16 p1, 0x40d

    const-string v0, "targetPath file exists but can\'t delete"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw p0

    .line 200
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Lc/d/a/b/a/j/d;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_3

    return-void

    .line 201
    :cond_3
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v2, 0x3e9

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 202
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v1

    const/4 p1, 0x2

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x3

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, p1

    const-string p0, "Can\'t copy the exist file(%s/%s) to the target file(%s/%s)"

    .line 203
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 237
    :goto_0
    instance-of v0, p0, Lc/d/a/b/a/d/a;

    if-nez v0, :cond_a

    .line 238
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_9

    .line 239
    invoke-static {p0}, Lc/d/a/b/a/j/d;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 240
    invoke-static {p0}, Lc/d/a/b/a/j/d;->e(Ljava/lang/Throwable;)Z

    move-result v0

    const/16 v1, 0x3ec

    if-nez v0, :cond_7

    .line 241
    invoke-static {p0}, Lc/d/a/b/a/j/d;->f(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 242
    invoke-static {p0}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 243
    invoke-static {p0}, Lc/d/a/b/a/j/d;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 244
    invoke-static {p0}, Lc/d/a/b/a/j/d;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 245
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 246
    invoke-static {p0}, Lc/d/a/b/a/j/d;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x3ee

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x3ff

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 249
    :cond_2
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x3e8

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 250
    :cond_3
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x411

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 251
    :cond_4
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x419

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 252
    :cond_5
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x417

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 253
    :cond_6
    new-instance v0, Lc/d/a/b/a/d/c;

    const/16 v2, 0x1a0

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lc/d/a/b/a/d/c;-><init>(IILjava/lang/String;)V

    throw v0

    .line 254
    :cond_7
    new-instance v0, Lc/d/a/b/a/d/c;

    const/16 v2, 0x19c

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lc/d/a/b/a/d/c;-><init>(IILjava/lang/String;)V

    throw v0

    .line 255
    :cond_8
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x418

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 256
    :cond_9
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x3f3

    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 257
    :cond_a
    check-cast p0, Lc/d/a/b/a/d/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d/a/b/a/d/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/d/a/b/a/d/a;->a(Ljava/lang/String;)V

    .line 258
    throw p0
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xce

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    .line 227
    invoke-static {p1, p2}, Lc/d/a/b/a/j/d;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(J)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(JJ)Z
    .locals 2

    const-wide/32 v0, 0x10000

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const-wide/16 p0, 0x1f4

    cmp-long p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 228
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    return v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 230
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_2

    move v0, v1

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(Lc/d/a/b/a/d/a;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 235
    invoke-virtual {p0}, Lc/d/a/b/a/d/a;->a()I

    move-result p0

    const/16 v0, 0x41b

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lc/d/a/b/a/f/c;ZLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lc/d/a/b/a/j/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/a/i;

    move-result-object p0

    sget-object p1, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    .line 204
    invoke-static {p0, p1, v0}, Lc/d/a/b/a/j/d;->a(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 3

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 205
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 207
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Lc/d/a/b/a/d/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Destination \'"

    if-eqz v0, :cond_2

    .line 208
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    new-instance p0, Lc/d/a/b/a/d/a;

    const/16 p1, 0x41d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' directory cannot be created"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw p0

    .line 210
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 211
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' exists but is read-only and delete failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_4
    :goto_1
    invoke-static {p0, p1, p2}, Lc/d/a/b/a/j/d;->b(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_1
    .catch Lc/d/a/b/a/d/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "CopyFile"

    .line 213
    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :catch_0
    move-exception p0

    .line 214
    throw p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 232
    :cond_0
    invoke-static {p0}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 233
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-nez p0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "time out"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Time-out"

    .line 234
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 5

    .line 6
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p0, v1, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, p0

    mul-long v0, v1, v3

    :goto_0
    return-wide v0

    :catchall_0
    move-exception p0

    .line 10
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x41c

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x41a

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)J"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/f/b;

    .line 4
    invoke-virtual {v2}, Lc/d/a/b/a/f/b;->p()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 37
    sget-object v0, Lc/d/a/b/a/j/d;->b:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 39
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 40
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_3

    .line 41
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 42
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_1

    .line 43
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Process"

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object p0, Lc/d/a/b/a/j/d;->b:Ljava/lang/String;

    .line 46
    sget-object p0, Lc/d/a/b/a/j/d;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :cond_3
    invoke-static {}, Lc/d/a/b/a/j/d;->f()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/d/a/b/a/j/d;->b:Ljava/lang/String;

    .line 49
    sget-object p0, Lc/d/a/b/a/j/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 2
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v1, v0, p0

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "%s%s%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 60
    invoke-static {p0}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/io/File;Ljava/io/File;Z)V
    .locals 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' exists but is a directory"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 15
    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 16
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 17
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 18
    :try_start_3
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v14

    :goto_1
    cmp-long v3, v16, v12

    if-gez v3, :cond_4

    sub-long v3, v12, v16

    const-wide/32 v5, 0x1e00000

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    move-wide v7, v5

    goto :goto_2

    :cond_2
    move-wide v7, v3

    :goto_2
    move-object v3, v11

    move-object v4, v9

    move-wide/from16 v5, v16

    .line 19
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v5, v3, v14

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    add-long v16, v16, v3

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    .line 20
    :try_start_4
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_5
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v9, :cond_6

    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :cond_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 21
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 22
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_8

    if-eqz p2, :cond_7

    .line 23
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    :cond_7
    return-void

    .line 24
    :cond_8
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to copy full contents from \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' to \'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' Expected length: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " Actual: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 25
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v11, :cond_9

    .line 26
    :try_start_8
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 27
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 28
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 29
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    if-eqz v9, :cond_a

    .line 30
    :try_start_e
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v4, v0

    :try_start_f
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 31
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception v0

    move-object v3, v0

    .line 32
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_7

    :catchall_b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v3
.end method

.method public static b()Z
    .locals 3

    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ":"

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 52
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Lc/d/a/b/a/d/a;)Z
    .locals 2

    .line 58
    instance-of v0, p0, Lc/d/a/b/a/d/c;

    if-eqz v0, :cond_1

    check-cast p0, Lc/d/a/b/a/d/c;

    invoke-virtual {p0}, Lc/d/a/b/a/d/c;->c()I

    move-result v0

    const/16 v1, 0x19c

    if-eq v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lc/d/a/b/a/d/c;->c()I

    move-result p0

    const/16 v0, 0x1a0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lc/d/a/b/a/f/c;)Z
    .locals 2

    .line 5
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->p()Z

    move-result v0

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    .line 33
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-static {p0, p1}, Lc/d/a/b/a/j/d;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 53
    :cond_0
    invoke-static {p0}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 54
    instance-of v2, p0, Lc/d/a/b/a/d/c;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 55
    check-cast p0, Lc/d/a/b/a/d/c;

    if-eqz p0, :cond_1

    .line 56
    invoke-virtual {p0}, Lc/d/a/b/a/d/c;->c()I

    move-result p0

    const/16 v2, 0x193

    if-eq p0, v2, :cond_2

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "403"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v3

    .line 57
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "Forbidden"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MD5"

    .line 4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 6
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lc/d/a/b/a/j/d;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method public static c()Z
    .locals 2

    .line 8
    invoke-static {}, Lc/d/a/b/a/j/d;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c(I)Z
    .locals 1

    const/16 v0, 0xce

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 9
    :cond_0
    invoke-static {p0}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "network not available"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static d(I)Lc/d/a/b/a/a/h;
    .locals 2

    .line 12
    sget-object v0, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    .line 13
    sget-object v1, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 14
    sget-object v0, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 16
    sget-object v0, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 3

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":downloader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-static {p0}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Exception in connect"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_1

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Z
    .locals 2

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 11
    :cond_0
    invoke-static {p0}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Precondition Failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static f()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 11
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cmdline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "iso-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-lez v3, :cond_0

    int-to-char v3, v3

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Process"

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get processName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-object v1, v0

    :catchall_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    sget-object v1, Lc/d/a/b/a/j/d;->f:Ljava/util/regex/Pattern;

    if-nez v1, :cond_1

    const-string v1, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    .line 2
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lc/d/a/b/a/j/d;->f:Ljava/util/regex/Pattern;

    .line 3
    :cond_1
    sget-object v1, Lc/d/a/b/a/j/d;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    sget-object v1, Lc/d/a/b/a/j/d;->g:Ljava/util/regex/Pattern;

    if-nez v1, :cond_3

    const-string v1, "attachment;\\s*filename\\s*=\\s*(.*)"

    .line 7
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lc/d/a/b/a/j/d;->g:Ljava/util/regex/Pattern;

    .line 8
    :cond_3
    sget-object v1, Lc/d/a/b/a/j/d;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_4
    return-object v0
.end method

.method public static f(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 20
    :cond_0
    invoke-static {p0}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Requested Range Not Satisfiable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static g(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "throwable getMsg error"

    return-object p0
.end method

.method private static h(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ENOSPC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
