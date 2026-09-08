.class final Lcom/smartisanos/magicflow/service/MagicFlowService$h;
.super Ljava/lang/Object;
.source "MagicFlowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/service/MagicFlowService;->c(Ljava/lang/String;)V
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
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/c;->g()Lcom/smartisanos/magicflow/h/c;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/smartisanos/magicflow/h/b;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/b;-><init>()V

    const-string v2, "News"

    .line 3
    iput-object v2, v1, Lcom/smartisanos/magicflow/h/b;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/c;->a(Lcom/smartisanos/magicflow/h/b;)Lcom/smartisanos/magicflow/view/card/Card;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/j;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->b()Lcom/smartisanos/magicflow/LOG;

    move-result-object v1

    const-string v2, "handleNewsLogic onPermissionsChanged newsCard.onResume"

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->onResume()V

    :cond_1
    return-void
.end method
