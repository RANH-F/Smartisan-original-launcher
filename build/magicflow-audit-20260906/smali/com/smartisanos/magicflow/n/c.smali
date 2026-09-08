.class public Lcom/smartisanos/magicflow/n/c;
.super Landroid/app/AlertDialog;
.source "UpdateProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/n/c$b;
    }
.end annotation


# instance fields
.field private a:Lcom/smartisanos/magicflow/LOG;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/smartisanos/magicflow/n/c$b;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/n/c;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/n/c;->a:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/n/c;->c:I

    .line 4
    iput-object p2, p0, Lcom/smartisanos/magicflow/n/c;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/smartisanos/magicflow/n/c;->c:I

    .line 6
    new-instance p1, Lcom/smartisanos/magicflow/n/c$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/smartisanos/magicflow/n/c$b;-><init>(Lcom/smartisanos/magicflow/n/c;Lcom/smartisanos/magicflow/n/c$a;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/n/c;->d:Lcom/smartisanos/magicflow/n/c$b;

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 3

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080046

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smartisanos/magicflow/n/c;->e:Landroid/widget/TextView;

    const v1, 0x7f080048

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/smartisanos/magicflow/n/c;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/n/c;->a(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/n/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/n/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(I)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/n/c;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%d%%"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/n/c;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/n/c;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/n/c;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/magicflow/n/c;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/n/c;->a:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/n/c;->d:Lcom/smartisanos/magicflow/n/c$b;

    const/16 v1, 0x129

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/n/a;->d()Lcom/smartisanos/magicflow/n/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/smartisanos/magicflow/n/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/smartisanos/magicflow/n/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/n/c;->d:Lcom/smartisanos/magicflow/n/c$b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/n/c;->dismiss()V

    .line 4
    iget p1, p0, Lcom/smartisanos/magicflow/n/c;->c:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    const v0, 0x7f0d0074

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/n/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 6
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/n/c;->d:Lcom/smartisanos/magicflow/n/c$b;

    const/16 v1, 0x129

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
