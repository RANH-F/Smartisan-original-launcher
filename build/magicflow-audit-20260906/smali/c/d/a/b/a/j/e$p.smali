.class final Lc/d/a/b/a/j/e$p;
.super Lc/d/a/b/a/c/c$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/d;)Lc/d/a/b/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/d;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$p;->a:Lc/d/a/b/a/c/d;

    invoke-direct {p0}, Lc/d/a/b/a/c/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$p;->a:Lc/d/a/b/a/c/d;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d;->a(Lc/d/a/b/a/f/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$p;->a:Lc/d/a/b/a/c/d;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/d;->b(Lc/d/a/b/a/f/c;)Z

    move-result p1

    return p1
.end method
