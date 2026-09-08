.class final Lcom/smartisanos/magicflow/d$d;
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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    sget-boolean p1, Lcom/smartisanos/magicflow/h/d;->P:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/n;->s(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/smartisanos/magicflow/h/d;->N:Z

    :cond_0
    return-void
.end method
