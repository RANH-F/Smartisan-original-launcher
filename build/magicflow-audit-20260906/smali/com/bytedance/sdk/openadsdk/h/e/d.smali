.class public Lcom/bytedance/sdk/openadsdk/h/e/d;
.super Ljava/lang/Object;
.source "NetworkSoureVolleyImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/e/b;


# instance fields
.field private a:Lc/b/a/a/g/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->a()Lc/b/a/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/d;->a:Lc/b/a/a/g/a;

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/d;->a:Lc/b/a/a/g/a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lc/b/a/a/d/k;

    invoke-direct {v0}, Lc/b/a/a/d/k;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/d;->a:Lc/b/a/a/g/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/h/e/f;)Lcom/bytedance/sdk/openadsdk/h/e/a;
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/e/e;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->a:I

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/e/e;-><init>(ILjava/lang/String;)V

    .line 2
    iget-wide v1, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->c:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lc/b/a/a/d/h;

    invoke-direct {v1}, Lc/b/a/a/d/h;-><init>()V

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->c:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lc/b/a/a/d/h;->a(I)Lc/b/a/a/d/h;

    invoke-virtual {v0, v1}, Lc/b/a/a/d/c;->setRetryPolicy(Lc/b/a/a/g/e;)Lc/b/a/a/d/c;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/e/d;->a:Lc/b/a/a/g/a;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->e:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Lc/b/a/a/g/a;->performRequest(Lc/b/a/a/d/c;Ljava/util/Map;)Lc/b/a/a/d/b;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/e/g;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/e/g;-><init>(Lc/b/a/a/d/b;Lcom/bytedance/sdk/openadsdk/h/e/f;)V

    return-object v1
.end method
