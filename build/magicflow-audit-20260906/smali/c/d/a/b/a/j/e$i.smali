.class final Lc/d/a/b/a/j/e$i;
.super Lc/d/a/b/a/c/t$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/v;)Lc/d/a/b/a/c/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/v;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$i;->a:Lc/d/a/b/a/c/v;

    invoke-direct {p0}, Lc/d/a/b/a/c/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$i;->a:Lc/d/a/b/a/c/v;

    invoke-interface {v0}, Lc/d/a/b/a/c/v;->a()V

    return-void
.end method
