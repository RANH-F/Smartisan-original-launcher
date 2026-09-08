.class public final Ld/f0/g/j;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Ld/t;


# instance fields
.field private final a:Ld/v;

.field private final b:Z

.field private c:Ld/f0/f/g;

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ld/v;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/f0/g/j;->a:Ld/v;

    .line 3
    iput-boolean p2, p0, Ld/f0/g/j;->b:Z

    return-void
.end method

.method private a(Ld/s;)Ld/a;
    .locals 17

    move-object/from16 v0, p0

    .line 39
    invoke-virtual/range {p1 .. p1}, Ld/s;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, v0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v1}, Ld/v;->z()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 41
    iget-object v1, v0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v1}, Ld/v;->n()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 42
    iget-object v3, v0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v3}, Ld/v;->b()Ld/g;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 43
    :goto_0
    new-instance v1, Ld/a;

    invoke-virtual/range {p1 .. p1}, Ld/s;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ld/s;->j()I

    move-result v6

    iget-object v2, v0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v2}, Ld/v;->h()Ld/o;

    move-result-object v7

    iget-object v2, v0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v2}, Ld/v;->y()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Ld/f0/g/j;->a:Ld/v;

    .line 44
    invoke-virtual {v2}, Ld/v;->u()Ld/b;

    move-result-object v12

    iget-object v2, v0, Ld/f0/g/j;->a:Ld/v;

    .line 45
    invoke-virtual {v2}, Ld/v;->t()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v2}, Ld/v;->s()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v2}, Ld/v;->e()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v2}, Ld/v;->v()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Ld/a;-><init>(Ljava/lang/String;ILd/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ld/g;Ld/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private a(Ld/a0;)Ld/y;
    .locals 7

    if-eqz p1, :cond_12

    .line 57
    iget-object v0, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {v0}, Ld/f0/f/g;->c()Ld/f0/f/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Ld/i;->a()Ld/c0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 59
    :goto_0
    invoke-virtual {p1}, Ld/a0;->l()I

    move-result v2

    .line 60
    invoke-virtual {p1}, Ld/a0;->s()Ld/y;

    move-result-object v3

    invoke-virtual {v3}, Ld/y;->e()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    const-string v5, "GET"

    if-eq v2, v4, :cond_8

    const/16 v4, 0x134

    if-eq v2, v4, :cond_8

    const/16 v4, 0x191

    if-eq v2, v4, :cond_7

    const/16 v4, 0x197

    if-eq v2, v4, :cond_4

    const/16 v0, 0x198

    if-eq v2, v0, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 61
    :cond_1
    iget-object v2, p0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v2}, Ld/v;->x()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 62
    :cond_2
    invoke-virtual {p1}, Ld/a0;->s()Ld/y;

    move-result-object v2

    invoke-virtual {v2}, Ld/y;->a()Ld/z;

    .line 63
    invoke-virtual {p1}, Ld/a0;->q()Ld/a0;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 64
    invoke-virtual {p1}, Ld/a0;->q()Ld/a0;

    move-result-object v2

    invoke-virtual {v2}, Ld/a0;->l()I

    move-result v2

    if-ne v2, v0, :cond_3

    return-object v1

    .line 65
    :cond_3
    invoke-virtual {p1}, Ld/a0;->s()Ld/y;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    .line 66
    invoke-virtual {v0}, Ld/c0;->b()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_1

    .line 67
    :cond_5
    iget-object v1, p0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v1}, Ld/v;->t()Ljava/net/Proxy;

    move-result-object v1

    .line 68
    :goto_1
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_6

    .line 69
    iget-object v1, p0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v1}, Ld/v;->u()Ld/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ld/b;->a(Ld/c0;Ld/a0;)Ld/y;

    move-result-object p1

    return-object p1

    .line 70
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_7
    iget-object v1, p0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v1}, Ld/v;->a()Ld/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ld/b;->a(Ld/c0;Ld/a0;)Ld/y;

    move-result-object p1

    return-object p1

    .line 72
    :cond_8
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object v1

    .line 73
    :cond_9
    :pswitch_0
    iget-object v0, p0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v0}, Ld/v;->l()Z

    move-result v0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const-string v0, "Location"

    .line 74
    invoke-virtual {p1, v0}, Ld/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    .line 75
    :cond_b
    invoke-virtual {p1}, Ld/a0;->s()Ld/y;

    move-result-object v2

    invoke-virtual {v2}, Ld/y;->g()Ld/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Ld/s;->b(Ljava/lang/String;)Ld/s;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v1

    .line 76
    :cond_c
    invoke-virtual {v0}, Ld/s;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ld/a0;->s()Ld/y;

    move-result-object v4

    invoke-virtual {v4}, Ld/y;->g()Ld/s;

    move-result-object v4

    invoke-virtual {v4}, Ld/s;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 77
    iget-object v2, p0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v2}, Ld/v;->m()Z

    move-result v2

    if-nez v2, :cond_d

    return-object v1

    .line 78
    :cond_d
    invoke-virtual {p1}, Ld/a0;->s()Ld/y;

    move-result-object v2

    invoke-virtual {v2}, Ld/y;->f()Ld/y$a;

    move-result-object v2

    .line 79
    invoke-static {v3}, Ld/f0/g/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 80
    invoke-static {v3}, Ld/f0/g/f;->d(Ljava/lang/String;)Z

    move-result v4

    .line 81
    invoke-static {v3}, Ld/f0/g/f;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 82
    invoke-virtual {v2, v5, v1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    goto :goto_2

    :cond_e
    if-eqz v4, :cond_f

    .line 83
    invoke-virtual {p1}, Ld/a0;->s()Ld/y;

    move-result-object v1

    invoke-virtual {v1}, Ld/y;->a()Ld/z;

    move-result-object v1

    .line 84
    :cond_f
    invoke-virtual {v2, v3, v1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    :goto_2
    if-nez v4, :cond_10

    const-string v1, "Transfer-Encoding"

    .line 85
    invoke-virtual {v2, v1}, Ld/y$a;->a(Ljava/lang/String;)Ld/y$a;

    const-string v1, "Content-Length"

    .line 86
    invoke-virtual {v2, v1}, Ld/y$a;->a(Ljava/lang/String;)Ld/y$a;

    const-string v1, "Content-Type"

    .line 87
    invoke-virtual {v2, v1}, Ld/y$a;->a(Ljava/lang/String;)Ld/y$a;

    .line 88
    :cond_10
    invoke-direct {p0, p1, v0}, Ld/f0/g/j;->a(Ld/a0;Ld/s;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "Authorization"

    .line 89
    invoke-virtual {v2, p1}, Ld/y$a;->a(Ljava/lang/String;)Ld/y$a;

    .line 90
    :cond_11
    invoke-virtual {v2, v0}, Ld/y$a;->a(Ld/s;)Ld/y$a;

    invoke-virtual {v2}, Ld/y$a;->a()Ld/y;

    move-result-object p1

    return-object p1

    .line 91
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ld/a0;Ld/s;)Z
    .locals 2

    .line 92
    invoke-virtual {p1}, Ld/a0;->s()Ld/y;

    move-result-object p1

    invoke-virtual {p1}, Ld/y;->g()Ld/s;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ld/s;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ld/s;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Ld/s;->j()I

    move-result v0

    invoke-virtual {p2}, Ld/s;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p1}, Ld/s;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ld/s;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/io/IOException;Z)Z
    .locals 3

    .line 51
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 53
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 54
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    .line 55
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    .line 56
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private a(Ljava/io/IOException;ZLd/y;)Z
    .locals 2

    .line 46
    iget-object v0, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {v0, p1}, Ld/f0/f/g;->a(Ljava/io/IOException;)V

    .line 47
    iget-object v0, p0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v0}, Ld/v;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p3}, Ld/y;->a()Ld/z;

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2}, Ld/f0/g/j;->a(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 50
    :cond_2
    iget-object p1, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {p1}, Ld/f0/f/g;->d()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Ld/t$a;)Ld/a0;
    .locals 14

    .line 5
    invoke-interface {p1}, Ld/t$a;->d()Ld/y;

    move-result-object v0

    .line 6
    check-cast p1, Ld/f0/g/g;

    .line 7
    invoke-virtual {p1}, Ld/f0/g/g;->e()Ld/e;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Ld/f0/g/g;->g()Ld/p;

    move-result-object v8

    .line 9
    new-instance v9, Ld/f0/f/g;

    iget-object v1, p0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v1}, Ld/v;->d()Ld/j;

    move-result-object v2

    invoke-virtual {v0}, Ld/y;->g()Ld/s;

    move-result-object v1

    invoke-direct {p0, v1}, Ld/f0/g/j;->a(Ld/s;)Ld/a;

    move-result-object v3

    iget-object v6, p0, Ld/f0/g/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Ld/f0/f/g;-><init>(Ld/j;Ld/a;Ld/e;Ld/p;Ljava/lang/Object;)V

    iput-object v9, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, v9

    move-object v1, v10

    .line 10
    :goto_0
    iget-boolean v3, p0, Ld/f0/g/j;->e:Z

    if-nez v3, :cond_9

    .line 11
    :try_start_0
    iget-object v3, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {p1, v0, v3, v10, v10}, Ld/f0/g/g;->a(Ld/y;Ld/f0/f/g;Ld/f0/g/c;Ld/f0/f/c;)Ld/a0;

    move-result-object v0
    :try_end_0
    .catch Ld/f0/f/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0}, Ld/a0;->p()Ld/a0$a;

    move-result-object v0

    .line 13
    invoke-virtual {v1}, Ld/a0;->p()Ld/a0$a;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v10}, Ld/a0$a;->a(Ld/b0;)Ld/a0$a;

    .line 15
    invoke-virtual {v1}, Ld/a0$a;->a()Ld/a0;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ld/a0$a;->c(Ld/a0;)Ld/a0$a;

    .line 17
    invoke-virtual {v0}, Ld/a0$a;->a()Ld/a0;

    move-result-object v0

    .line 18
    :cond_0
    invoke-direct {p0, v0}, Ld/f0/g/j;->a(Ld/a0;)Ld/y;

    move-result-object v11

    if-nez v11, :cond_2

    .line 19
    iget-boolean p1, p0, Ld/f0/g/j;->b:Z

    if-nez p1, :cond_1

    .line 20
    iget-object p1, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {p1}, Ld/f0/f/g;->f()V

    :cond_1
    return-object v0

    .line 21
    :cond_2
    invoke-virtual {v0}, Ld/a0;->j()Ld/b0;

    move-result-object v1

    invoke-static {v1}, Ld/f0/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v12, v2, 0x1

    const/16 v1, 0x14

    if-gt v12, v1, :cond_5

    .line 22
    invoke-virtual {v11}, Ld/y;->a()Ld/z;

    .line 23
    invoke-virtual {v11}, Ld/y;->g()Ld/s;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ld/f0/g/j;->a(Ld/a0;Ld/s;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    iget-object v1, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {v1}, Ld/f0/f/g;->f()V

    .line 25
    new-instance v13, Ld/f0/f/g;

    iget-object v1, p0, Ld/f0/g/j;->a:Ld/v;

    invoke-virtual {v1}, Ld/v;->d()Ld/j;

    move-result-object v2

    .line 26
    invoke-virtual {v11}, Ld/y;->g()Ld/s;

    move-result-object v1

    invoke-direct {p0, v1}, Ld/f0/g/j;->a(Ld/s;)Ld/a;

    move-result-object v3

    iget-object v6, p0, Ld/f0/g/j;->d:Ljava/lang/Object;

    move-object v1, v13

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Ld/f0/f/g;-><init>(Ld/j;Ld/a;Ld/e;Ld/p;Ljava/lang/Object;)V

    iput-object v13, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    goto :goto_1

    .line 27
    :cond_3
    iget-object v1, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {v1}, Ld/f0/f/g;->b()Ld/f0/g/c;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_1
    move-object v1, v0

    move-object v0, v11

    move v2, v12

    goto :goto_0

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_5
    iget-object p1, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {p1}, Ld/f0/f/g;->f()V

    .line 30
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    .line 31
    :try_start_1
    instance-of v4, v3, Ld/f0/i/a;

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    move v4, v9

    .line 32
    :goto_2
    invoke-direct {p0, v3, v4, v0}, Ld/f0/g/j;->a(Ljava/io/IOException;ZLd/y;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    :cond_7
    throw v3

    :catch_1
    move-exception v3

    .line 33
    invoke-virtual {v3}, Ld/f0/f/e;->a()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v0}, Ld/f0/g/j;->a(Ljava/io/IOException;ZLd/y;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_0

    .line 34
    :cond_8
    invoke-virtual {v3}, Ld/f0/f/e;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_3
    iget-object v0, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {v0, v10}, Ld/f0/f/g;->a(Ljava/io/IOException;)V

    .line 36
    iget-object v0, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {v0}, Ld/f0/f/g;->f()V

    throw p1

    .line 37
    :cond_9
    iget-object p1, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    invoke-virtual {p1}, Ld/f0/f/g;->f()V

    .line 38
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ld/f0/g/j;->e:Z

    .line 2
    iget-object v0, p0, Ld/f0/g/j;->c:Ld/f0/f/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ld/f0/f/g;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 4
    iput-object p1, p0, Ld/f0/g/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/f0/g/j;->e:Z

    return v0
.end method
