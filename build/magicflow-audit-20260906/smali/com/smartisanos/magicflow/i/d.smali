.class public Lcom/smartisanos/magicflow/i/d;
.super Ljava/lang/Object;
.source "LoadNewsDataHelper.java"


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private static d:Lcom/bytedance/sdk/openadsdk/TTAdNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/i/d;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/i/d;->a:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    sget-object p0, Lcom/smartisanos/magicflow/i/d;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "saveResultByFile return by context null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newslist_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".json"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/smartisanos/magicflow/o/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070264

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070263

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070262

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->a:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newslist_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".json"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/o/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNewsWithFile return null fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/i/f;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/i/f;-><init>()V

    const-string v1, "https://api-screen.smartisan.com/news/list"

    .line 3
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/i/f;->a(Ljava/lang/String;)Lcom/smartisanos/magicflow/i/f;

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/i/f;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/magicflow/i/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/i/f;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/i/f;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .locals 4

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    .line 40
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNewsAdWithSDk adNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 41
    new-instance p0, Lcom/smartisanos/magicflow/i/d$a;

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/i/d$a;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    invoke-static {p0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-le p0, v1, :cond_2

    move p0, v1

    .line 42
    :cond_2
    sget-object v1, Lcom/smartisanos/magicflow/i/d;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-nez v1, :cond_3

    .line 43
    invoke-static {}, Lcom/smartisanos/magicflow/i/a;->a()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    const/16 v3, 0xbe

    .line 45
    invoke-virtual {v2, v3, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/magicflow/i/a;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 48
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/i/d;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 51
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/i/d;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 52
    :cond_3
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setAdCount(I)V

    .line 53
    sget-object p0, Lcom/smartisanos/magicflow/i/d;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    sget-object v0, Lcom/smartisanos/magicflow/i/d;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-interface {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/smartisanos/magicflow/h/l;)V
    .locals 6

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 15
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/magicflow/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/smartisanos/magicflow/j/a;

    invoke-direct {v2}, Lcom/smartisanos/magicflow/j/a;-><init>()V

    .line 17
    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/j/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/m/a;

    if-eqz v1, :cond_3

    .line 18
    iget-object v2, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 19
    iget-object v2, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/h/l;

    .line 20
    iget-object v4, p1, Lcom/smartisanos/magicflow/h/l;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/smartisanos/magicflow/h/l;->l:Ljava/lang/String;

    iget-object v5, v3, Lcom/smartisanos/magicflow/h/l;->l:Ljava/lang/String;

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    iget-object p1, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    .line 23
    sget-object p0, Lcom/smartisanos/magicflow/i/d;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "deleteByItem info.id is null or no info in file"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "code"

    .line 25
    iget v3, v1, Lcom/smartisanos/magicflow/m/a;->a:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "errInfo"

    .line 26
    iget-object v3, v1, Lcom/smartisanos/magicflow/m/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 28
    iget-object v3, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 29
    :goto_1
    iget-object v3, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 30
    iget-object v3, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/h/l;

    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/l;->e()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "data"

    .line 31
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/i/d;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void

    .line 34
    :cond_5
    :goto_3
    sget-object p0, Lcom/smartisanos/magicflow/i/d;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "removeLocalFileNews return by fileName or info null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lcom/smartisanos/magicflow/i/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    .line 55
    invoke-static {}, Lcom/smartisanos/magicflow/i/c;->a()Ld/v;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/smartisanos/magicflow/i/d;->e()V

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    sget-object v1, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    const-string v2, "https://api-screen.smartisan.com/news/user/action"

    invoke-static {v2, p0, v1}, Lcom/smartisanos/magicflow/i/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ld/y;

    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Ld/v;->a(Ld/y;)Ld/e;

    move-result-object p0

    new-instance v0, Lcom/smartisanos/magicflow/i/d$b;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/i/d$b;-><init>()V

    invoke-interface {p0, v0}, Ld/e;->a(Ld/f;)V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 16

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 8
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    sget-object v6, Lcom/smartisanos/magicflow/h/d;->x:Ljava/lang/String;

    .line 11
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 12
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 13
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 14
    sget-object v10, Lcom/smartisanos/magicflow/h/d;->z:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->d(Landroid/content/Context;)I

    move-result v11

    .line 16
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 17
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v13, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 19
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v13

    invoke-static {v13}, Lcom/smartisanos/magicflow/h/v;->b(Landroid/content/Context;)V

    .line 20
    :cond_1
    sget-object v13, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    .line 21
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "0"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    const-string v13, "869061039977212"

    :cond_3
    const-string v14, "size"

    const-string v15, "171x171"

    .line 22
    invoke-virtual {v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "type"

    const/4 v15, 0x4

    .line 23
    invoke-virtual {v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "aid"

    const-string v15, "phone_screen_feed"

    .line 24
    invoke-virtual {v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "version"

    .line 25
    invoke-virtual {v4, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "package_name"

    const-string v15, "com.smartisanos.magicflow"

    .line 26
    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "conn_type"

    .line 27
    invoke-virtual {v5, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "resolution"

    .line 28
    invoke-virtual {v5, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "mac"

    .line 29
    invoke-virtual {v5, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imei"

    .line 30
    invoke-virtual {v5, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imei_enc"

    .line 31
    invoke-static {v13}, Lcom/smartisanos/magicflow/o/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "android_id"

    .line 32
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uuid"

    .line 33
    invoke-static {v13}, Lcom/smartisanos/magicflow/o/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vendor"

    .line 34
    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "model"

    .line 35
    invoke-virtual {v5, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os"

    const/4 v6, 0x1

    .line 36
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "os_version"

    .line 37
    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "language"

    .line 38
    invoke-virtual {v5, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "adplace"

    .line 39
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app"

    .line 40
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device"

    .line 41
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "api_sskey"

    const-string v3, "3SEyR56ueGG5y53SEyR56ueGG5vhxwR7eompw0a"

    .line 42
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "api_version"

    const-string v3, "1.0"

    .line 43
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public static b(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/i/d;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/magicflow/i/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/i/f;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/i/f;-><init>()V

    const-string v1, "https://reader.smartisan.com/index.php?r=article/getList&site_id=1"

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/i/f;->a(Ljava/lang/String;)Lcom/smartisanos/magicflow/i/f;

    const-string v1, "offset"

    const-string v2, "0"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/i/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/i/f;

    const-string v1, "page_size"

    const-string v2, "10"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/i/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/i/f;

    const-string v1, "from"

    const-string v2, "magicflow"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/i/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/i/f;

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/i/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/h/v;->b(Landroid/content/Context;)V

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    .line 5
    sget-object v2, Lcom/smartisanos/magicflow/h/d;->x:Ljava/lang/String;

    .line 6
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 7
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 8
    sget-object v5, Lcom/smartisanos/magicflow/h/d;->y:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "udid"

    const-string v8, "imei"

    if-nez v6, :cond_2

    const-string v6, "0"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Lcom/smartisanos/magicflow/o/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "869061039977212"

    .line 12
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v1}, Lcom/smartisanos/magicflow/o/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_1
    invoke-static {v2}, Lcom/smartisanos/magicflow/o/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openudid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Android"

    const-string v2, "os"

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os-version"

    .line 16
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device-model"

    .line 17
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resolution"

    .line 18
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sskey"

    const-string v2, "screen_news_VySEyRueGG5xwReompw"

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static e()V
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    const-string v1, "sskey"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->b(Landroid/content/Context;)V

    .line 5
    :cond_2
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "udid"

    const-string v4, "imei"

    if-nez v2, :cond_4

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    sget-object v2, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    const-string v2, "869061039977212"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/smartisanos/magicflow/o/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_1
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    sget-object v2, Lcom/smartisanos/magicflow/h/d;->x:Ljava/lang/String;

    const-string v3, "openudid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    const-string v2, "os"

    const-string v3, "Android"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "os-version"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "device-model"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    sget-object v2, Lcom/smartisanos/magicflow/h/d;->y:Ljava/lang/String;

    const-string v3, "resolution"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    const-string v2, "screen_news_VySEyRueGG5xwReompw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_5

    .line 18
    sget-object v0, Lcom/smartisanos/magicflow/i/d;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProperty = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smartisanos/magicflow/i/d;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/i/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://api-ad.smartisan.com/ad/"

    .line 2
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/i/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/i/d;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()I
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method
