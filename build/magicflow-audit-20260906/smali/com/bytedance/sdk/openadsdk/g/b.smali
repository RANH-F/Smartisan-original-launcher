.class public Lcom/bytedance/sdk/openadsdk/g/b;
.super Ljava/lang/Object;
.source "StatsImageListener.java"

# interfaces
.implements Lc/b/a/a/b/d$i;


# instance fields
.field private a:Z

.field private b:Lcom/bytedance/sdk/openadsdk/f/a/d;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    .line 3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lc/b/a/a/b/d$h;Z)V
    .locals 0

    .line 5
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lc/b/a/a/b/d$h;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    const/16 p2, 0xca

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p1

    .line 8
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/a;->k(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lc/b/a/a/d/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc9

    .line 4
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p1

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->k(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    :cond_1
    :goto_0
    return-void
.end method
