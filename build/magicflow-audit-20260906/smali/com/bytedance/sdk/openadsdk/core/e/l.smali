.class public Lcom/bytedance/sdk/openadsdk/core/e/l;
.super Ljava/lang/Object;
.source "NetExtParams.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Lorg/json/JSONArray;

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->b:I

    .line 4
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->c:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->d:Lorg/json/JSONArray;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/e/l;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/l;-><init>()V

    .line 2
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->b:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/l;->b:I

    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->c:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/l;->c:I

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->d:Lorg/json/JSONArray;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/l;->d:Lorg/json/JSONArray;

    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->e:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/l;->e:I

    .line 6
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/l;->f:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/l;->f:J

    return-object v0
.end method
