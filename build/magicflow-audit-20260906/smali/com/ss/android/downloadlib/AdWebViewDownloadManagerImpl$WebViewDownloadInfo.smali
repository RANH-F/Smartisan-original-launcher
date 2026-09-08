.class Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;
.super Ljava/lang/Object;
.source "AdWebViewDownloadManagerImpl.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field mAdId:J

.field mAppName:Ljava/lang/String;

.field mDownloadUrl:Ljava/lang/String;

.field mExtValue:J

.field mMimeType:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mUserAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mAdId:J

    .line 3
    iput-wide p3, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mExtValue:J

    .line 4
    iput-object p5, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mAppName:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mDownloadUrl:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mPackageName:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mMimeType:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method static createDownloadController()Lc/d/a/a/a/c/b;
    .locals 5

    .line 1
    new-instance v0, Lcom/ss/android/downloadad/a/a/a$b;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/a$b;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$b;->a(I)Lcom/ss/android/downloadad/a/a/a$b;

    .line 3
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$b;->b(I)Lcom/ss/android/downloadad/a/a/a$b;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/a$b;->a(Z)Lcom/ss/android/downloadad/a/a/a$b;

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "download_manage_enable"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/a$b;->b(Z)Lcom/ss/android/downloadad/a/a/a$b;

    .line 6
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$b;->c(Z)Lcom/ss/android/downloadad/a/a/a$b;

    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$b;->d(Z)Lcom/ss/android/downloadad/a/a/a$b;

    .line 8
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/a$b;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method static createDownloadEventConfigure()Lc/d/a/a/a/c/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/android/downloadad/a/a/b$b;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/b$b;-><init>()V

    const-string v1, "landing_h5_download_ad_button"

    .line 2
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 3
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v1, "click_start_detail"

    .line 4
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->k(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v1, "click_pause_detail"

    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->l(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v1, "click_continue_detail"

    .line 6
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->m(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v1, "click_install_detail"

    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->n(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v1, "click_open_detail"

    .line 8
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->o(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v1, "storage_deny_detail"

    .line 9
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->q(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->a(I)Lcom/ss/android/downloadad/a/a/b$b;

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/b$b;->a(Z)Lcom/ss/android/downloadad/a/a/b$b;

    .line 12
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$b;->b(Z)Lcom/ss/android/downloadad/a/a/b$b;

    .line 13
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/b$b;->d(Z)Lcom/ss/android/downloadad/a/a/b$b;

    .line 14
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/b$b;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method static createDownloadModel(Ljava/lang/String;Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;)Lc/d/a/a/a/c/d;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mUserAgent:Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v1, Lcom/ss/android/downloadad/a/a/c$b;

    invoke-direct {v1}, Lcom/ss/android/downloadad/a/a/c$b;-><init>()V

    iget-wide v2, p1, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mAdId:J

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->a(J)Lcom/ss/android/downloadad/a/a/c$b;

    iget-wide v2, p1, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mExtValue:J

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->b(J)Lcom/ss/android/downloadad/a/a/c$b;

    .line 7
    invoke-virtual {v1, p0}, Lcom/ss/android/downloadad/a/a/c$b;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    iget-object p0, p1, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mDownloadUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, p0}, Lcom/ss/android/downloadad/a/a/c$b;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    iget-object p0, p1, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mPackageName:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, p0}, Lcom/ss/android/downloadad/a/a/c$b;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    iget-object p0, p1, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mAppName:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, p0}, Lcom/ss/android/downloadad/a/a/c$b;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    iget-object p0, p1, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mMimeType:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, p0}, Lcom/ss/android/downloadad/a/a/c$b;->g(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 12
    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/a/a/c$b;->a(Ljava/util/Map;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 13
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/a/c$b;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method static fromJson(Lorg/json/JSONObject;)Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;
    .locals 13

    const-string v0, "adId"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 1
    :cond_0
    :try_start_0
    new-instance v12, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;

    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    .line 2
    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "appName"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "downloadUrl"

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "packageName"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "mimeType"

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "userAgent"

    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method static toJson(Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;)Lorg/json/JSONObject;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adId"

    .line 2
    iget-wide v2, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mAdId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "extValue"

    .line 3
    iget-wide v2, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mExtValue:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "appName"

    .line 4
    iget-object v2, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "downloadUrl"

    .line 5
    iget-object v2, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    .line 6
    iget-object v2, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mimeType"

    .line 7
    iget-object v2, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userAgent"

    .line 8
    iget-object p0, p0, Lcom/ss/android/downloadlib/AdWebViewDownloadManagerImpl$WebViewDownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method
