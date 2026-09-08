.class final Lcom/smartisanos/magicflow/service/MagicFlowService$b;
.super Lcom/android/internal/remote/IMagicFlow$Stub;
.source "MagicFlowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/service/MagicFlowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/remote/IMagicFlow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->b()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachToken !!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/service/MagicFlowService$b$a;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/service/MagicFlowService$b$a;-><init>(Lcom/smartisanos/magicflow/service/MagicFlowService$b;Landroid/os/IBinder;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public forceHideDockWindowForHomeKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->b()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "forceHideDockWindowForHomeKey !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/b;->p()V

    return-void
.end method
