.class Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;
.super Ljava/lang/Object;
.source "PlayableCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/a$2;->a(Lc/b/a/a/d/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/a$a;

.field final synthetic b:Lc/b/a/a/d/p;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/h/a$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/a$2;Lcom/bytedance/sdk/openadsdk/core/h/a$a;Lc/b/a/a/d/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/h/a$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->b:Lc/b/a/a/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a$a;->c(J)Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->b:Lc/b/a/a/d/p;

    iget-object v0, v0, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/h/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lcom/bytedance/sdk/openadsdk/core/h/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a$a;->d(J)Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a$a;->a()J

    move-result-wide v1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a$a;->b()J

    move-result-wide v3

    move-wide v5, v3

    move-wide v3, v1

    goto :goto_0

    :cond_2
    move-wide v3, v1

    move-wide v5, v3

    .line 9
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/h/a$2;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;JJ)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/h/a$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/h/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->d:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lcom/bytedance/sdk/openadsdk/core/h/a;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/h/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->d:Ljava/io/File;

    const-string v2, "tt_open_ad_sdk_check_res.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/h/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/h/a;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lcom/bytedance/sdk/openadsdk/core/h/a;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "PlayableCache"

    const-string v2, "unzip error: "

    .line 13
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/h/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/h/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/16 v3, -0x2c0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;ILjava/lang/String;)V

    .line 15
    :catchall_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$2$1;->b:Lc/b/a/a/d/p;

    iget-object v0, v0, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-void
.end method
