.class Lcom/smartisanos/magicflow/receiver/ExpressReceiver$a;
.super Ljava/lang/Object;
.source "ExpressReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/receiver/ExpressReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartisanos/magicflow/h/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/receiver/ExpressReceiver;Lcom/smartisanos/magicflow/h/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/magicflow/receiver/ExpressReceiver$a;->a:Lcom/smartisanos/magicflow/h/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/receiver/ExpressReceiver$a;->a:Lcom/smartisanos/magicflow/h/g;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->saveExpressItem(Lcom/smartisanos/magicflow/h/m;)V

    return-void
.end method
