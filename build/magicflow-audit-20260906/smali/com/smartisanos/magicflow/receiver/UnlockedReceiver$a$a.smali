.class Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a$a;
.super Ljava/lang/Object;
.source "UnlockedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->e()V

    return-void
.end method
