.class public Lcom/bytedance/sdk/openadsdk/core/e/e;
.super Ljava/lang/Object;
.source "ClickEventModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/e/e$a;
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:J

.field private final j:J

.field private final k:I

.field private final l:I

.field private final m:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->a(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->a:[I

    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->b(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->b:[I

    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->c(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->d:[I

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->d(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->c:[I

    .line 7
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->e(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->e:I

    .line 8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->f(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->f:I

    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->g(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->g:I

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->h(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->h:I

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->i(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->i:J

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->j(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->j:J

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->k(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->k:I

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->l(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->l:I

    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->m(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->m:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/e$a;Lcom/bytedance/sdk/openadsdk/core/e/e$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/e;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/e$a;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->a:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->a:[I

    array-length v1, v1

    if-ne v1, v4, :cond_0

    const-string v1, "ad_x"

    .line 3
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->a:[I

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "ad_y"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->a:[I

    aget v6, v6, v2

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->b:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->b:[I

    array-length v1, v1

    if-ne v1, v4, :cond_1

    const-string v1, "width"

    .line 6
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->b:[I

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "height"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->b:[I

    aget v6, v6, v2

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->c:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->c:[I

    array-length v1, v1

    if-ne v1, v4, :cond_2

    const-string v1, "button_x"

    .line 9
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->c:[I

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "button_y"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->c:[I

    aget v6, v6, v2

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->d:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->d:[I

    array-length v1, v1

    if-ne v1, v4, :cond_3

    const-string v1, "button_width"

    .line 12
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->d:[I

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "button_height"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->d:[I

    aget v2, v4, v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "down_x"

    .line 14
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "down_y"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->f:I

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_x"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->g:I

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_y"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->h:I

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "down_time"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->i:J

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_time"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->j:J

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "toolType"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->k:I

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deviceId"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->l:I

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "source"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/e;->m:I

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
