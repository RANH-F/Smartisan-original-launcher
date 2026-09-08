.class final Lc/d/a/b/a/j/e$e;
.super Lc/d/a/b/a/c/y$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/a0;)Lc/d/a/b/a/c/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/a0;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$e;->a:Lc/d/a/b/a/c/a0;

    invoke-direct {p0}, Lc/d/a/b/a/c/y$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$e;->a:Lc/d/a/b/a/c/a0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/a0;->a(Ljava/util/List;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/j/e$e;->a:Lc/d/a/b/a/c/a0;

    invoke-interface {v0}, Lc/d/a/b/a/c/a0;->a()Z

    move-result v0

    return v0
.end method
