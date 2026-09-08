.class Lc/d/a/b/a/j/e$c$e;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e$c;->c(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/f/c;

.field final synthetic b:Lc/d/a/b/a/d/a;

.field final synthetic c:Lc/d/a/b/a/j/e$c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$c$e;->c:Lc/d/a/b/a/j/e$c;

    iput-object p2, p0, Lc/d/a/b/a/j/e$c$e;->a:Lc/d/a/b/a/f/c;

    iput-object p3, p0, Lc/d/a/b/a/j/e$c$e;->b:Lc/d/a/b/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$c$e;->c:Lc/d/a/b/a/j/e$c;

    iget-object v0, v0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    iget-object v1, p0, Lc/d/a/b/a/j/e$c$e;->a:Lc/d/a/b/a/f/c;

    iget-object v2, p0, Lc/d/a/b/a/j/e$c$e;->b:Lc/d/a/b/a/d/a;

    invoke-interface {v0, v1, v2}, Lc/d/a/b/a/c/d0;->c(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    return-void
.end method
