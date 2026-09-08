.class final Lc/d/a/b/a/j/e$h;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lc/d/a/b/a/c/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/u;)Lc/d/a/b/a/c/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/u;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$h;->a:Lc/d/a/b/a/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJLc/d/a/b/a/c/v;)Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/j/e$h;->a:Lc/d/a/b/a/c/u;

    invoke-static {p5}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/v;)Lc/d/a/b/a/c/t;

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lc/d/a/b/a/c/u;->a(JJLc/d/a/b/a/c/t;)Z

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
