.class Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a;
.super Ljava/lang/Object;
.source "UnlockedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/d;->f(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;->a()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUserAgreedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/smartisanos/magicflow/h/d;->T:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a$a;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a$a;-><init>(Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
