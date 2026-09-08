.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "TemplateManager"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTemplate error2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->e()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_6

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v1, "loadTemplate error4"

    .line 12
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_b

    .line 15
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 16
    :cond_4
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 17
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v2, "loadTemplate update2"

    .line 18
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 19
    :cond_5
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/core/e/o$a;

    .line 20
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 21
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_7
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/o$a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/o$a;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 23
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/o$a;->b()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/o$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/e/o$a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 24
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_8
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/e/o$a;

    .line 26
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 27
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    const-string v2, "loadTemplate update3"

    .line 28
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 29
    :cond_b
    :goto_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v2, "loadTemplate update1"

    .line 30
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-string v7, ".tmp"

    if-eqz v6, :cond_10

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/e/o$a;

    .line 32
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/e/o$a;->a()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 34
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v7, :cond_d

    .line 37
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :catchall_0
    :cond_d
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v7, :cond_e

    .line 39
    :try_start_4
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    :catchall_1
    :cond_e
    :try_start_5
    invoke-static {}, Lc/b/a/a/b/i;->a()Lc/b/a/a/b/i;

    move-result-object v7

    .line 41
    new-instance v8, Lc/b/a/a/b/c;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6, v7}, Lc/b/a/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lc/b/a/a/d/p$a;)V

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/g/e;->c()Lc/b/a/a/d/o;

    move-result-object v6

    invoke-virtual {v8, v6}, Lc/b/a/a/d/c;->build(Lc/b/a/a/d/o;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 43
    :try_start_6
    invoke-virtual {v7}, Lc/b/a/a/b/i;->b()Lc/b/a/a/d/p;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_f

    .line 44
    :try_start_7
    invoke-virtual {v6}, Lc/b/a/a/d/p;->a()Z

    move-result v6

    if-nez v6, :cond_c

    .line 45
    :cond_f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;Ljava/util/List;)V

    const-string v1, "loadTemplate error5"

    .line 47
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_10
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_3
    :cond_11
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/e/o$a;

    .line 49
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/e/o$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v6, :cond_12

    .line 54
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 55
    :catchall_4
    :cond_12
    :try_start_9
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v5, :cond_11

    .line 56
    :try_start_a
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    .line 57
    :cond_13
    :try_start_b
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a(Lcom/bytedance/sdk/openadsdk/core/e/o;)V

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->c()V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadTemplate update success: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V

    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V

    goto :goto_7

    .line 64
    :cond_14
    :goto_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "loadTemplate error3"

    .line 65
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    return-void

    :catchall_5
    move-exception v1

    const-string v2, "loadTemplate error: "

    .line 66
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method
