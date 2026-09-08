.class final Lc/d/a/b/a/j/e$u;
.super Lc/d/a/b/a/c/u$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/w;)Lc/d/a/b/a/c/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/w;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$u;->a:Lc/d/a/b/a/c/w;

    invoke-direct {p0}, Lc/d/a/b/a/c/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJLc/d/a/b/a/c/t;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$u;->a:Lc/d/a/b/a/c/w;

    invoke-static {p5}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/t;)Lc/d/a/b/a/c/v;

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lc/d/a/b/a/c/w;->a(JJLc/d/a/b/a/c/v;)Z

    move-result p1

    return p1
.end method
