.class final Lcom/smartisanos/magicflow/b$c;
.super Ljava/lang/Object;
.source "MagicFlowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/b;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0x1000

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/b;->d()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    const-string v1, "abandon call screenshotReady by FLAG_ACTIVATE false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/b;->a()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/RootView;->screenshotReady()V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/b;->a()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/RootView;->updateFloatSearchBackground()V

    return-void
.end method
