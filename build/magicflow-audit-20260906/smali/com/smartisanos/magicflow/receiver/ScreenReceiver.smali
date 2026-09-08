.class public Lcom/smartisanos/magicflow/receiver/ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenReceiver.java"


# static fields
.field private static a:Ljava/lang/String; = "action_keyguard_to_dismiss"

.field private static b:Ljava/lang/String; = "action_keyguard_on"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/receiver/ScreenReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/receiver/ScreenReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-boolean p1, Lcom/smartisanos/magicflow/h/d;->c:Z

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget p1, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isReady()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x4

    .line 4
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 5
    :cond_4
    invoke-static {}, Lcom/smartisanos/magicflow/h/c;->g()Lcom/smartisanos/magicflow/h/c;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/smartisanos/magicflow/h/b;

    invoke-direct {v2}, Lcom/smartisanos/magicflow/h/b;-><init>()V

    const-string v3, "MusicFastPayment"

    .line 7
    iput-object v3, v2, Lcom/smartisanos/magicflow/h/b;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/h/c;->a(Lcom/smartisanos/magicflow/h/b;)Lcom/smartisanos/magicflow/view/card/Card;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 10
    sget-object v2, Lcom/smartisanos/magicflow/receiver/ScreenReceiver;->a:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->resetMusicInfoTextStatus(Z)V

    .line 13
    :cond_5
    invoke-static {}, Lcom/smartisanos/magicflow/b;->q()V

    goto :goto_0

    .line 14
    :cond_6
    sget-object p1, Lcom/smartisanos/magicflow/receiver/ScreenReceiver;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    const/4 p1, 0x0

    .line 15
    invoke-virtual {v1, p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->resetMusicInfoTextStatus(Z)V

    :cond_7
    :goto_0
    return-void
.end method
