.class Lcom/bytedance/embedapplog/a/h;
.super Lcom/bytedance/embedapplog/a/c;
.source "SourceFile"


# static fields
.field private static final g:[J


# instance fields
.field private final d:Lcom/bytedance/embedapplog/d/b;

.field private final e:Lcom/bytedance/embedapplog/b/i;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    .line 1
    sput-object v0, Lcom/bytedance/embedapplog/a/h;->g:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/d/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/c;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p3, p0, Lcom/bytedance/embedapplog/a/h;->d:Lcom/bytedance/embedapplog/d/b;

    .line 3
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/h;->e:Lcom/bytedance/embedapplog/b/i;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/embedapplog/a/h;->f:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    return-wide v0
.end method

.method c()[J
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/a/h;->g:[J

    return-object v0
.end method

.method public d()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->e()Lcom/bytedance/embedapplog/a/k;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide/32 v3, 0xc350

    .line 3
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/bytedance/embedapplog/a/k;->a(JJ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "play_session"

    .line 4
    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->flush()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/h;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/i;->o()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/h;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/h;->d:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/d/b;->a(Lorg/json/JSONObject;)Z

    move-result v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/embedapplog/a/h;->f:J

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 10
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    const-string v0, "p"

    return-object v0
.end method
