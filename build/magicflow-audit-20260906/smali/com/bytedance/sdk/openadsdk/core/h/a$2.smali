.class Lcom/bytedance/sdk/openadsdk/core/h/a$2;
.super Ljava/lang/Object;
.source "PlayableCache.java"

# interfaces
.implements Lc/b/a/a/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/a;->b(Lcom/bytedance/sdk/openadsdk/core/e/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/h/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/a;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->d:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JJ)V
    .locals 0

    return-void
.end method

.method public a(Lc/b/a/a/d/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->d(Lcom/bytedance/sdk/openadsdk/core/h/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->e(Lcom/bytedance/sdk/openadsdk/core/h/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->f(Lcom/bytedance/sdk/openadsdk/core/h/a;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/a$2;Lcom/bytedance/sdk/openadsdk/core/h/a$a;Lc/b/a/a/d/p;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x2bc

    if-eqz p1, :cond_2

    .line 6
    iget-wide v1, p1, Lc/b/a/a/d/p;->h:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 8
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->c(Lcom/bytedance/sdk/openadsdk/core/h/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->d(Lcom/bytedance/sdk/openadsdk/core/h/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->e(Lcom/bytedance/sdk/openadsdk/core/h/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x2bc

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 4
    iget-wide v2, p1, Lc/b/a/a/d/p;->h:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p1, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lc/b/a/a/f/a;->a:Lc/b/a/a/d/m;

    if-eqz v2, :cond_1

    iget v2, v2, Lc/b/a/a/d/m;->a:I

    if-eqz v2, :cond_1

    move v0, v2

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p1, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;ILjava/lang/String;)V

    return-void
.end method
