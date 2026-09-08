.class Lcom/bytedance/embedapplog/a/j;
.super Lcom/bytedance/embedapplog/a/c;
.source "SourceFile"


# static fields
.field private static final i:[J


# instance fields
.field private final d:Lcom/bytedance/embedapplog/b/h;

.field private final e:Lcom/bytedance/embedapplog/d/b;

.field private final f:Lcom/bytedance/embedapplog/b/i;

.field private g:J

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    .line 1
    sput-object v0, Lcom/bytedance/embedapplog/a/j;->i:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/c;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/d/b;

    .line 3
    iput-object p3, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/b/h;

    .line 4
    iput-object p4, p0, Lcom/bytedance/embedapplog/a/j;->f:Lcom/bytedance/embedapplog/b/i;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->b()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 2
    :goto_0
    sget-object v0, Lcom/bytedance/embedapplog/a/j;->i:[J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 3
    iget-wide v0, p0, Lcom/bytedance/embedapplog/a/j;->g:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method c()[J
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/a/j;->i:[J

    return-object v0
.end method

.method public d()Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/embedapplog/a/j;->h:J

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/h;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/j;->f:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->e()Lcom/bytedance/embedapplog/a/k;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/a/k;->a()Lcom/bytedance/embedapplog/d/f;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/a/k;->b()Z

    move-result v1

    invoke-virtual {v3, v0, v2, v1}, Lcom/bytedance/embedapplog/d/b;->a(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Z)Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/a/j;->h:J

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/d/b;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/c;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/j;->f:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/embedapplog/d/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 11
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/d/b;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/c;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/bytedance/embedapplog/d/b;->a(Landroid/content/Context;)V

    .line 12
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/j;->f:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/embedapplog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/embedapplog/d/g;

    .line 14
    iget-object v6, v5, Lcom/bytedance/embedapplog/d/g;->i:[B

    iget-object v7, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-static {v3, v6, v7}, Lcom/bytedance/embedapplog/c/a;->a([Ljava/lang/String;[BLcom/bytedance/embedapplog/b/h;)I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 15
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    iput v6, v5, Lcom/bytedance/embedapplog/d/g;->k:I

    .line 17
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 19
    :cond_3
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/embedapplog/d/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 20
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_5

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/a/j;->g:J

    const/4 v0, 0x1

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    const-string v0, "s"

    return-object v0
.end method
