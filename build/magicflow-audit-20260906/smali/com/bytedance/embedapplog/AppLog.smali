.class public final Lcom/bytedance/embedapplog/AppLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UMENG_CATEGORY:Ljava/lang/String; = "umeng"

.field private static volatile a:Lcom/bytedance/embedapplog/b/h; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static b:Z = true

.field private static c:Lcom/bytedance/embedapplog/util/a;

.field private static volatile d:Lcom/bytedance/embedapplog/IExtraParams;

.field public static sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sDevice:Lcom/bytedance/embedapplog/b/i;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static sIAppParam:Lcom/bytedance/embedapplog/IAppParam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/embedapplog/util/a;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/a;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/AppLog;->c:Lcom/bytedance/embedapplog/util/a;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method public static addDataObserver(Lcom/bytedance/embedapplog/IDataObserver;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->c:Lcom/bytedance/embedapplog/util/a;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/util/a;->a(Lcom/bytedance/embedapplog/IDataObserver;)V

    return-void
.end method

.method public static flush()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->b()V

    return-void
.end method

.method public static getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/b/h;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "vid"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "val"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    sget-object v1, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1, v0}, Lcom/bytedance/embedapplog/b/i;->d(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Lcom/bytedance/embedapplog/AppLog;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAbConfig()Lorg/json/JSONObject;
    .locals 1

    .line 7
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->R()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAbConfigVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAbSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getAutoActiveState()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/embedapplog/AppLog;->b:Z

    return v0
.end method

.method public static getClientUdid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getCustomNetParams()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->c:Lcom/bytedance/embedapplog/util/a;

    return-object v0
.end method

.method public static getDid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getEncryptAndCompress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getExtraParams()Lcom/bytedance/embedapplog/IExtraParams;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/IExtraParams;

    return-object v0
.end method

.method public static getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/embedapplog/b/i;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIAppParam()Lcom/bytedance/embedapplog/IAppParam;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sIAppParam:Lcom/bytedance/embedapplog/IAppParam;

    return-object v0
.end method

.method public static getIid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getOpenUdid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getSsid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getSuccRate()I
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->F()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getUdid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getUserUniqueID()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Init Twice!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 6
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->c()Lcom/bytedance/embedapplog/a/e;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/embedapplog/b/h;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V

    .line 8
    new-instance v2, Lcom/bytedance/embedapplog/b/i;

    invoke-direct {v2, p0, v1}, Lcom/bytedance/embedapplog/b/i;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V

    .line 9
    new-instance v3, Lcom/bytedance/embedapplog/collector/a;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/InitConfig;->getPicker()Lcom/bytedance/embedapplog/IPicker;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/bytedance/embedapplog/collector/a;-><init>(Lcom/bytedance/embedapplog/IPicker;)V

    .line 10
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/bytedance/embedapplog/a/e;->a(Landroid/app/Application;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/collector/a;)V

    .line 11
    sput-object v1, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    .line 12
    sput-object v2, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    const/4 p0, 0x0

    const-string p1, "Inited"

    .line 13
    invoke-static {p1, p0}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static manualActivate()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->c()Lcom/bytedance/embedapplog/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/e;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 8

    const-string v0, "umeng"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 8
    invoke-static/range {v0 .. v7}, Lcom/bytedance/embedapplog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "umeng"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 7
    invoke-static/range {v0 .. v7}, Lcom/bytedance/embedapplog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 6
    invoke-static/range {v0 .. v7}, Lcom/bytedance/embedapplog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/embedapplog/d/c;

    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v10, v1

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/embedapplog/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    return-void

    .line 3
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "category or label is empty"

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_3
    new-instance v0, Lcom/bytedance/embedapplog/d/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "2"

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/embedapplog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 10
    :goto_1
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    move-object v1, v0

    .line 11
    :cond_1
    :goto_2
    invoke-static {p0, v1}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "eventName is empty"

    .line 2
    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Lcom/bytedance/embedapplog/d/i;

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "2"

    invoke-direct {v0, v3, v4, v2}, Lcom/bytedance/embedapplog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 4
    :cond_0
    new-instance v0, Lcom/bytedance/embedapplog/d/e;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v0, p0, v2, v1}, Lcom/bytedance/embedapplog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    return-void
.end method

.method public static onInternalEventV3(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "both second appid and second app name is empty, return"

    .line 12
    invoke-static {p0, v1}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second_app_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p1, "params_for_special"

    const-string v1, "second_app"

    .line 19
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "second_appid"

    .line 20
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "second_appname"

    .line 21
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "product_type"

    .line 22
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 23
    :goto_1
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 24
    :goto_2
    invoke-static {p0, v0}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    const-string p1, "both second appid and second app name is empty, return"

    .line 2
    invoke-static {p1, p0}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second_app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "params_for_special"

    const-string v1, "second_app"

    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "second_appid"

    .line 6
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "second_appname"

    .line 7
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "product_type"

    .line 8
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 9
    invoke-static {p2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    new-instance p2, Lcom/bytedance/embedapplog/d/e;

    const/4 p3, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p3, p1}, Lcom/bytedance/embedapplog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    return-void
.end method

.method public static onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/embedapplog/d/d;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/embedapplog/d/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "call onEventData get exception: "

    .line 3
    invoke-static {p1, p0}, Lcom/bytedance/embedapplog/util/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/4 p0, 0x0

    const-string p1, "call onEventData with invalid params, return"

    .line 4
    invoke-static {p1, p0}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static removeDataObserver(Lcom/bytedance/embedapplog/IDataObserver;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->c:Lcom/bytedance/embedapplog/util/a;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/util/a;->b(Lcom/bytedance/embedapplog/IDataObserver;)V

    return-void
.end method

.method public static setAbSDKVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/b/i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setAutoActiveState(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/bytedance/embedapplog/AppLog;->b:Z

    return-void
.end method

.method public static setCustomNetParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static setEnableLog(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/bytedance/embedapplog/util/h;->a:Z

    return-void
.end method

.method public static setEncryptAndCompress(Z)V
    .locals 0

    return-void
.end method

.method public static setExtraParams(Lcom/bytedance/embedapplog/IExtraParams;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/IExtraParams;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/IExtraParams;

    :cond_0
    return-void
.end method

.method public static setHeaderInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/b/i;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public static setIAppParam(Lcom/bytedance/embedapplog/IAppParam;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/embedapplog/AppLog;->sIAppParam:Lcom/bytedance/embedapplog/IAppParam;

    return-void
.end method

.method public static setOaidObserver(Lcom/bytedance/embedapplog/IOaidObserver;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/embed_device_register/b;->a(Lcom/bytedance/embedapplog/IOaidObserver;)V

    return-void
.end method

.method public static setUserUniqueID(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/b/i;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static toEncryptByte(Ljava/lang/String;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "UTF-8"

    if-eqz v2, :cond_0

    .line 3
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    .line 5
    :cond_0
    :try_start_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 7
    :goto_1
    :try_start_5
    invoke-static {p0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_1

    .line 8
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 10
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/bytedance/embedapplog/util/TTEncryptUtils;->a([BI)[B

    move-result-object p0

    :cond_2
    return-object p0

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_3

    .line 13
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 15
    :cond_3
    :goto_3
    throw p0
.end method


# virtual methods
.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
