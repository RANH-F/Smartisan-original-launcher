.class public Lc/a/a/r/f;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lc/a/a/r/c;
.implements Lc/a/a/r/b;


# instance fields
.field private a:Lc/a/a/r/b;

.field private b:Lc/a/a/r/b;

.field private c:Lc/a/a/r/c;


# direct methods
.method public constructor <init>(Lc/a/a/r/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/r/f;->c:Lc/a/a/r/c;

    return-void
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/f;->c:Lc/a/a/r/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/a/a/r/c;->a(Lc/a/a/r/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/f;->c:Lc/a/a/r/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/a/a/r/c;->b(Lc/a/a/r/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/f;->c:Lc/a/a/r/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/a/a/r/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->a()V

    .line 5
    iget-object v0, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->a()V

    return-void
.end method

.method public a(Lc/a/a/r/b;Lc/a/a/r/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    .line 2
    iput-object p2, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    return-void
.end method

.method public a(Lc/a/a/r/b;)Z
    .locals 1

    .line 3
    invoke-direct {p0}, Lc/a/a/r/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/a/a/r/f;->e()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->b()V

    :cond_1
    return-void
.end method

.method public b(Lc/a/a/r/b;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/a/a/r/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {p1}, Lc/a/a/r/b;->c()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lc/a/a/r/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lc/a/a/r/f;->c:Lc/a/a/r/c;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p0}, Lc/a/a/r/c;->c(Lc/a/a/r/b;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-interface {p1}, Lc/a/a/r/b;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-interface {p1}, Lc/a/a/r/b;->clear()V

    :cond_2
    return-void
.end method

.method public c()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->clear()V

    .line 2
    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->clear()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/a/a/r/f;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/a/a/r/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->isRunning()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/f;->a:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->pause()V

    .line 2
    iget-object v0, p0, Lc/a/a/r/f;->b:Lc/a/a/r/b;

    invoke-interface {v0}, Lc/a/a/r/b;->pause()V

    return-void
.end method
