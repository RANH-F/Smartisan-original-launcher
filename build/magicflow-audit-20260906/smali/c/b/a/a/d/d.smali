.class public Lc/b/a/a/d/d;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lc/b/a/a/g/c;


# static fields
.field protected static final c:Z


# instance fields
.field protected final a:Lc/b/a/a/g/a;

.field protected final b:Lc/b/a/a/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lc/b/a/a/d/r;->b:Z

    sput-boolean v0, Lc/b/a/a/d/d;->c:Z

    return-void
.end method

.method public constructor <init>(Lc/b/a/a/g/a;)V
    .locals 2

    .line 1
    new-instance v0, Lc/b/a/a/d/e;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lc/b/a/a/d/e;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lc/b/a/a/d/d;-><init>(Lc/b/a/a/g/a;Lc/b/a/a/d/e;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/a/g/a;Lc/b/a/a/d/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/b/a/a/d/d;->a:Lc/b/a/a/g/a;

    .line 4
    iput-object p2, p0, Lc/b/a/a/d/d;->b:Lc/b/a/a/d/e;

    return-void
.end method

.method private static a(Ljava/util/List;Lc/b/a/a/g/b$a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/a/a/d/a;",
            ">;",
            "Lc/b/a/a/g/b$a;",
            ")",
            "Ljava/util/List<",
            "Lc/b/a/a/d/a;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    if-eqz p0, :cond_0

    .line 85
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/a/d/a;

    .line 87
    invoke-virtual {v2}, Lc/b/a/a/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    .line 89
    iget-object p0, p1, Lc/b/a/a/g/b$a;->h:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 90
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 91
    iget-object p0, p1, Lc/b/a/a/g/b$a;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/a/d/a;

    .line 92
    invoke-virtual {p1}, Lc/b/a/a/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_2
    iget-object p0, p1, Lc/b/a/a/g/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 95
    iget-object p0, p1, Lc/b/a/a/g/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 97
    new-instance v2, Lc/b/a/a/d/a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lc/b/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private a(Lc/b/a/a/g/b$a;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/g/b$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    iget-object v1, p1, Lc/b/a/a/g/b$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "If-None-Match"

    .line 60
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    iget-wide v1, p1, Lc/b/a/a/g/b$a;->d:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 62
    invoke-static {v1, v2}, Lc/b/a/a/e/c;->a(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "If-Modified-Since"

    .line 63
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private a(JLc/b/a/a/d/c;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lc/b/a/a/d/c<",
            "*>;[BI)V"
        }
    .end annotation

    .line 44
    sget-boolean v0, Lc/b/a/a/d/d;->c:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 45
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    if-eqz p4, :cond_1

    array-length p2, p4

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    aput-object p2, v0, p1

    const/4 p1, 0x3

    .line 47
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    .line 48
    invoke-virtual {p3}, Lc/b/a/a/d/c;->getRetryPolicy()Lc/b/a/a/g/e;

    move-result-object p2

    invoke-interface {p2}, Lc/b/a/a/g/e;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 49
    invoke-static {p1, v0}, Lc/b/a/a/d/r;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/b/a/a/d/c<",
            "*>;",
            "Lc/b/a/a/f/a;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getRetryPolicy()Lc/b/a/a/g/e;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getTimeoutMs()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 52
    :try_start_0
    invoke-interface {v0, p2}, Lc/b/a/a/g/e;->a(Lc/b/a/a/f/a;)V
    :try_end_0
    .catch Lc/b/a/a/f/a; {:try_start_0 .. :try_end_0} :catch_0

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 56
    throw p2
.end method

.method private a(Ljava/io/InputStream;I)[B
    .locals 5

    .line 68
    new-instance v0, Lc/b/a/a/d/f;

    iget-object v1, p0, Lc/b/a/a/d/d;->b:Lc/b/a/a/d/e;

    invoke-direct {v0, v1, p2}, Lc/b/a/a/d/f;-><init>(Lc/b/a/a/d/e;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 69
    :try_start_0
    iget-object v3, p0, Lc/b/a/a/d/d;->b:Lc/b/a/a/d/e;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lc/b/a/a/d/e;->a(I)[B

    move-result-object v2

    .line 70
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 71
    invoke-virtual {v0, v2, v1, v3}, Lc/b/a/a/d/f;->write([BII)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 73
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {p2, p1}, Lc/b/a/a/d/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_1
    :goto_1
    iget-object p1, p0, Lc/b/a/a/d/d;->b:Lc/b/a/a/d/e;

    invoke-virtual {p1, v2}, Lc/b/a/a/d/e;->a([B)V

    .line 76
    invoke-virtual {v0}, Lc/b/a/a/d/f;->close()V

    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_2

    .line 77
    :cond_2
    :try_start_2
    new-instance v3, Lc/b/a/a/f/g;

    invoke-direct {v3}, Lc/b/a/a/f/g;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p1, :cond_3

    .line 78
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 79
    invoke-static {p2, p1}, Lc/b/a/a/d/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_3
    :goto_3
    iget-object p1, p0, Lc/b/a/a/d/d;->b:Lc/b/a/a/d/e;

    invoke-virtual {p1, v2}, Lc/b/a/a/d/e;->a([B)V

    .line 81
    invoke-virtual {v0}, Lc/b/a/a/d/f;->close()V

    .line 82
    throw v3
.end method


# virtual methods
.method public a(Lc/b/a/a/d/c;)Lc/b/a/a/d/m;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;)",
            "Lc/b/a/a/d/m;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    :catchall_0
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lc/b/a/a/d/c;->getCacheEntry()Lc/b/a/a/g/b$a;

    move-result-object v0

    invoke-direct {v7, v0}, Lc/b/a/a/d/d;->a(Lc/b/a/a/g/b$a;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v3, v7, Lc/b/a/a/d/d;->a:Lc/b/a/a/g/a;

    invoke-interface {v3, v8, v0}, Lc/b/a/a/g/a;->performRequest(Lc/b/a/a/d/c;Ljava/util/Map;)Lc/b/a/a/d/b;

    move-result-object v11
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 5
    :try_start_1
    invoke-virtual {v11}, Lc/b/a/a/d/b;->d()I

    move-result v13

    .line 6
    invoke-virtual {v11}, Lc/b/a/a/d/b;->c()Ljava/util/List;

    move-result-object v12
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v0, 0x130

    if-ne v13, v0, :cond_4

    .line 7
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lc/b/a/a/d/c;->getCacheEntry()Lc/b/a/a/g/b$a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lc/b/a/a/d/m;

    const/16 v15, 0x130

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v18, v3, v9

    move-object v14, v0

    move-object/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Lc/b/a/a/d/m;-><init>(I[BZJLjava/util/List;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v11, :cond_1

    .line 10
    :try_start_3
    invoke-virtual {v11}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v11}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_1
    return-object v0

    .line 12
    :cond_2
    :try_start_4
    invoke-static {v12, v0}, Lc/b/a/a/d/d;->a(Ljava/util/List;Lc/b/a/a/g/b$a;)Ljava/util/List;

    move-result-object v19

    .line 13
    new-instance v1, Lc/b/a/a/d/m;

    const/16 v14, 0x130

    iget-object v15, v0, Lc/b/a/a/g/b$a;->a:[B

    const/16 v16, 0x1

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v17, v3, v9

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lc/b/a/a/d/m;-><init>(I[BZJLjava/util/List;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v11, :cond_3

    .line 15
    :try_start_5
    invoke-virtual {v11}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v11}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    move-object v13, v2

    move-object v2, v11

    move-object/from16 v17, v12

    goto/16 :goto_3

    .line 17
    :cond_4
    :try_start_6
    invoke-virtual {v7, v8, v11}, Lc/b/a/a/d/d;->a(Lc/b/a/a/d/c;Lc/b/a/a/d/b;)[B

    move-result-object v19
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 18
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    move v6, v13

    .line 19
    invoke-direct/range {v1 .. v6}, Lc/b/a/a/d/d;->a(JLc/b/a/a/d/c;[BI)V

    const/16 v0, 0xc8

    if-lt v13, v0, :cond_6

    const/16 v0, 0x12b

    if-gt v13, v0, :cond_6

    .line 20
    new-instance v0, Lc/b/a/a/d/m;

    const/4 v15, 0x0

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    sub-long v16, v1, v9

    move-object v1, v12

    move-object v12, v0

    move-object/from16 v14, v19

    move-object/from16 v18, v1

    :try_start_8
    invoke-direct/range {v12 .. v18}, Lc/b/a/a/d/m;-><init>(I[BZJLjava/util/List;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v11, :cond_5

    .line 22
    :try_start_9
    invoke-virtual {v11}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v11}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    :cond_5
    return-object v0

    :cond_6
    move-object v1, v12

    .line 24
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v12

    :goto_1
    move-object/from16 v17, v1

    move-object v2, v11

    move-object/from16 v13, v19

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v12

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v2, v11

    goto/16 :goto_a

    :catch_4
    move-exception v0

    :goto_2
    move-object/from16 v17, v1

    move-object v13, v2

    move-object v2, v11

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v2, v11

    goto/16 :goto_8

    :catch_6
    move-object v2, v11

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    goto/16 :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v17, v1

    move-object v13, v2

    :goto_3
    if-eqz v2, :cond_e

    .line 25
    :try_start_b
    invoke-virtual {v2}, Lc/b/a/a/d/b;->d()I

    move-result v0

    const-string v1, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lc/b/a/a/d/r;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_d

    .line 27
    new-instance v1, Lc/b/a/a/d/m;

    const/4 v14, 0x0

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v15, v3, v9

    move-object v11, v1

    move v12, v0

    invoke-direct/range {v11 .. v17}, Lc/b/a/a/d/m;-><init>(I[BZJLjava/util/List;)V

    const/16 v3, 0x191

    if-eq v0, v3, :cond_c

    const/16 v3, 0x193

    if-ne v0, v3, :cond_7

    goto :goto_5

    :cond_7
    const/16 v3, 0x190

    if-lt v0, v3, :cond_9

    const/16 v3, 0x1f3

    if-le v0, v3, :cond_8

    goto :goto_4

    .line 29
    :cond_8
    new-instance v0, Lc/b/a/a/f/c;

    invoke-direct {v0, v1}, Lc/b/a/a/f/c;-><init>(Lc/b/a/a/d/m;)V

    throw v0

    :cond_9
    :goto_4
    const/16 v3, 0x1f4

    if-lt v0, v3, :cond_b

    const/16 v3, 0x257

    if-gt v0, v3, :cond_b

    .line 30
    invoke-virtual/range {p1 .. p1}, Lc/b/a/a/d/c;->shouldRetryServerErrors()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "server"

    .line 31
    new-instance v3, Lc/b/a/a/f/g;

    invoke-direct {v3, v1}, Lc/b/a/a/f/g;-><init>(Lc/b/a/a/d/m;)V

    invoke-static {v0, v8, v3}, Lc/b/a/a/d/d;->a(Ljava/lang/String;Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V

    goto :goto_6

    .line 32
    :cond_a
    new-instance v0, Lc/b/a/a/f/g;

    invoke-direct {v0, v1}, Lc/b/a/a/f/g;-><init>(Lc/b/a/a/d/m;)V

    throw v0

    .line 33
    :cond_b
    new-instance v0, Lc/b/a/a/f/g;

    invoke-direct {v0, v1}, Lc/b/a/a/f/g;-><init>(Lc/b/a/a/d/m;)V

    throw v0

    :cond_c
    :goto_5
    const-string v0, "auth"

    .line 34
    new-instance v3, Lc/b/a/a/f/b;

    invoke-direct {v3, v1}, Lc/b/a/a/f/b;-><init>(Lc/b/a/a/d/m;)V

    invoke-static {v0, v8, v3}, Lc/b/a/a/d/d;->a(Ljava/lang/String;Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V

    goto :goto_6

    :cond_d
    const-string v0, "network"

    .line 35
    new-instance v1, Lc/b/a/a/f/d;

    invoke-direct {v1}, Lc/b/a/a/f/d;-><init>()V

    invoke-static {v0, v8, v1}, Lc/b/a/a/d/d;->a(Ljava/lang/String;Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_6
    if-eqz v2, :cond_0

    .line 36
    :try_start_c
    invoke-virtual {v2}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    :goto_7
    invoke-virtual {v2}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 38
    :cond_e
    :try_start_d
    new-instance v1, Lc/b/a/a/f/e;

    invoke-direct {v1, v0}, Lc/b/a/a/f/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    .line 39
    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    :goto_9
    const-string v0, "socket"

    .line 40
    new-instance v1, Lc/b/a/a/f/h;

    invoke-direct {v1}, Lc/b/a/a/f/h;-><init>()V

    invoke-static {v0, v8, v1}, Lc/b/a/a/d/d;->a(Ljava/lang/String;Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v2, :cond_0

    .line 41
    :try_start_e
    invoke-virtual {v2}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_7

    :goto_a
    if-eqz v2, :cond_f

    :try_start_f
    invoke-virtual {v2}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 42
    invoke-virtual {v2}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 43
    :catchall_6
    :cond_f
    throw v0
.end method

.method protected a(Lc/b/a/a/d/c;Lc/b/a/a/d/b;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;",
            "Lc/b/a/a/d/b;",
            ")[B"
        }
    .end annotation

    .line 64
    instance-of v0, p1, Lc/b/a/a/b/c;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lc/b/a/a/b/c;

    invoke-virtual {p1, p2}, Lc/b/a/a/b/c;->a(Lc/b/a/a/d/b;)[B

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p2}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p2}, Lc/b/a/a/d/b;->b()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lc/b/a/a/d/d;->a(Ljava/io/InputStream;I)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [B

    :goto_0
    return-object p1
.end method
