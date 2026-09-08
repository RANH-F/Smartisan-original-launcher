.class public Lcom/smartisanos/magicflow/cache/SettingDataCache;
.super Ljava/lang/Object;
.source "SettingDataCache.java"


# static fields
.field private static currentMainSettingDisabledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static currentMainSettingEnabledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static final observerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smartisanos/magicflow/cache/SettingObserverInfo;",
            "Lcom/smartisanos/magicflow/cache/SettingChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static sSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/magicflow/h/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingDisabledList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingEnabledList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->observerMap:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->notifySaveFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static asList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 5
    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static cardIsEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledCategoryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getCalendarTimeRange()I
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "KeyCalendarTimeRange"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->getDayAfterNow()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->a(I)V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->getDayAfterNow()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDisabledCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getDisabledCategoryOrder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->asList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getDisabledCategoryOrder()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "DisabledCategoryOrder"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "getDisabledCategoryOrder settingInfo null return null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getDisabledNewsChannelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getDisabledNewsChannelOrder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->asList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getDisabledNewsChannelOrder()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "DisabledNewsChannelOrder"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "getDisabledNewsChannelOrder settingInfo null return null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnabledCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledCategoryOrder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->asList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getEnabledCategoryOrder()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "EnabledCategoryOrder"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "getEnabledCategoryOrder settingInfo null return null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getEnabledCategoryOrder settingInfo is null!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnabledNewsChannelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledNewsChannelOrder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->asList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getEnabledNewsChannelOrder()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "EnabledNewsChannelOrder"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "getEnabledNewsChannelOrder settingInfo null return null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getEnabledNewsChannelOrder settingInfo is null!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnabledNewsChannelSize()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledNewsChannelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getFixedShortcutToolList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getFixedShortcutToolOrder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->asList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getFixedShortcutToolOrder()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "KeyShortcutToolOrder"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->getDefShortcutToolOrder()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->g(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    const-string v2, "open_ailpay_bus_code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->getShortcutChangedOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->g(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_1
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "Key_Equipment_Identity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "isCategoryEnabled settingInfo null return true"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getPedometerInfo()Lcom/smartisanos/magicflow/k/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "KeyPedometerInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/k/b;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/k/b;-><init>()V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/k/b;->a(Ljava/lang/String;)Lcom/smartisanos/magicflow/k/b;

    move-result-object v0

    return-object v0
.end method

.method public static getSubCategoryNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "MusicFastPayment"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/h/v;->d:[Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "LifeInfo"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/smartisanos/magicflow/h/v;->e:[Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "News"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    sget-object p0, Lcom/smartisanos/magicflow/h/v;->f:[Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSubEnabledCategoryList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getSubCategoryNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 4
    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/h/u;

    .line 3
    iget-object v2, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isAgreedExpressProtocol()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "KeyAgreeExpressProtocol"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "isAgreedExpressProtocol settingInfo null return false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    iget v0, v0, Lcom/smartisanos/magicflow/h/u;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isCategoryEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, v1}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    .line 3
    sget-object p0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "isCategoryEnabled settingInfo null return true"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_0
    iget p0, v0, Lcom/smartisanos/magicflow/h/u;->d:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isExpressCancelled()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "KeyExpressCancel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "isExpressCancelled settingInfo null return false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    iget v0, v0, Lcom/smartisanos/magicflow/h/u;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isLifeInfoAlertAlerted(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/h/u;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "isLifeInfoAlertAlerted settingInfo null return false"

    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_0
    iget p0, p0, Lcom/smartisanos/magicflow/h/u;->d:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static isReady()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "EnabledCategoryOrder"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newsChannelIsOpened()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    const-string v1, "NewsChannelOpened"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {v2}, Lcom/smartisanos/magicflow/h/v;->a(Z)V

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "newsChannelIsOpened settingInfo null return false"

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_0
    iget v0, v0, Lcom/smartisanos/magicflow/h/u;->d:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private static notifyDataChanged(Lcom/smartisanos/magicflow/h/u;Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    invoke-virtual {v2, p2}, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    .line 7
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/cache/SettingChangeObserver;->onSettingChanged(Lcom/smartisanos/magicflow/h/u;Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static notifySaveFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    invoke-virtual {v2, p1}, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    .line 7
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/smartisanos/magicflow/cache/SettingChangeObserver;->onSettingSaveFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static refreshSettingEnabledCategoryOrder(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "DisabledCategoryOrder"

    const-string v1, "EnabledCategoryOrder"

    if-eqz p1, :cond_1

    .line 1
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingEnabledList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingEnabledList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingEnabledList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->replaceSettingCategoryOrder(Ljava/util/List;Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingDisabledList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingDisabledList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object p0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingDisabledList:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->replaceSettingCategoryOrder(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingEnabledList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingEnabledList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingEnabledList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->replaceSettingCategoryOrder(Ljava/util/List;Ljava/lang/String;)V

    .line 10
    :cond_2
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingDisabledList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    sget-object p1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingDisabledList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    sget-object p0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingDisabledList:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->replaceSettingCategoryOrder(Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static register(Lcom/smartisanos/magicflow/cache/SettingObserverInfo;Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->observerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method private static replaceSettingCategoryOrder(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 3
    new-instance p0, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    .line 9
    :goto_0
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->replaceSettingInfoMap(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    return-void
.end method

.method public static replaceSettingInfoMap(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/u;

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->sSettingMap:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0, p0, p1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->notifyDataChanged(Lcom/smartisanos/magicflow/h/u;Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-object v0
.end method

.method public static saveDatabaseFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/cache/SettingDataCache$2;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/cache/SettingDataCache$2;-><init>(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setMainSettingCurrentDisabledList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingDisabledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "setMainSettingDisabledList disableList null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingDisabledList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static setMainSettingCurrentEnabledList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingEnabledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "setMainSettingCurrentEnabledList enableList null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->currentMainSettingEnabledList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static unregister(Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/SettingDataCache;->observerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/smartisanos/magicflow/cache/SettingDataCache;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 9
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static updateSettingInfoMap(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/cache/SettingDataCache$1;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/cache/SettingDataCache$1;-><init>(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
