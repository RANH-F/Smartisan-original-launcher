.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a;
.super Ljava/lang/Object;
.source "TTDownloadFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 6
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/i;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TTDownloadFactory"

    const-string v2, "get download sdk version error"

    .line 7
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "0.0.0"

    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z
    .locals 3

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->u()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$e/a;->a()Lcom/ss/android/downloadlib/a$e/a;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a$1;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ss/android/downloadlib/a$e/a;->a(Landroid/content/Context;ZLcom/ss/android/downloadlib/a$e/a$b;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V

    return-object v0
.end method
