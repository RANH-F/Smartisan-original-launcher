.class Lcom/smartisanos/magicflow/service/MagicFlowService$a;
.super Ljava/lang/Object;
.source "MagicFlowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/service/MagicFlowService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartisanos/magicflow/service/MagicFlowService;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/service/MagicFlowService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/service/MagicFlowService$a;->a:Lcom/smartisanos/magicflow/service/MagicFlowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/d;->b(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/service/MagicFlowService$a$a;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/service/MagicFlowService$a$a;-><init>(Lcom/smartisanos/magicflow/service/MagicFlowService$a;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
