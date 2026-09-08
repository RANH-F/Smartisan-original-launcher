.class final Lcom/smartisanos/magicflow/b$f;
.super Ljava/lang/Object;
.source "MagicFlowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/b;->p()V
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
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/b;->a()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/b;->a()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/RootView;->onHomeKeyEvent()V

    :cond_0
    return-void
.end method
