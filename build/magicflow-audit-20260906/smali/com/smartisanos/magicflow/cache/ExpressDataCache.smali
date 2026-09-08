.class public Lcom/smartisanos/magicflow/cache/ExpressDataCache;
.super Ljava/lang/Object;
.source "ExpressDataCache.java"


# static fields
.field private static volatile EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile EXPRESS_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final accountObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/cache/DataChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static deletedMailNoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final expressObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/cache/DataChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static initDeletedMailNoSetFailed:Z

.field private static final log:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->initDeletedMailNoSetFailed:Z

    .line 3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->deletedMailNoSet:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->expressObservers:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->accountObservers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->initDeletedMailNoSet()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->needUpdateLocalAccount(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->updateExpressSettingItemList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/h/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->updateListItem(Lcom/smartisanos/magicflow/h/m;)V

    return-void
.end method

.method static synthetic access$500()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$600()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->notifyExpressItemDataChanged()V

    return-void
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->exitAccount(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static addAccount(Lcom/smartisanos/magicflow/h/e;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/e;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/g;->a(Ljava/util/List;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 4
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount err itemInfo num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/e;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    if-ltz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static addDeletedMailNo(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->deletedMailNoSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static checkDeletedMailNoSet()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->initDeletedMailNoSetFailed:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$1;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$1;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static clearExpressInfoList()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static containAccount(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/e;

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, v2, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static containsAccount(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/h/e;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static exitAccount(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/h/e;

    .line 2
    iget-object v1, v1, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getExpressAccountInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static getExpressExpressItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static init()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->resetExpressData()V

    return-void

    :cond_0
    const-string v0, "LifeInfo"

    const-string v1, "Express"

    .line 3
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/z/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->updateExpressInfoList(Ljava/util/List;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->initExpressAccountList()V

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->initDeletedMailNoSet()V

    return-void
.end method

.method private static initDeletedMailNoSet()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/t;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->deletedMailNoSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    sput-boolean v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->initDeletedMailNoSetFailed:Z

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->initPushFailDeletedMailNoSet(Ljava/util/Set;)V

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->deletedMailNoSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->initDeletedMailNoSetFailed:Z

    :goto_0
    return-void
.end method

.method public static initExpressAccountList()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/g;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->setAccountInfoSimMark(Ljava/util/List;)V

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->updateExpressSettingItemList(Ljava/util/List;)V

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->unRegisterAllAccount()V

    :cond_1
    return-void
.end method

.method public static isDeletedMailNo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->deletedMailNoSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static needUpdateLocalAccount(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    return v3

    .line 2
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/e;

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method public static notifyExpressAccountDataChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->accountObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcom/smartisanos/magicflow/cache/DataChangeObserver;->onDataChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static notifyExpressItemDataChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->expressObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcom/smartisanos/magicflow/cache/DataChangeObserver;->onDataChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static registerAccount(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;-><init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static registerAccountObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->accountObservers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->accountObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->accountObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static registerExpressObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->expressObservers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->expressObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->expressObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeExpressCardItem(Lcom/smartisanos/magicflow/h/g;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$4;-><init>(Lcom/smartisanos/magicflow/h/g;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static resetExpressData()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "resetExpressData"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->initDeletedMailNoSetFailed:Z

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->deletedMailNoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->j()V

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    const-string v1, "KeyDeletedMailNoSet"

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/t;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/g;->b()I

    const-string v0, "Express"

    .line 9
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/c;->a(Ljava/lang/String;)I

    return-void
.end method

.method public static saveExpressItem(Lcom/smartisanos/magicflow/h/m;)V
    .locals 4

    if-nez p0, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "saveFlightItem return by item info is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    instance-of v0, p0, Lcom/smartisanos/magicflow/h/g;

    if-nez v0, :cond_3

    .line 3
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "saveFlightItem return by item type is not match"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 4
    :cond_3
    check-cast p0, Lcom/smartisanos/magicflow/h/g;

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/g;->c()Landroid/content/ContentValues;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_info=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LifeInfo"

    const-string v3, "Express"

    .line 8
    invoke-static {v2, v3, v0}, Lcom/smartisanos/magicflow/h/z/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/m;

    move-result-object v0

    if-nez v0, :cond_6

    .line 9
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/z/c;->a(Landroid/content/ContentValues;)I

    move-result v0

    if-gtz v0, :cond_5

    .line 10
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "updateLifeItem return by save data err"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 11
    :cond_5
    iput v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    goto :goto_0

    .line 12
    :cond_6
    iget v2, p0, Lcom/smartisanos/magicflow/h/g;->w:I

    move-object v3, v0

    check-cast v3, Lcom/smartisanos/magicflow/h/g;

    iget v3, v3, Lcom/smartisanos/magicflow/h/g;->w:I

    if-ge v2, v3, :cond_7

    .line 13
    sget-object p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "saveFlightItem return by item sequenceNum is invalid"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_7
    iget v0, v0, Lcom/smartisanos/magicflow/h/m;->a:I

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/h/z/c;->a(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 16
    iput v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    .line 17
    :goto_0
    new-instance v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$3;-><init>(Lcom/smartisanos/magicflow/h/g;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendVerificationCode(Landroid/content/Context;Ljava/lang/String;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unRegisterAccount(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;-><init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unregisterAccountObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->accountObservers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->accountObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->accountObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static unregisterExpressObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->expressObservers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->expressObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->expressObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateExpressAccountCloud()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$2;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$2;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static updateExpressInfoList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExpressInfoList list.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static updateExpressSettingItemList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_ACCOUNT_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static updateListItem(Lcom/smartisanos/magicflow/h/m;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/m;

    if-eqz v2, :cond_1

    .line 4
    iget v3, v2, Lcom/smartisanos/magicflow/h/m;->a:I

    iget v4, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    if-ne v3, v4, :cond_1

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_3

    .line 7
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateListItem info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 8
    :cond_3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->EXPRESS_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->notifyExpressItemDataChanged()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public static updateSimCard()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->initAllPhoneNumInSystem()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->notifyExpressAccountDataChanged()V

    return-void
.end method
