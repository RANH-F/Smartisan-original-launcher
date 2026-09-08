.class final Lcom/smartisanos/magicflow/d$g;
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
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/n;->n(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/smartisanos/magicflow/h/d;->j:Z

    .line 3
    sget-boolean p1, Lcom/smartisanos/magicflow/h/d;->j:Z

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/d$g$a;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/d$g$a;-><init>(Lcom/smartisanos/magicflow/d$g;)V

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
