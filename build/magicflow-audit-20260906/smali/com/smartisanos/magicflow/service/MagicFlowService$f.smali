.class Lcom/smartisanos/magicflow/service/MagicFlowService$f;
.super Landroid/app/IActivityObserver$Stub;
.source "MagicFlowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/service/MagicFlowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/service/MagicFlowService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/IActivityObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivitiesForeground(Ljava/lang/String;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/service/MagicFlowService$f$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smartisanos/magicflow/service/MagicFlowService$f$a;-><init>(Lcom/smartisanos/magicflow/service/MagicFlowService$f;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method
