.class public Lcom/smartisanos/magicflow/cache/NewsCache;
.super Ljava/lang/Object;
.source "NewsCache.java"


# static fields
.field public static final LOAD_AD_MAX_NUM:I = 0x3

.field private static final LOAD_AD_MAX_NUM_CARD:I = 0x1

.field private static final MEMORY_SAVE_MAX_SIZE:I = 0x14

.field private static final NEWS_OBSERVERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field public static volatile sCurrentCheckedId:I

.field private static sNewNewsNum:I

.field private static volatile sNewsListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sRedundancyAdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/cache/NewsCache;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, -0x1

    .line 2
    sput v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewNewsNum:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewsListMap:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sRedundancyAdMap:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->NEWS_OBSERVERS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/concurrent/Future;Ljava/lang/String;Lcom/smartisanos/magicflow/cache/FailedCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/smartisanos/magicflow/cache/NewsCache;->loadNewsFinish(Ljava/util/concurrent/Future;Ljava/lang/String;Lcom/smartisanos/magicflow/cache/FailedCallback;)V

    return-void
.end method

.method private static checkCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "__all__"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "news_card__all__"

    .line 2
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static getCacheSize(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "smartisan_read"

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    const-string p0, "__all__"

    .line 2
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getLocalNewsItemList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "smartisan_read"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p0, Lcom/smartisanos/magicflow/j/c;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/j/c;-><init>()V

    goto :goto_1

    :cond_1
    const-string v0, "news_card__all__"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "__all__"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v1

    goto :goto_1

    .line 6
    :cond_3
    :goto_0
    new-instance p0, Lcom/smartisanos/magicflow/j/a;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/j/a;-><init>()V

    :goto_1
    if-nez p0, :cond_4

    .line 7
    sget-object p0, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "getLocalNewsItemList return by responseParser null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_4
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/j/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/m/a;

    if-eqz p0, :cond_5

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 10
    iget-object p0, p0, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static getNewNewsNum()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewNewsNum:I

    return v0
.end method

.method public static getNewsList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewsListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v1, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewsListMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewsListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNoShowTTFeedAdList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sRedundancyAdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/l;

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v2, Lcom/smartisanos/magicflow/h/l;->D:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static init()V
    .locals 1

    const-string v0, "News"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->cardIsEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "news_card__all__"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->initNewsWithLocal(Ljava/lang/String;)V

    const-string v0, "smartisan_read"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->initNewsWithLocal(Ljava/lang/String;)V

    return-void
.end method

.method public static initNewsWithLocal(Ljava/lang/String;)V
    .locals 5

    const-string v0, "news_card__all__"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TouTiao"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "smartisan_read"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SmartisanReader"

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/NewsCache;->checkCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/smartisanos/magicflow/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_2

    .line 8
    sget-object v2, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWithLocal fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " content="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 9
    invoke-static {p0, v1}, Lcom/smartisanos/magicflow/cache/NewsCache;->getLocalNewsItemList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p0, v2, v1}, Lcom/smartisanos/magicflow/cache/NewsCache;->updateDataList(ZLjava/lang/String;ZLjava/util/List;)V

    return-void
.end method

.method private static loadNewsFinish(Ljava/util/concurrent/Future;Ljava/lang/String;Lcom/smartisanos/magicflow/cache/FailedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/smartisanos/magicflow/h/r;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/smartisanos/magicflow/cache/FailedCallback;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/h/r;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/r;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/r;->d()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/r;->a()Ljava/util/List;

    move-result-object p0

    .line 5
    invoke-static {p2, p1, v0, p0}, Lcom/smartisanos/magicflow/cache/NewsCache;->updateDataList(ZLjava/lang/String;ZLjava/util/List;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2}, Lcom/smartisanos/magicflow/cache/FailedCallback;->onFailedCallback()V

    .line 7
    :cond_1
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadTTWithServer newsResult="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/r;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static loadReadWithServer(Landroid/content/Context;ZLcom/smartisanos/magicflow/cache/FailedCallback;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->c:Z

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "loadReadWithServer return by leftScreen not open "

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2}, Lcom/smartisanos/magicflow/cache/FailedCallback;->onFailedCallback()V

    .line 5
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v0, Lcom/smartisanos/magicflow/i/e;

    const/4 v1, 0x2

    const-string v2, "smartisan_read"

    invoke-direct {v0, v1, v2, p1}, Lcom/smartisanos/magicflow/i/e;-><init>(ILjava/lang/String;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Lcom/smartisanos/magicflow/cache/NewsCache$1;

    invoke-direct {p1, p0, p2}, Lcom/smartisanos/magicflow/cache/NewsCache$1;-><init>(Ljava/util/List;Lcom/smartisanos/magicflow/cache/FailedCallback;)V

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadTTWithServer(Landroid/content/Context;ZLjava/lang/String;Lcom/smartisanos/magicflow/cache/FailedCallback;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->c:Z

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "loadTTWithServer return by leftScreen not open "

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "loadTTWithServer return by category null "

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    .line 6
    invoke-interface {p3}, Lcom/smartisanos/magicflow/cache/FailedCallback;->onFailedCallback()V

    .line 7
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->e()Z

    move-result p0

    if-nez p0, :cond_5

    .line 9
    sget-object p0, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "loadTTWithServer return by no PhoneState Permission "

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 10
    invoke-interface {p3}, Lcom/smartisanos/magicflow/cache/FailedCallback;->onFailedCallback()V

    :cond_4
    return-void

    .line 11
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string p0, "news_card__all__"

    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 13
    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/NewsCache;->checkCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v6}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNoShowTTFeedAdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 p0, 0x0

    goto :goto_0

    .line 15
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    const/4 v0, 0x1

    if-eqz v7, :cond_7

    move v3, v0

    goto :goto_1

    :cond_7
    rsub-int/lit8 v1, p0, 0x3

    move v3, v1

    .line 16
    :goto_1
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_8

    .line 17
    sget-object v1, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needAdSize="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",noShowedAdNum="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 18
    :cond_8
    new-instance p0, Lcom/smartisanos/magicflow/i/e;

    invoke-direct {p0, v0, v6, p1}, Lcom/smartisanos/magicflow/i/e;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance p0, Lcom/smartisanos/magicflow/cache/NewsCache$2;

    move-object v0, p0

    move-object v1, p3

    move v5, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/magicflow/cache/NewsCache$2;-><init>(Lcom/smartisanos/magicflow/cache/FailedCallback;Ljava/util/List;ILjava/util/List;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static notifyNews(Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->NEWS_OBSERVERS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;->onDataChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static register(Ljava/lang/String;Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->NEWS_OBSERVERS:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/NewsCache;->NEWS_OBSERVERS:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static removeNewsData()V
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewsListMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "__all__"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "smartisan_read"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v2, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewsListMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    sget-object v2, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewsListMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v1, :cond_0

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, v2, -0x14

    if-le v3, v4, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static setRedundancyAds(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRedundancyAds size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    .line 3
    sget-object p1, Lcom/smartisanos/magicflow/cache/NewsCache;->sRedundancyAdMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sRedundancyAdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 7
    :cond_3
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sRedundancyAdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/NewsCache;->NEWS_OBSERVERS:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/NewsCache;->NEWS_OBSERVERS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/smartisanos/magicflow/cache/NewsCache;->NEWS_OBSERVERS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
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

.method public static updateCardData(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v1, v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->loadReadWithServer(Landroid/content/Context;ZLcom/smartisanos/magicflow/cache/FailedCallback;)V

    const-string v2, "news_card__all__"

    .line 2
    invoke-static {p0, v1, v2, v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->loadTTWithServer(Landroid/content/Context;ZLjava/lang/String;Lcom/smartisanos/magicflow/cache/FailedCallback;)V

    return-void
.end method

.method public static updateDataList(ZLjava/lang/String;ZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, " pullDownRefresh="

    if-nez p3, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDataList return by list null! category="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/NewsCache;->checkCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4
    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/l/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    .line 5
    sput v4, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewNewsNum:I

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v2, v1, p3}, Lcom/smartisanos/magicflow/l/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    move v3, v4

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    sput v3, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewNewsNum:I

    goto :goto_1

    .line 8
    :cond_3
    sput v4, Lcom/smartisanos/magicflow/cache/NewsCache;->sNewNewsNum:I

    .line 9
    :goto_1
    invoke-virtual {v2, p2, v1, p3}, Lcom/smartisanos/magicflow/l/a;->a(ZLjava/lang/String;Ljava/util/List;)V

    if-eqz p0, :cond_5

    .line 10
    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/l/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 11
    sget-boolean p3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p3, :cond_4

    .line 12
    sget-object p3, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "totalSize = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/NewsCache;->checkCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-virtual {v2, p0}, Lcom/smartisanos/magicflow/l/a;->a(I)I

    move-result p0

    .line 15
    invoke-virtual {v2, p3, p0}, Lcom/smartisanos/magicflow/l/a;->a(Ljava/lang/String;I)V

    .line 16
    :cond_5
    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/l/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 17
    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/l/a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 18
    invoke-virtual {v2, v1, p0, p3}, Lcom/smartisanos/magicflow/l/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 19
    invoke-static {v1, p0}, Lcom/smartisanos/magicflow/cache/NewsCache;->updateNewsMapItemList(Ljava/lang/String;Ljava/util/List;)V

    const/4 p3, 0x0

    .line 20
    invoke-static {p1, p3, v4}, Lcom/smartisanos/magicflow/cache/NewsCache;->notifyNews(Ljava/lang/String;ZI)V

    .line 21
    sget-boolean p3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p3, :cond_6

    .line 22
    sget-object p3, Lcom/smartisanos/magicflow/cache/NewsCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataList category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " allItemInfos.size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {p3, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static updateNewsMapItemList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method
