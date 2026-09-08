.class Lcom/bytedance/tea/crash/i/a/d;
.super Ljava/lang/Object;
.source "BatteryWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/i/a/d$b;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/i/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/i/a/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/tea/crash/i/a/d;->a:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/bytedance/tea/crash/i/a/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/tea/crash/i/a/d$b;-><init>(Lcom/bytedance/tea/crash/i/a/d;Lcom/bytedance/tea/crash/i/a/d$a;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/bytedance/tea/crash/i/a/d;->a:I

    return v0
.end method
