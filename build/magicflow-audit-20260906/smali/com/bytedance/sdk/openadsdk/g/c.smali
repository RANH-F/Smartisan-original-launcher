.class public Lcom/bytedance/sdk/openadsdk/g/c;
.super Lc/b/a/a/d/k;
.source "TTAdHurlStack.java"


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;

.field private b:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Lc/b/a/a/d/k$b;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/b/a/a/d/k;-><init>(Lc/b/a/a/d/k$b;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/g/c$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/c;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/c;->b:Ljavax/net/ssl/HostnameVerifier;

    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method


# virtual methods
.method protected a(Ljava/net/HttpURLConnection;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lc/b/a/a/d/k;->a(Ljava/net/HttpURLConnection;)Z

    move-result p1

    return p1
.end method
