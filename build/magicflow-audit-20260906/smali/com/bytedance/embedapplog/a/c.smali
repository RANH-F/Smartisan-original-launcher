.class abstract Lcom/bytedance/embedapplog/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field private b:I

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bytedance/embedapplog/a/c;->b:I

    .line 3
    iput-object p1, p0, Lcom/bytedance/embedapplog/a/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method abstract a()Z
.end method

.method abstract b()J
.end method

.method abstract c()[J
.end method

.method abstract d()Z
.end method

.method abstract e()Ljava/lang/String;
.end method

.method f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bytedance/embedapplog/a/c;->c:Z

    return-void
.end method

.method g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/c;->c:Z

    return v0
.end method

.method final h()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/embedapplog/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const-wide/32 v0, 0xea60

    goto :goto_4

    .line 2
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/c;->b()J

    move-result-wide v2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_4

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/c;->d()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 6
    iput v1, p0, Lcom/bytedance/embedapplog/a/c;->b:I

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/c;->b()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/c;->c()[J

    move-result-object v1

    .line 9
    iget v2, p0, Lcom/bytedance/embedapplog/a/c;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/bytedance/embedapplog/a/c;->b:I

    array-length v3, v1

    rem-int/2addr v2, v3

    aget-wide v2, v1, v2

    move-wide v1, v2

    .line 10
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " worked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v1

    goto :goto_4

    :cond_4
    sub-long v0, v2, v4

    :goto_4
    return-wide v0
.end method
