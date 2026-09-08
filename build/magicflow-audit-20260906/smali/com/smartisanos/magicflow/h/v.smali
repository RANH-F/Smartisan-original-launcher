.class public Lcom/smartisanos/magicflow/h/v;
.super Ljava/lang/Object;
.source "SettingInfoManager.java"


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/v;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "MusicFastPayment"

    const-string v2, "ShortcutButton"

    const-string v3, "AppSuggestion"

    const-string v4, "Contacts"

    const-string v5, "Calendar"

    const-string v6, "LifeInfo"

    const-string v7, "News"

    const-string v8, "AppRecommend"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/v;->b:[Ljava/lang/String;

    const-string v1, "__all__"

    const-string v2, "news_hot"

    const-string v3, "news_tech"

    const-string v4, "news_sports"

    const-string v5, "news_car"

    const-string v6, "news_finance"

    const-string v7, "news_world"

    const-string v8, "news_house"

    const-string v9, "news_discovery"

    const-string v10, "news_history"

    const-string v11, "news_photography"

    .line 3
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/v;->c:[Ljava/lang/String;

    const-string v0, "AlipayQRCode"

    const-string v1, "AlipayScan"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/v;->d:[Ljava/lang/String;

    const-string v0, "Movie"

    const-string v1, "Flight"

    const-string v2, "Train"

    const-string v3, "Hotel"

    const-string v4, "Express"

    .line 5
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/v;->e:[Ljava/lang/String;

    const-string v0, "TouTiao"

    const-string v1, "SmartisanReader"

    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/v;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;I)Lcom/smartisanos/magicflow/h/u;
    .locals 1

    .line 37
    new-instance v0, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 38
    iput-object p0, v0, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    .line 39
    iput p1, v0, Lcom/smartisanos/magicflow/h/u;->d:I

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;
    .locals 1

    .line 40
    new-instance v0, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 41
    iput-object p0, v0, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    .line 42
    iput-object p1, v0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/smartisanos/magicflow/h/p;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 24
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/p;->a()Ljava/util/List;

    move-result-object p0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/h/o;

    .line 27
    iget-object v2, v1, Lcom/smartisanos/magicflow/h/o;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    iget-object v1, v1, Lcom/smartisanos/magicflow/h/o;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 43
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, v1}, Lcom/smartisanos/magicflow/h/z/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    .line 45
    sget-object v0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSettingDBInfoOrder return info.value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    return-object p0

    .line 47
    :cond_0
    sget-object p0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "getSettingDBInfoOrder return null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(I)V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyCalendarTimeRange"

    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 6
    :try_start_0
    sget-object v0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "init start"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const-string v0, "EnabledCategoryOrder"

    .line 7
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/v;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 9
    :cond_0
    sget p0, Lcom/smartisanos/magicflow/h/d;->R:I

    const v0, 0x6af6d0

    if-le p0, v0, :cond_1

    .line 10
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->e()V

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->l()V

    .line 12
    :cond_1
    :goto_0
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->init()V

    .line 13
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->a()Z

    move-result p0

    sput-boolean p0, Lcom/smartisanos/magicflow/h/v;->g:Z

    .line 14
    sget-object p0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init end mIsChangePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/smartisanos/magicflow/h/v;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/h/v;->b(Ljava/lang/String;Z)Lcom/smartisanos/magicflow/h/u;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/StringBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ";"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Z)V
    .locals 1

    const-string v0, "NewsChannelOpened"

    .line 34
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->b(Ljava/lang/String;Z)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p1, p0}, Lcom/smartisanos/magicflow/h/v;->b(Ljava/lang/String;Z)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method private static a()Z
    .locals 5

    .line 16
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 18
    sget-object v0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "checkIMEI decodedIMEI null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 19
    :cond_0
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    sget-object v0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "checkIMEI Constants.IMEI null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 22
    sget-object v0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkChangePhoneByIMEI result= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private static b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 13
    invoke-static {p1}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/h/z/n;->a(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/magicflow/h/z/n;->a(Landroid/content/ContentValues;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static b(Ljava/lang/String;Z)Lcom/smartisanos/magicflow/h/u;
    .locals 1

    .line 9
    new-instance v0, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 10
    iput-object p0, v0, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    .line 11
    iput p1, v0, Lcom/smartisanos/magicflow/h/u;->d:I

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/u;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    const/4 v0, 0x0

    .line 17
    invoke-static {v0, v0, v0}, Lcom/smartisanos/magicflow/h/z/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 1

    const-string v0, "key_user_agreed"

    .line 18
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;I)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 5
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->h()V

    .line 7
    sget-object p0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterAttach IMEI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "KeyPedometerInfo"

    .line 8
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/util/List;Ljava/lang/StringBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ";"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 0

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->e()V

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->f()V

    return-void
.end method

.method public static c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/h/v$a;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/h/v$a;-><init>(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DisabledCategoryOrder"

    .line 8
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/util/List;Ljava/lang/StringBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ";"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/v;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public static d()I
    .locals 2

    const-string v0, "key_user_agreed"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/z/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iget v0, v0, Lcom/smartisanos/magicflow/h/u;->d:I

    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DisabledNewsChannelOrder"

    .line 1
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method private static e()V
    .locals 9

    const-string v0, "MusicFastPayment"

    const-string v1, "ShortcutButton"

    const-string v2, "AppSuggestion"

    const-string v3, "DisabledCategoryOrder"

    const-string v4, "EnabledCategoryOrder"

    .line 1
    :try_start_0
    invoke-static {v4}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ";"

    if-eqz v5, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    :cond_0
    invoke-static {v3}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    :cond_2
    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 12
    :goto_0
    sget-object v2, Lcom/smartisanos/magicflow/h/v;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 13
    sget-object v2, Lcom/smartisanos/magicflow/h/v;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    sget-object v2, Lcom/smartisanos/magicflow/h/v;->b:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_4

    .line 15
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v0

    .line 17
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 18
    invoke-static {v3, v0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v0

    .line 19
    invoke-static {v0, v3}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I

    goto :goto_2

    .line 20
    :cond_6
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 21
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_7
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    invoke-interface {v6, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 25
    invoke-interface {v6, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26
    :cond_8
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    invoke-static {v6, v0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 28
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    invoke-static {v8, v1}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v0

    .line 31
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v0

    .line 33
    invoke-static {v0, v3}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EnabledCategoryOrder"

    .line 35
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static f()V
    .locals 6

    const-string v0, "DisabledNewsChannelOrder"

    const-string v1, "EnabledNewsChannelOrder"

    .line 1
    :try_start_0
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 3
    :cond_0
    sget-object v2, Lcom/smartisanos/magicflow/h/v;->c:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v3

    .line 7
    invoke-static {v3, v1}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/h/p;->b()Lcom/smartisanos/magicflow/h/p;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/p;->a()Ljava/util/List;

    move-result-object v1

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/h/o;

    .line 12
    iget-object v5, v4, Lcom/smartisanos/magicflow/h/o;->b:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    iget-object v4, v4, Lcom/smartisanos/magicflow/h/o;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    invoke-static {v3, v1}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v1

    .line 17
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EnabledNewsChannelOrder"

    .line 19
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "KeyShortcutToolOrder"

    .line 2
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/h/v;->g:Z

    return v0
.end method

.method public static h()V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveIMEI IMEI is null="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Key_Equipment_Identity"

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i()V
    .locals 2

    const-string v0, "KeyAgreeExpressProtocol"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->b(Ljava/lang/String;Z)Lcom/smartisanos/magicflow/h/u;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static j()V
    .locals 2

    const-string v0, "KeyAgreeExpressProtocol"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->b(Ljava/lang/String;Z)Lcom/smartisanos/magicflow/h/u;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static k()V
    .locals 2

    const-string v0, "KeyExpressCancel"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->b(Ljava/lang/String;Z)Lcom/smartisanos/magicflow/h/u;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method

.method public static l()V
    .locals 8

    const-string v0, "DisabledNewsChannelOrder"

    const-string v1, "EnabledNewsChannelOrder"

    .line 1
    :try_start_0
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "__all__"

    if-nez v2, :cond_0

    .line 2
    :try_start_1
    invoke-static {v1, v3}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v2

    .line 3
    invoke-static {v2, v1}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "__all__;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v3

    .line 7
    invoke-static {v3, v1}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I

    .line 8
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/h/p;->b()Lcom/smartisanos/magicflow/h/p;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/magicflow/h/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 11
    sget-object v5, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNewsChannelOrder enabledNewsOrder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", disabledNewsChannelOrder="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCorrect="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    if-nez v4, :cond_2

    .line 12
    invoke-static {v3, v2}, Lcom/smartisanos/magicflow/h/v;->a(Lcom/smartisanos/magicflow/h/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    sget-object v2, Lcom/smartisanos/magicflow/h/v;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNewsChannelOrder getDisabledNewsChannelOrderByEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 14
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/u;

    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/h/v;->b(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
