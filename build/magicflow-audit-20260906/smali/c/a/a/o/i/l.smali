.class Lc/a/a/o/i/l;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/i/l$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc/a/a/o/i/l$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lc/a/a/o/i/l$b;-><init>(Lc/a/a/o/i/l$a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc/a/a/o/i/l;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/o/i/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/a/a/t/h;->a()V

    .line 2
    iget-boolean v0, p0, Lc/a/a/o/i/l;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/a/a/o/i/l;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v1, p0, Lc/a/a/o/i/l;->a:Z

    .line 5
    invoke-interface {p1}, Lc/a/a/o/i/k;->a()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lc/a/a/o/i/l;->a:Z

    :goto_0
    return-void
.end method
