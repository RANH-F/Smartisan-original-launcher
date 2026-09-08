.class Lc/d/a/b/a/j/e$c$c;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e$c;->a(Lc/d/a/b/a/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/f/c;

.field final synthetic b:Lc/d/a/b/a/j/e$c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/j/e$c;Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$c$c;->b:Lc/d/a/b/a/j/e$c;

    iput-object p2, p0, Lc/d/a/b/a/j/e$c$c;->a:Lc/d/a/b/a/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$c$c;->b:Lc/d/a/b/a/j/e$c;

    iget-object v0, v0, Lc/d/a/b/a/j/e$c;->a:Lc/d/a/b/a/c/d0;

    iget-object v1, p0, Lc/d/a/b/a/j/e$c$c;->a:Lc/d/a/b/a/f/c;

    invoke-interface {v0, v1}, Lc/d/a/b/a/c/d0;->a(Lc/d/a/b/a/f/c;)V

    return-void
.end method
