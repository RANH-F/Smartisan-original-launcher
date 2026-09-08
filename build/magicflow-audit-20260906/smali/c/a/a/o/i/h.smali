.class Lc/a/a/o/i/h;
.super Ljava/lang/Object;
.source "EngineResource.java"

# interfaces
.implements Lc/a/a/o/i/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/i/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/o/i/k<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/i/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/i/k<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private c:Lc/a/a/o/i/h$a;

.field private d:Lc/a/a/o/c;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lc/a/a/o/i/k;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "TZ;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lc/a/a/o/i/h;->a:Lc/a/a/o/i/k;

    .line 3
    iput-boolean p2, p0, Lc/a/a/o/i/h;->b:Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Wrapped resource must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget v0, p0, Lc/a/a/o/i/h;->e:I

    if-gtz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lc/a/a/o/i/h;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/a/a/o/i/h;->f:Z

    .line 6
    iget-object v0, p0, Lc/a/a/o/i/h;->a:Lc/a/a/o/i/k;

    invoke-interface {v0}, Lc/a/a/o/i/k;->a()V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lc/a/a/o/c;Lc/a/a/o/i/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a/a/o/i/h;->d:Lc/a/a/o/c;

    .line 2
    iput-object p2, p0, Lc/a/a/o/i/h;->c:Lc/a/a/o/i/h$a;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/h;->a:Lc/a/a/o/i/k;

    invoke-interface {v0}, Lc/a/a/o/i/k;->b()I

    move-result v0

    return v0
.end method

.method c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/a/a/o/i/h;->f:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lc/a/a/o/i/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/a/a/o/i/h;->e:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/a/a/o/i/h;->b:Z

    return v0
.end method

.method e()V
    .locals 2

    .line 1
    iget v0, p0, Lc/a/a/o/i/h;->e:I

    if-lez v0, :cond_2

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lc/a/a/o/i/h;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/a/a/o/i/h;->e:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/a/a/o/i/h;->c:Lc/a/a/o/i/h$a;

    iget-object v1, p0, Lc/a/a/o/i/h;->d:Lc/a/a/o/c;

    invoke-interface {v0, v1, p0}, Lc/a/a/o/i/h$a;->b(Lc/a/a/o/c;Lc/a/a/o/i/h;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/h;->a:Lc/a/a/o/i/k;

    invoke-interface {v0}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
