.class public Lcom/smartisanos/magicflow/e;
.super Ljava/lang/Object;
.source "ReceiverManager.java"


# static fields
.field private static a:Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;

.field private static b:Lcom/smartisanos/magicflow/receiver/DownloadCompleteReceiver;

.field private static c:Lcom/smartisanos/magicflow/receiver/CloseSystemDialogReceiver;

.field private static d:Lcom/smartisanos/magicflow/receiver/WeatherUpdateReceiver;

.field private static e:Lcom/smartisanos/magicflow/receiver/ScreenReceiver;

.field private static f:Lcom/smartisanos/magicflow/receiver/SimCardReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/e;->a:Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/receiver/DownloadCompleteReceiver;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/receiver/DownloadCompleteReceiver;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/e;->b:Lcom/smartisanos/magicflow/receiver/DownloadCompleteReceiver;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/receiver/CloseSystemDialogReceiver;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/receiver/CloseSystemDialogReceiver;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/e;->c:Lcom/smartisanos/magicflow/receiver/CloseSystemDialogReceiver;

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/receiver/WeatherUpdateReceiver;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/receiver/WeatherUpdateReceiver;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/e;->d:Lcom/smartisanos/magicflow/receiver/WeatherUpdateReceiver;

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/receiver/ScreenReceiver;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/receiver/ScreenReceiver;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/e;->e:Lcom/smartisanos/magicflow/receiver/ScreenReceiver;

    .line 6
    new-instance v0, Lcom/smartisanos/magicflow/receiver/SimCardReceiver;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/receiver/SimCardReceiver;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/e;->f:Lcom/smartisanos/magicflow/receiver/SimCardReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/smartisanos/magicflow/e;->a:Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;

    invoke-static {}, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/e;->b:Lcom/smartisanos/magicflow/receiver/DownloadCompleteReceiver;

    invoke-static {}, Lcom/smartisanos/magicflow/receiver/DownloadCompleteReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/e;->c:Lcom/smartisanos/magicflow/receiver/CloseSystemDialogReceiver;

    invoke-static {}, Lcom/smartisanos/magicflow/receiver/CloseSystemDialogReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/e;->d:Lcom/smartisanos/magicflow/receiver/WeatherUpdateReceiver;

    invoke-static {}, Lcom/smartisanos/magicflow/receiver/WeatherUpdateReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/e;->e:Lcom/smartisanos/magicflow/receiver/ScreenReceiver;

    invoke-static {}, Lcom/smartisanos/magicflow/receiver/ScreenReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/e;->f:Lcom/smartisanos/magicflow/receiver/SimCardReceiver;

    invoke-static {}, Lcom/smartisanos/magicflow/receiver/SimCardReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/smartisanos/magicflow/e;->a:Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/e;->b:Lcom/smartisanos/magicflow/receiver/DownloadCompleteReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/e;->c:Lcom/smartisanos/magicflow/receiver/CloseSystemDialogReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/e;->d:Lcom/smartisanos/magicflow/receiver/WeatherUpdateReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/e;->e:Lcom/smartisanos/magicflow/receiver/ScreenReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/e;->f:Lcom/smartisanos/magicflow/receiver/SimCardReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
