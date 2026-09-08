.class Lcom/smartisanos/magicflow/n/c$b;
.super Landroid/os/Handler;
.source "UpdateProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartisanos/magicflow/n/c;


# direct methods
.method private constructor <init>(Lcom/smartisanos/magicflow/n/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/n/c$b;->a:Lcom/smartisanos/magicflow/n/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/magicflow/n/c;Lcom/smartisanos/magicflow/n/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/n/c$b;-><init>(Lcom/smartisanos/magicflow/n/c;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x129

    if-ne p1, v0, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/n/a;->d()Lcom/smartisanos/magicflow/n/a;

    move-result-object p1

    iget-object v1, p0, Lcom/smartisanos/magicflow/n/c$b;->a:Lcom/smartisanos/magicflow/n/c;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/n/c$b;->a:Lcom/smartisanos/magicflow/n/c;

    invoke-static {v2}, Lcom/smartisanos/magicflow/n/c;->a(Lcom/smartisanos/magicflow/n/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/smartisanos/magicflow/n/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/n/c$b;->a:Lcom/smartisanos/magicflow/n/c;

    invoke-static {p1}, Lcom/smartisanos/magicflow/n/c;->b(Lcom/smartisanos/magicflow/n/c;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appstore progress: -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/n/c$b;->a:Lcom/smartisanos/magicflow/n/c;

    invoke-static {v1}, Lcom/smartisanos/magicflow/n/c;->a(Lcom/smartisanos/magicflow/n/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/n/c$b;->a:Lcom/smartisanos/magicflow/n/c;

    invoke-static {v0}, Lcom/smartisanos/magicflow/n/c;->b(Lcom/smartisanos/magicflow/n/c;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appstore progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/n/c$b;->a:Lcom/smartisanos/magicflow/n/c;

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/n/c;->a(Lcom/smartisanos/magicflow/n/c;I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/n/c$b;->a:Lcom/smartisanos/magicflow/n/c;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/n/c;->dismiss()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/n/c$b;->a:Lcom/smartisanos/magicflow/n/c;

    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/n/c;->a(Lcom/smartisanos/magicflow/n/c;I)V

    const-wide/16 v1, 0x12c

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
