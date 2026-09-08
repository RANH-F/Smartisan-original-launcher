.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$a;
.super Ljava/lang/Object;
.source "LibUrlConnection4DZ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public static a()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$a$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$a$1;-><init>()V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/h;-><init>()V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method
