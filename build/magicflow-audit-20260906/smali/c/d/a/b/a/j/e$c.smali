.class final Lc/d/a/b/a/j/e$c;
.super Lc/d/a/b/a/c/p$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/d0;Z)Lc/d/a/b/a/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/d0;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/d0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    iput-boolean p2, p0, Lc/d/a/b/a/j/e$c;->b:Z

    invoke-direct {p0}, Lc/d/a/b/a/c/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public a(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$c;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/j/e$c$c;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d0;->a(Lc/d/a/b/a/f/c;)V

    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$j;

    invoke-direct {v1, p0, p1, p2}, Lc/d/a/b/a/j/e$c$j;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1, p2}, Lc/d/a/b/a/c/d0;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    :goto_0
    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$f;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/j/e$c$f;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d0;->b(Lc/d/a/b/a/f/c;)V

    :goto_0
    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$d;

    invoke-direct {v1, p0, p1, p2}, Lc/d/a/b/a/j/e$c$d;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1, p2}, Lc/d/a/b/a/c/d0;->b(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    :goto_0
    return-void
.end method

.method public c(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$g;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/j/e$c$g;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d0;->c(Lc/d/a/b/a/f/c;)V

    :goto_0
    return-void
.end method

.method public c(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$e;

    invoke-direct {v1, p0, p1, p2}, Lc/d/a/b/a/j/e$c$e;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1, p2}, Lc/d/a/b/a/c/d0;->c(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    :goto_0
    return-void
.end method

.method public d(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$k;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/j/e$c$k;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d0;->d(Lc/d/a/b/a/f/c;)V

    :goto_0
    return-void
.end method

.method public e(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$a;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/j/e$c$a;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d0;->e(Lc/d/a/b/a/f/c;)V

    :goto_0
    return-void
.end method

.method public f(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$b;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/j/e$c$b;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d0;->f(Lc/d/a/b/a/f/c;)V

    :goto_0
    return-void
.end method

.method public g(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$h;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/j/e$c$h;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d0;->g(Lc/d/a/b/a/f/c;)V

    :goto_0
    return-void
.end method

.method public h(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/j/e$c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/b/a/j/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/d/a/b/a/j/e$c$i;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/j/e$c$i;-><init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d0;->h(Lc/d/a/b/a/f/c;)V

    :goto_0
    return-void
.end method
