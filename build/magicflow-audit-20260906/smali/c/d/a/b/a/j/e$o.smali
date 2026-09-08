.class final Lc/d/a/b/a/j/e$o;
.super Lc/d/a/b/a/c/f0$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/g0;)Lc/d/a/b/a/c/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/g0;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$o;->a:Lc/d/a/b/a/c/g0;

    invoke-direct {p0}, Lc/d/a/b/a/c/f0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/j/e$o;->a:Lc/d/a/b/a/c/g0;

    invoke-interface {v0}, Lc/d/a/b/a/c/g0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$o;->a:Lc/d/a/b/a/c/g0;

    invoke-interface {v0, p1, p2, p3, p4}, Lc/d/a/b/a/c/g0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/j/e$o;->a:Lc/d/a/b/a/c/g0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/g0;->a(Z)Z

    move-result p1

    return p1
.end method
