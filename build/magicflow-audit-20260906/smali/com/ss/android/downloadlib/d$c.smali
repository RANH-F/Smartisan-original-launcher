.class public Lcom/ss/android/downloadlib/d$c;
.super Ljava/lang/Object;
.source "DownloadCacheManager.java"


# static fields
.field private static volatile c:Lcom/ss/android/downloadlib/d$c;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadlib/a$h/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/d$c;->b:Ljava/util/Map;

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_download_finish_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/d$c;->a:Landroid/content/SharedPreferences;

    .line 4
    invoke-direct {p0}, Lcom/ss/android/downloadlib/d$c;->c()V

    return-void
.end method

.method public static b()Lcom/ss/android/downloadlib/d$c;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/d$c;->c:Lcom/ss/android/downloadlib/d$c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/d$c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/d$c;->c:Lcom/ss/android/downloadlib/d$c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/d$c;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/d$c;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/d$c;->c:Lcom/ss/android/downloadlib/d$c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/d$c;->c:Lcom/ss/android/downloadlib/d$c;

    return-object v0
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/d$c;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_download_finish"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lcom/ss/android/downloadlib/a$h/c;

    invoke-direct {v3}, Lcom/ss/android/downloadlib/a$h/c;-><init>()V

    .line 7
    invoke-virtual {v3, v2}, Lcom/ss/android/downloadlib/a$h/c;->a(Lorg/json/JSONObject;)V

    .line 8
    iget-object v2, p0, Lcom/ss/android/downloadlib/d$c;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/ss/android/downloadlib/a$h/c;->c()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/ss/android/downloadlib/d$c;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/ss/android/downloadlib/d$c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadlib/a$h/c;

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/a$h/c;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/ss/android/downloadlib/d$c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_download_finish"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/ss/android/downloadlib/d$c;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/d$c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a$h/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/a$h/c;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/downloadlib/a$h/c;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p2}, Lcom/ss/android/downloadlib/a$h/c;->a(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/ss/android/downloadlib/d$c;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/d$c;->a()V

    return-void
.end method

.method public b(Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/d$c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/a$h/c;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$h/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
