.class Lcom/bytedance/sdk/openadsdk/core/p$1;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lc/b/a/a/d/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/l;ILcom/bytedance/sdk/openadsdk/core/o$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/a/d/p$a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/o$b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:I

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/e/l;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/e/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/p;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    :try_start_0
    const-string v5, "extra_time_start"

    .line 1
    invoke-virtual {v2, v5}, Lc/b/a/a/d/p;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    goto :goto_0

    :catchall_0
    move v7, v0

    move-wide v5, v3

    .line 2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v11, v2, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONObject;

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_0

    .line 4
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    .line 5
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v5, v2, Lc/b/a/a/d/p;->e:J

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    const-string v11, "mate parse_fail"

    invoke-static/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/core/p$a;

    move-result-object v11

    .line 7
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->i:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget v12, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    const/16 v13, 0x4e20

    if-eq v12, v13, :cond_1

    .line 9
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    iget v3, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->e:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    .line 10
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v13, v2, Lc/b/a/a/d/p;->e:J

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v15

    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    iget v3, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    iget v4, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v16, v0

    move-object/from16 v17, v11

    move/from16 v18, v3

    invoke-static/range {v12 .. v19}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    if-nez v12, :cond_2

    .line 12
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    .line 13
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v13, v2, Lc/b/a/a/d/p;->e:J

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v15

    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    const/16 v18, -0x1

    const-string v19, "parse_fail"

    move/from16 v16, v0

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v19}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void

    .line 14
    :cond_2
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 16
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    iget-object v14, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-interface {v10, v14}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V

    if-eqz v7, :cond_4

    .line 17
    iget-object v7, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    .line 18
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 19
    iget-object v7, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 20
    iget v7, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(I)Ljava/lang/String;

    move-result-object v7

    .line 21
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 22
    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/l;

    if-eqz v14, :cond_3

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/l;

    iget-wide v14, v14, Lcom/bytedance/sdk/openadsdk/core/e/l;->f:J

    cmp-long v3, v14, v3

    if-lez v3, :cond_3

    const-string v3, "client_start_time"

    .line 23
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/l;

    iget-wide v14, v4, Lcom/bytedance/sdk/openadsdk/core/e/l;->f:J

    sub-long v14, v5, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "load_ts"

    .line 24
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/l;

    iget-wide v14, v4, Lcom/bytedance/sdk/openadsdk/core/e/l;->f:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "total_time"

    .line 25
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/e/l;

    iget-wide v14, v4, Lcom/bytedance/sdk/openadsdk/core/e/l;->f:J

    sub-long v14, v12, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v3, "request_ts"

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "s_revice_ts"

    .line 27
    iget-wide v14, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->b:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "s_send_ts"

    .line 28
    iget-wide v14, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->c:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "c_revice_ts"

    .line 29
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "c_end_ts"

    .line 30
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "network_time"

    .line 31
    iget-wide v14, v2, Lc/b/a/a/d/p;->f:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "go_time"

    .line 32
    iget-wide v14, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->b:J

    sub-long/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sever_time"

    .line 33
    iget v4, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "back_time"

    .line 34
    iget-wide v4, v11, Lcom/bytedance/sdk/openadsdk/core/p$a;->c:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "client_end_time"

    sub-long/2addr v12, v8

    .line 35
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v0, v7, v10}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v3, "NetApiImpl"

    const-string v4, "get ad error: "

    .line 37
    invoke-static {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    .line 39
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v5, v2, Lc/b/a/a/d/p;->e:J

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    const-string v11, "parse_fail"

    invoke-static/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    .line 2
    instance-of v1, v0, Lc/b/a/a/f/f;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v3, p1, Lc/b/a/a/d/p;->e:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, -0x2

    .line 5
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 6
    iget-wide v1, p1, Lc/b/a/a/d/p;->h:J

    long-to-int v1, v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move v9, v1

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-interface {v1, v9, v2}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    .line 9
    instance-of v0, v0, Lc/b/a/a/f/h;

    if-eqz v0, :cond_2

    const-string v0, "SocketTimeout"

    move-object v10, v0

    goto :goto_0

    :cond_2
    move-object v10, v2

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->e:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v4, p1, Lc/b/a/a/d/p;->e:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->c:I

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void
.end method
