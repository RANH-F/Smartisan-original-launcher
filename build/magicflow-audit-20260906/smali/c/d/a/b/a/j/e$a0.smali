.class final Lc/d/a/b/a/j/e$a0;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lc/d/a/b/a/c/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/f0;)Lc/d/a/b/a/c/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/f0;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$a0;->a:Lc/d/a/b/a/c/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$a0;->a:Lc/d/a/b/a/c/f0;

    invoke-interface {v0}, Lc/d/a/b/a/c/f0;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$a0;->a:Lc/d/a/b/a/c/f0;

    invoke-interface {v0, p1, p2, p3, p4}, Lc/d/a/b/a/c/f0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Z)Z
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$a0;->a:Lc/d/a/b/a/c/f0;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/f0;->a(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
