.class final Lc/d/a/b/a/j/e$b;
.super Lc/d/a/b/a/c/j;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/q;)Lc/d/a/b/a/c/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/q;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$b;->a:Lc/d/a/b/a/c/q;

    invoke-direct {p0}, Lc/d/a/b/a/c/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$b;->a:Lc/d/a/b/a/c/q;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/d/a/b/a/c/q;->a(Ljava/lang/String;)V
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

.method public a()[I
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$b;->a:Lc/d/a/b/a/c/q;

    invoke-interface {v0}, Lc/d/a/b/a/c/q;->b()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$b;->a:Lc/d/a/b/a/c/q;

    invoke-interface {v0}, Lc/d/a/b/a/c/q;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method
