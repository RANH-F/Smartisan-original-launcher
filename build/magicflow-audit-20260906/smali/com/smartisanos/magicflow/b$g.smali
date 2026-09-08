.class final Lcom/smartisanos/magicflow/b$g;
.super Ljava/lang/Object;
.source "MagicFlowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/b;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/b$g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/magicflow/b;->a()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/b;->a()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/b$g;->a:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/RootView;->hideWithAnim(Z)V

    :cond_1
    :goto_0
    return-void
.end method
