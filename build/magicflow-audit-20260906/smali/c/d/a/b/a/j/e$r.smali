.class final Lc/d/a/b/a/j/e$r;
.super Lc/d/a/b/a/c/z$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/b0;)Lc/d/a/b/a/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/b0;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$r;->a:Lc/d/a/b/a/c/b0;

    invoke-direct {p0}, Lc/d/a/b/a/c/z$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/c/y;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$r;->a:Lc/d/a/b/a/c/b0;

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/y;)Lc/d/a/b/a/c/a0;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/b0;->a(Lc/d/a/b/a/c/a0;)Z

    move-result p1

    return p1
.end method
