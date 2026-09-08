.class Lcom/bytedance/sdk/openadsdk/component/splash/b$4;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field final synthetic c:Z

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/a/d;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/core/e/k;ZLcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 28
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splashLoad----5-LoadImageBytes-onFailed-code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "splashLoadAd"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v6, -0x7

    move-object v3, v2

    move-object v4, v0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    const/16 v4, 0x3a98

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    move-object v5, v2

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 31
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-wide/16 v6, -0x7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/e/k;JLc/b/a/a/d/p;)V

    :cond_0
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([B)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    const-string v1, "splash_ad"

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string v4, "download_creative_duration"

    .line 6
    invoke-static {v0, v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/e/k;->d(Z)V

    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a([B)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->u()Lcom/bytedance/sdk/openadsdk/core/e/k$a;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-object v3, p1

    move-object v8, v0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 13
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v4, 0x3a98

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 15
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/e/k;JLc/b/a/a/d/p;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V

    const/4 p1, -0x7

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v4, 0x2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    const/4 v5, -0x7

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v3, 0x3a98

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    int-to-long v6, p1

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/e/k;JLc/b/a/a/d/p;)V

    :cond_3
    const-string p1, "SplashAdLoadManager"

    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 24
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
