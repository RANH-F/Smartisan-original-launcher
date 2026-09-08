.class public Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnlockedReceiver.java"


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method public static b()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    sget p2, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/high16 p2, 0x40000

    .line 3
    invoke-static {p2}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a;

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver$a;-><init>(Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p1, Lcom/smartisanos/magicflow/h/d;->D:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->checkDeletedMailNoSet()V

    :cond_1
    :goto_0
    return-void
.end method
