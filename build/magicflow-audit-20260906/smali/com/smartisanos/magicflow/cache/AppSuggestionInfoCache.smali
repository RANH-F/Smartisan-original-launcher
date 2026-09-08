.class public Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;
.super Ljava/lang/Object;
.source "AppSuggestionInfoCache.java"


# static fields
.field private static final APP_SUGGESTION_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static mAppSuggestionPackageNames:Ljava/lang/String;

.field private static final recentlyObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/cache/DataChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static sNeedUpdateAppSuggestionList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->APP_SUGGESTION_INFO_LIST:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->recentlyObservers:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->sNeedUpdateAppSuggestionList:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->getAppSuggestionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->sNeedUpdateAppSuggestionList:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->sNeedUpdateAppSuggestionList:Z

    return p0
.end method

.method static synthetic access$200(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->updateAppSuggestionList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->notifyRecentlyDataChanged()V

    return-void
.end method

.method public static getAppSuggestionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->APP_SUGGESTION_INFO_LIST:Ljava/util/List;

    return-object v0
.end method

.method private static getAppSuggestionInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/smartisanos/magicflow/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecommendShortcutInfoList InvisibleApiPackageNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appRecommendPackageNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->mAppSuggestionPackageNames:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->mAppSuggestionPackageNames:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->mAppSuggestionPackageNames:Ljava/lang/String;

    .line 6
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->isValidRecommendList()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 8
    sput-boolean p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->sNeedUpdateAppSuggestionList:Z

    .line 9
    sget-object p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->APP_SUGGESTION_INFO_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->sNeedUpdateAppSuggestionList:Z

    .line 11
    sput-object p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->mAppSuggestionPackageNames:Ljava/lang/String;

    .line 12
    sget-object p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->mAppSuggestionPackageNames:Ljava/lang/String;

    invoke-static {p0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->getAppSuggestionInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->getAppSuggestionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->sNeedUpdateAppSuggestionList:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$2;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static isValidRecommendList()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->APP_SUGGESTION_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->APP_SUGGESTION_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static notifyRecentlyDataChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->recentlyObservers:Ljava/util/List;

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

.method public static onAppSuggestionUninstall(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->APP_SUGGESTION_INFO_LIST:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->updateAppSuggestionCache(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$3;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$3;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static registerAppSuggestion(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->recentlyObservers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->recentlyObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->recentlyObservers:Ljava/util/List;

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

.method public static unregisterAppSuggestion(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->recentlyObservers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->recentlyObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->recentlyObservers:Ljava/util/List;

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

.method public static updateAppSuggestion(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static updateAppSuggestionList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->APP_SUGGESTION_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->APP_SUGGESTION_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->APP_SUGGESTION_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->notifyRecentlyDataChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
