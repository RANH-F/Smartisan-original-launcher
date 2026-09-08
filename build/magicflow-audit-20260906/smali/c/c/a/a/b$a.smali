.class Lc/c/a/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/b;->a(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/a/b;


# direct methods
.method constructor <init>(Lc/c/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1}, Lc/c/a/a/b;->a(Lc/c/a/a/b;)I

    move-result p1

    iget-object v0, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {v0}, Lc/c/a/a/b;->b(Lc/c/a/a/b;)I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1, v1}, Lc/c/a/a/b;->a(Lc/c/a/a/b;Z)Z

    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1, v1}, Lc/c/a/a/b;->a(Lc/c/a/a/b;I)I

    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1}, Lc/c/a/a/b;->c(Lc/c/a/a/b;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v1

    :cond_0
    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1}, Lc/c/a/a/b;->d(Lc/c/a/a/b;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1, v1}, Lc/c/a/a/b;->a(Lc/c/a/a/b;Z)Z

    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1, v1}, Lc/c/a/a/b;->a(Lc/c/a/a/b;I)I

    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1}, Lc/c/a/a/b;->c(Lc/c/a/a/b;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v0

    :cond_1
    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1}, Lc/c/a/a/b;->f(Lc/c/a/a/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {v2}, Lc/c/a/a/b;->e(Lc/c/a/a/b;)I

    move-result v2

    mul-int/2addr v2, v0

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lc/c/a/a/b$a;->a:Lc/c/a/a/b;

    invoke-static {p1}, Lc/c/a/a/b;->g(Lc/c/a/a/b;)I

    return v1
.end method
