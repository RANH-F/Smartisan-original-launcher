.class final Lcom/bytedance/sdk/openadsdk/component/splash/c$1;
.super Ljava/lang/Object;
.source "SplashUtils.java"

# interfaces
.implements Lc/b/a/a/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/e/a;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field final synthetic e:J


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/core/e/k;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->c:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->o()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/b/b;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datastoreGet throw IOException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplashUtils"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JJ)V
    .locals 0

    return-void
.end method

.method public a(Lc/b/a/a/d/p;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->c:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/n;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/core/e/k;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/core/e/n;)V

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->c:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/n;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/core/e/k;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/n;)V

    .line 9
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-wide/16 v5, 0x0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/e/k;JLc/b/a/a/d/p;)V

    goto :goto_1

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-nez p1, :cond_1

    const-wide/16 v5, -0x3

    goto :goto_0

    :cond_1
    iget-wide v5, p1, Lc/b/a/a/d/p;->h:J

    :goto_0
    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/e/k;JLc/b/a/a/d/p;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    return-object p1
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-nez p1, :cond_0

    const-wide/16 v2, -0x2

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lc/b/a/a/d/p;->h:J

    :goto_0
    move-wide v5, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/e/k;JLc/b/a/a/d/p;)V

    return-void
.end method
