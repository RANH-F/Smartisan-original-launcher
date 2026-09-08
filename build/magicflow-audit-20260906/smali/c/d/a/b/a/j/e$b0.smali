.class final Lc/d/a/b/a/j/e$b0;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lc/d/a/b/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/c;)Lc/d/a/b/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$b0;->a:Lc/d/a/b/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$b0;->a:Lc/d/a/b/a/c/c;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/c;->a(Lc/d/a/b/a/f/c;)Z

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

.method public b(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$b0;->a:Lc/d/a/b/a/c/c;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/c;->b(Lc/d/a/b/a/f/c;)Z

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
