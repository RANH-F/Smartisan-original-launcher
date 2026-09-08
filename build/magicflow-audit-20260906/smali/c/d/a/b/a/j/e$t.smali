.class final Lc/d/a/b/a/j/e$t;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lc/d/a/b/a/c/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/y;)Lc/d/a/b/a/c/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/y;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$t;->a:Lc/d/a/b/a/c/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$t;->a:Lc/d/a/b/a/c/y;

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/y;->a(Ljava/util/List;)V
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

.method public a()Z
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$t;->a:Lc/d/a/b/a/c/y;

    invoke-interface {v0}, Lc/d/a/b/a/c/y;->a()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
