.class public Lcom/bytedance/sdk/openadsdk/core/e/n;
.super Ljava/lang/Object;
.source "SplashAdCache.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field private b:[B

.field private c:Lcom/bytedance/sdk/openadsdk/core/e/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/core/e/k;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/n;->c:Lcom/bytedance/sdk/openadsdk/core/e/a;

    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/n;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 4
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/e/n;->b:[B

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/e/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/n;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/n;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/n;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->c(Z)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/n;->b:[B

    return-void
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/n;->b:[B

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/e/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/n;->c:Lcom/bytedance/sdk/openadsdk/core/e/a;

    return-object v0
.end method
