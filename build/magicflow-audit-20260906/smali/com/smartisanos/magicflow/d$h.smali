.class final Lcom/smartisanos/magicflow/d$h;
.super Landroid/database/ContentObserver;
.source "ObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/smartisanos/magicflow/a;->d(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/smartisanos/magicflow/h/d;->l:Z

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/d;->a()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sGlobalLeftScreenObserver onChange sGlobalLeftScreenOpened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/smartisanos/magicflow/h/d;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method
