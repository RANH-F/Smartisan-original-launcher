.class final Lc/d/a/b/a/j/e$d;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lc/d/a/b/a/c/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/z;)Lc/d/a/b/a/c/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/z;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$d;->a:Lc/d/a/b/a/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/c/a0;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$d;->a:Lc/d/a/b/a/c/z;

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/a0;)Lc/d/a/b/a/c/y;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/z;->a(Lc/d/a/b/a/c/y;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
