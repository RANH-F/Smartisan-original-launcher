.class final Lc/d/a/b/a/j/e$k;
.super Lc/d/a/b/a/f/a$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/f/d;)Lc/d/a/b/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/f/d;


# direct methods
.method constructor <init>(Lc/d/a/b/a/f/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-direct {p0}, Lc/d/a/b/a/f/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-static {p1}, Lc/d/a/b/a/j/d;->d(I)Lc/d/a/b/a/a/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/d;->b(Lc/d/a/b/a/a/h;)I

    move-result p1

    return p1
.end method

.method public a(II)Lc/d/a/b/a/c/p;
    .locals 2

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-static {p1}, Lc/d/a/b/a/j/d;->d(I)Lc/d/a/b/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;I)Lc/d/a/b/a/c/d0;

    move-result-object p2

    sget-object v0, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p2, p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/d0;Z)Lc/d/a/b/a/c/p;

    move-result-object p1

    return-object p1
.end method

.method public a()Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Lc/d/a/b/a/c/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->f()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lc/d/a/b/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/d/a/b/a/c/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->j()Lc/d/a/b/a/c/g0;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/g0;)Lc/d/a/b/a/c/f0;

    move-result-object v0

    return-object v0
.end method

.method public d()Lc/d/a/b/a/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->k()Lc/d/a/b/a/c/d;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/d;)Lc/d/a/b/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Lc/d/a/b/a/c/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->c()Lc/d/a/b/a/c/c0;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/c0;)Lc/d/a/b/a/c/o;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/d/a/b/a/c/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->d()Lc/d/a/b/a/c/s;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/s;)Lc/d/a/b/a/c/m;

    move-result-object v0

    return-object v0
.end method

.method public g()Lc/d/a/b/a/c/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->h()Lc/d/a/b/a/c/b0;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/b0;)Lc/d/a/b/a/c/z;

    move-result-object v0

    return-object v0
.end method

.method public h()Lc/d/a/b/a/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->g()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lc/d/a/b/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method public i()Lc/d/a/b/a/c/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->i()Lc/d/a/b/a/c/w;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/w;)Lc/d/a/b/a/c/u;

    move-result-object v0

    return-object v0
.end method

.method public j(I)Lc/d/a/b/a/c/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-static {p1}, Lc/d/a/b/a/j/d;->d(I)Lc/d/a/b/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/d;->c(Lc/d/a/b/a/a/h;)Lc/d/a/b/a/c/d0;

    move-result-object v0

    sget-object v1, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {v0, p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/d0;Z)Lc/d/a/b/a/c/p;

    move-result-object p1

    return-object p1
.end method

.method public j()Lc/d/a/b/a/c/q;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/e0;)Lc/d/a/b/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public k()Lc/d/a/b/a/c/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$k;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->l()Lc/d/a/b/a/c/x;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/x;)Lc/d/a/b/a/c/n;

    move-result-object v0

    return-object v0
.end method
