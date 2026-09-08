.class final Lc/d/a/b/a/j/e$v;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lc/d/a/b/a/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/t;)Lc/d/a/b/a/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/t;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$v;->a:Lc/d/a/b/a/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$v;->a:Lc/d/a/b/a/c/t;

    invoke-interface {v0}, Lc/d/a/b/a/c/t;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
