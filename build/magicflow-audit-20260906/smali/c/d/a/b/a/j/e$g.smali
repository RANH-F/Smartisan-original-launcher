.class final Lc/d/a/b/a/j/e$g;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lc/d/a/b/a/c/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/g;)Lc/d/a/b/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/g;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$g;->a:Lc/d/a/b/a/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$g;->a:Lc/d/a/b/a/c/g;

    invoke-interface {v0, p1, p2}, Lc/d/a/b/a/c/g;->a(II)V
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
