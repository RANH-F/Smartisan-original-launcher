.class Lcom/ss/android/downloadlib/a$c;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/ss/android/downloadlib/a;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$c;->b:Lcom/ss/android/downloadlib/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/ss/android/downloadlib/a$c;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckAdEventRunnable start"

    invoke-static {v1, v2, v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sp_ad_download_event"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CheckAdEventRunnable map not empty"

    invoke-static {v3, v4, v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckAdEventRunnable value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckAdEventRunnable map return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CheckAdEventRunnable map next"

    invoke-static {v5, v6, v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 13
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/ss/android/downloadad/a/c/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v4

    if-nez v4, :cond_1

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CheckAdEventRunnable map model == null"

    invoke-static {v3, v4, v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CheckAdEventRunnable map trySendAndRefreshAdEvent"

    invoke-static {v5, v6, v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    iget-object v5, p0, Lcom/ss/android/downloadlib/a$c;->b:Lcom/ss/android/downloadlib/a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v6, p0, Lcom/ss/android/downloadlib/a$c;->a:I

    invoke-static {v5, v4, v1, v3, v6}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/c/a;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 18
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckAdEventRunnable exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    :cond_3
    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckAdEventRunnable end"

    invoke-static {v1, v2, v0}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
