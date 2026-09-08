.class public Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageIntentReceiver.java"


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

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    if-nez v2, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_1
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "com.jingdong.app.mall"

    const-string v6, "com.taobao.taobao"

    const-string v7, "com.eg.android.AlipayGphone"

    if-eqz v0, :cond_6

    .line 9
    :try_start_2
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 10
    sput-boolean v1, Lcom/smartisanos/magicflow/h/d;->n:Z

    .line 11
    :cond_3
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/d;->b(Z)V

    .line 13
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/d;->a(Z)V

    .line 15
    :cond_5
    invoke-static {p1, p2, v1}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->onShortcutToolPackageChanged(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 16
    new-instance v0, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver$a;

    invoke-direct {v0, p0, p2}, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver$a;-><init>(Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    .line 18
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->h(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v2, :cond_b

    .line 20
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    sput-boolean v4, Lcom/smartisanos/magicflow/h/d;->n:Z

    .line 22
    :cond_7
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    invoke-static {v4}, Lcom/smartisanos/magicflow/h/d;->b(Z)V

    .line 24
    :cond_8
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-static {v4}, Lcom/smartisanos/magicflow/h/d;->a(Z)V

    .line 26
    :cond_9
    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->musicAppUnInstall(Ljava/lang/String;)V

    .line 27
    invoke-static {p1, p2, v4}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->onShortcutToolPackageChanged(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    new-instance p1, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver$b;

    invoke-direct {p1, p0, p2}, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver$b;-><init>(Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/o/d;->send()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_a
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_1
    return-void
.end method
