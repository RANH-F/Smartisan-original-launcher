.class public Lcom/smartisanos/magicflow/receiver/ExpressReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExpressReceiver.java"


# static fields
.field private static a:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/receiver/ExpressReceiver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/receiver/ExpressReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/smartisanos/magicflow/receiver/ExpressReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "ExpressReceiver onReceive return by intent null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.smartisan.push.MESSAGE_RECEIVE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :try_start_0
    const-string p1, "data"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-boolean p2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p2, :cond_1

    .line 5
    sget-object p2, Lcom/smartisanos/magicflow/receiver/ExpressReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExpressReceiver data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->getExpressAccountInfoList()Ljava/util/List;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->unRegisterAllAccount()V

    .line 9
    sget-object p1, Lcom/smartisanos/magicflow/receiver/ExpressReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "ExpressReceiver accountInfoList.size() == 0 unRegisterAllAccount"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    invoke-static {p1}, Lcom/smartisanos/magicflow/h/g;->a(Ljava/lang/String;)Lcom/smartisanos/magicflow/h/g;

    move-result-object p1

    if-nez p1, :cond_3

    .line 11
    sget-object p1, Lcom/smartisanos/magicflow/receiver/ExpressReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "ExpressReceiver return by ExpressListItemInfo == null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_3
    iget-object p2, p1, Lcom/smartisanos/magicflow/h/g;->x:Ljava/lang/String;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->cloudPushResultAccepted(Ljava/lang/String;)V

    .line 13
    iget-object p2, p1, Lcom/smartisanos/magicflow/h/g;->n:Ljava/lang/String;

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->containAccount(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 14
    iget-object p2, p1, Lcom/smartisanos/magicflow/h/g;->n:Ljava/lang/String;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->unRegisterByAccount(Ljava/lang/String;)V

    .line 15
    sget-object p2, Lcom/smartisanos/magicflow/receiver/ExpressReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExpressReceiver accountInfoList not contain info.subPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/g;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_4
    iget-object p2, p1, Lcom/smartisanos/magicflow/h/g;->o:Ljava/lang/String;

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->isDeletedMailNo(Ljava/lang/String;)Z

    move-result p2

    .line 17
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_5

    .line 18
    sget-object v0, Lcom/smartisanos/magicflow/receiver/ExpressReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressReceiver isDeletedMailNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 19
    iget-object p2, p1, Lcom/smartisanos/magicflow/h/g;->o:Ljava/lang/String;

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->addDeletedMailNo(Ljava/lang/String;)V

    .line 20
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/g;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->delPush(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_6
    new-instance p2, Lcom/smartisanos/magicflow/receiver/ExpressReceiver$a;

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/magicflow/receiver/ExpressReceiver$a;-><init>(Lcom/smartisanos/magicflow/receiver/ExpressReceiver;Lcom/smartisanos/magicflow/h/g;)V

    invoke-static {p2}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method
