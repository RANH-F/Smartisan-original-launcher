.class final Lc/d/a/b/a/j/e$a;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lc/d/a/b/a/c/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/m;)Lc/d/a/b/a/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/m;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$a;->a:Lc/d/a/b/a/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$a;->a:Lc/d/a/b/a/c/m;

    invoke-interface {v0, p1, p2, p3}, Lc/d/a/b/a/c/m;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V
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
