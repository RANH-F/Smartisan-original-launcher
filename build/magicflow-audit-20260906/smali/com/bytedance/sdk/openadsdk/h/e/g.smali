.class public Lcom/bytedance/sdk/openadsdk/h/e/g;
.super Lcom/bytedance/sdk/openadsdk/h/e/a;
.source "VolleyResponseWrapper.java"


# instance fields
.field private c:Lc/b/a/a/d/b;


# direct methods
.method public constructor <init>(Lc/b/a/a/d/b;Lcom/bytedance/sdk/openadsdk/h/e/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lc/b/a/a/d/b;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lc/b/a/a/d/b;

    invoke-virtual {v0}, Lc/b/a/a/d/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lc/b/a/a/d/b;

    invoke-virtual {v0}, Lc/b/a/a/d/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a/d/a;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->a:Ljava/util/List;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/i$b;

    invoke-virtual {v0}, Lc/b/a/a/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lc/b/a/a/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/h/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->b:Lcom/bytedance/sdk/openadsdk/h/e/f;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lc/b/a/a/d/b;

    invoke-virtual {v0}, Lc/b/a/a/d/b;->d()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/i$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/i$b;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lc/b/a/a/d/b;

    invoke-virtual {v0}, Lc/b/a/a/d/b;->d()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lc/b/a/a/d/b;

    invoke-virtual {v0}, Lc/b/a/a/d/b;->d()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lc/b/a/a/d/b;

    invoke-virtual {v0}, Lc/b/a/a/d/b;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "http/1.1"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lc/b/a/a/d/b;

    invoke-virtual {v0}, Lc/b/a/a/d/b;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
