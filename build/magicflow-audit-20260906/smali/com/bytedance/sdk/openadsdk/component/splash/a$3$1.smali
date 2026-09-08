.class Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field final synthetic c:Z

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$3;Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/core/e/k;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V

    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u56fe\u7247\u6570\u636e\u52a0\u8f7d\u5931\u8d25"

    .line 15
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "splashLoad"

    const-string v1, "\u56fe\u7247\u6570\u636e\u9884\u52a0\u8f7d\u5931\u8d25...."

    .line 16
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-wide/16 v6, -0x7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/e/k;JLc/b/a/a/d/p;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a([B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, "splash_ad"

    const-string v4, "download_creative_duration"

    .line 6
    invoke-static {v0, v3, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;J)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J

    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u56fe\u7247\u6570\u636e\u52a0\u8f7d\u7684\u5e7f\u544a\u7f13\u5b58\u5230\u672c\u5730"

    .line 8
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "splashLoad"

    const-string v1, "\u9884\u52a0\u8f7d\u6210\u529f\uff0c\u5e7f\u544a\u7f13\u5b58\u5230\u672c\u5730----10"

    .line 9
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {v1, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/core/e/n;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/core/e/k;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/n;)V

    .line 11
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/e/k;JLc/b/a/a/d/p;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
