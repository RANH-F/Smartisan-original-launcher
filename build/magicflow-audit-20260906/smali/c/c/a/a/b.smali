.class public abstract Lc/c/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static p:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:[B

.field private f:I

.field private g:[B

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Landroid/os/HandlerThread;

.field private m:Landroid/os/Handler;

.field private n:Z

.field private o:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/c;

    invoke-direct {v0}, Lc/c/a/a/c;-><init>()V

    sput-object v0, Lc/c/a/a/b;->p:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lc/c/a/a/b;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lc/c/a/a/b;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/b;->g:[B

    const/16 v1, 0x2710

    iput v1, p0, Lc/c/a/a/b;->h:I

    const/4 v1, 0x1

    iput v1, p0, Lc/c/a/a/b;->i:I

    const/4 v1, 0x0

    iput v1, p0, Lc/c/a/a/b;->j:I

    iput-boolean v1, p0, Lc/c/a/a/b;->k:Z

    iput-boolean v1, p0, Lc/c/a/a/b;->n:Z

    iput-object v0, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    iput-object p1, p0, Lc/c/a/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lc/c/a/a/b;)I
    .locals 0

    iget p0, p0, Lc/c/a/a/b;->j:I

    return p0
.end method

.method static synthetic a(Lc/c/a/a/b;I)I
    .locals 0

    iput p1, p0, Lc/c/a/a/b;->j:I

    return p1
.end method

.method private a(I)V
    .locals 1

    const-string v0, "GET"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "TRACE"

    goto :goto_0

    :pswitch_1
    const-string v0, "HEAD"

    goto :goto_0

    :pswitch_2
    const-string v0, "DELETE"

    goto :goto_0

    :pswitch_3
    const-string v0, "PUT"

    goto :goto_0

    :pswitch_4
    const-string v0, "POST"

    :goto_0
    :pswitch_5
    iget-object p1, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lc/c/a/a/b;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lc/c/a/a/b;->n:Z

    if-eqz v4, :cond_0

    new-array v4, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v5, Lc/c/a/a/d;

    invoke-direct {v5}, Lc/c/a/a/d;-><init>()V

    aput-object v5, v4, v0

    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v2, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v3, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    :goto_0
    iput-object v4, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    goto :goto_0

    :goto_1
    const-string v4, "https"

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v4, Lc/c/a/a/b;->p:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    iget-object v3, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    iget v4, p0, Lc/c/a/a/b;->h:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    iget v4, p0, Lc/c/a/a/b;->h:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v3, p0, Lc/c/a/a/b;->c:I

    invoke-direct {p0, v3}, Lc/c/a/a/b;->a(I)V

    iget v3, p0, Lc/c/a/a/b;->d:I

    invoke-direct {p0, v3}, Lc/c/a/a/b;->b(I)V

    iget-object v3, p0, Lc/c/a/a/b;->e:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc/c/a/a/b;->e:[B

    array-length v3, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v3, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lc/c/a/a/b;->e:[B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_2
    iget-object v3, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lc/c/a/a/b;->f:I

    iget-object v3, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v3}, Lc/c/a/a/b;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lc/c/a/a/b;->g:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-object v3, v2

    :catchall_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v2, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    :cond_4
    move v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v1, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v2, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    iget v1, p0, Lc/c/a/a/b;->f:I

    iget-object v2, p0, Lc/c/a/a/b;->g:[B

    invoke-virtual {p0, v1, v2}, Lc/c/a/a/b;->a(I[B)Z

    :cond_6
    return v0

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v2, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    :cond_7
    throw v0
.end method

.method static synthetic a(Lc/c/a/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc/c/a/a/b;->k:Z

    return p1
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lc/c/a/a/b;)I
    .locals 0

    iget p0, p0, Lc/c/a/a/b;->i:I

    return p0
.end method

.method private b(I)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string p1, "application/json; charset=utf-8"

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ","

    const-string v2, "Accept-Language"

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";q=0.9"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lc/c/a/a/b;->o:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";q=0.9,en-US;q=0.6,en;q=0.4"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    :goto_2
    return-void
.end method

.method private b(II[B)V
    .locals 0

    iput p1, p0, Lc/c/a/a/b;->c:I

    iput p2, p0, Lc/c/a/a/b;->d:I

    iput-object p3, p0, Lc/c/a/a/b;->e:[B

    return-void
.end method

.method static synthetic c(Lc/c/a/a/b;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lc/c/a/a/b;->l:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic d(Lc/c/a/a/b;)Z
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/b;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lc/c/a/a/b;)I
    .locals 0

    iget p0, p0, Lc/c/a/a/b;->h:I

    return p0
.end method

.method static synthetic f(Lc/c/a/a/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lc/c/a/a/b;->m:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lc/c/a/a/b;)I
    .locals 2

    iget v0, p0, Lc/c/a/a/b;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc/c/a/a/b;->j:I

    return v0
.end method


# virtual methods
.method public declared-synchronized a(II[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc/c/a/a/b;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lc/c/a/a/b;->i:I

    invoke-direct {p0, p1, p2, p3}, Lc/c/a/a/b;->b(II[B)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/a/a/b;->k:Z

    const/4 p2, 0x0

    iput p2, p0, Lc/c/a/a/b;->j:I

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "request"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lc/c/a/a/b;->l:Landroid/os/HandlerThread;

    iget-object p2, p0, Lc/c/a/a/b;->l:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lc/c/a/a/b;->l:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v0, Lc/c/a/a/b$a;

    invoke-direct {v0, p0}, Lc/c/a/a/b$a;-><init>(Lc/c/a/a/b;)V

    invoke-direct {p2, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lc/c/a/a/b;->m:Landroid/os/Handler;

    iget-object p2, p0, Lc/c/a/a/b;->m:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract a(I[B)Z
.end method
