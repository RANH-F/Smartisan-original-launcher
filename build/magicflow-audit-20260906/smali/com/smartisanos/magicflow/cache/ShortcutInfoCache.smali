.class public Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;
.super Ljava/lang/Object;
.source "ShortcutInfoCache.java"


# static fields
.field private static final TOOL_SHORTCUT_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static sDisabledInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final toolObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/cache/DataChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->sDisabledInfoList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->TOOL_SHORTCUT_INFO_LIST:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->toolObservers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->sDisabledInfoList:Ljava/util/List;

    return-object v0
.end method

.method public static addShortcutToolList(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->TOOL_SHORTCUT_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->TOOL_SHORTCUT_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->notifyShortcutToolDataChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getDisabledInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->sDisabledInfoList:Ljava/util/List;

    return-object v0
.end method

.method public static getToolShortcutInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->TOOL_SHORTCUT_INFO_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->sDisabledInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getFixedShortcutToolList()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {p0, v2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->getToolShortcutInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->isEnabledItem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    sget-object v3, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->sDisabledInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->updateShortcutToolList(Ljava/util/List;)V

    return-void
.end method

.method private static notifyShortcutToolDataChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->toolObservers:Ljava/util/List;

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

.method public static onShortcutToolPackageChanged(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->TOOL_SHORTCUT_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1, p2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->setInstalled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    sget-object p2, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->sDisabledInfoList:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 5
    new-instance p2, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache$1;

    invoke-direct {p2, p1, p0}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static registerTool(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->toolObservers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->toolObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->toolObservers:Ljava/util/List;

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

.method public static unregisterTool(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->toolObservers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->toolObservers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->toolObservers:Ljava/util/List;

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

.method public static updateShortcutToolList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->TOOL_SHORTCUT_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->TOOL_SHORTCUT_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->TOOL_SHORTCUT_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->notifyShortcutToolDataChanged()V

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
