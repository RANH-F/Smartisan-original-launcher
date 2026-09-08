.class Lcom/ss/android/downloadlib/a$d;
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
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/SharedPreferences;

.field final synthetic d:Lcom/ss/android/downloadlib/a;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$d;->d:Lcom/ss/android/downloadlib/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ss/android/downloadlib/a$d;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/ss/android/downloadlib/a$d;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/ss/android/downloadlib/a$d;->c:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, ", mPackageName:"

    const-string v1, "SendAndListenAdEventRunnable model getPackageName: "

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendAndListenAdEventRunnable start adId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/downloadlib/a$d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    iget-object v3, p0, Lcom/ss/android/downloadlib/a$d;->d:Lcom/ss/android/downloadlib/a;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/ss/android/downloadlib/a$d;->c:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/ss/android/downloadlib/a$d;->a:Ljava/lang/String;

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SendAndListenAdEventRunnable value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", adId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/ss/android/downloadlib/a$d;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SendAndListenAdEventRunnable value is empty"

    invoke-static {v3, v6, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$d;->d:Lcom/ss/android/downloadlib/a;

    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Z)Z

    return-void

    .line 8
    :cond_0
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/ss/android/downloadad/a/c/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 9
    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SendAndListenAdEventRunnable exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v3, v5

    .line 11
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SendAndListenAdEventRunnable next"

    invoke-static {v6, v7, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    if-nez v3, :cond_1

    .line 12
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SendAndListenAdEventRunnable model == null"

    invoke-static {v0, v1, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$d;->d:Lcom/ss/android/downloadlib/a;

    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Z)Z

    return-void

    .line 14
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/ss/android/downloadlib/a$d;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-static {v6, v7, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ss/android/downloadlib/a$d;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 18
    iget-object v6, p0, Lcom/ss/android/downloadlib/a$d;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/ss/android/downloadad/a/c/a;->a(Ljava/lang/String;)V

    .line 19
    :cond_2
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/c/a;->c()I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 21
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/c/a;->e()J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/32 v10, 0xf731400

    cmp-long v4, v8, v10

    if-gez v4, :cond_3

    .line 22
    iget-object v4, p0, Lcom/ss/android/downloadlib/a$d;->d:Lcom/ss/android/downloadlib/a;

    invoke-static {v4, v3}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/c/a;)V

    const/4 v4, 0x2

    .line 23
    invoke-virtual {v3, v4}, Lcom/ss/android/downloadad/a/c/a;->a(I)V

    .line 24
    invoke-virtual {v3, v6, v7}, Lcom/ss/android/downloadad/a/c/a;->c(J)V

    .line 25
    iget-object v4, p0, Lcom/ss/android/downloadlib/a$d;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v6, p0, Lcom/ss/android/downloadlib/a$d;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/c/a;->m()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    iget-object v4, p0, Lcom/ss/android/downloadlib/a$d;->d:Lcom/ss/android/downloadlib/a;

    iget-object v6, p0, Lcom/ss/android/downloadlib/a$d;->c:Landroid/content/SharedPreferences;

    invoke-static {v4, v3, v6}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/c/a;Landroid/content/SharedPreferences;)V

    goto :goto_1

    .line 27
    :cond_3
    iget-object v4, p0, Lcom/ss/android/downloadlib/a$d;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v6, p0, Lcom/ss/android/downloadlib/a$d;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    :cond_4
    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$d;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v4, v0, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$d;->d:Lcom/ss/android/downloadlib/a;

    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Z)Z

    .line 32
    invoke-static {}, Lcom/ss/android/downloadlib/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SendAndListenAdEventRunnable end "

    invoke-static {v0, v1, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catchall_0
    move-exception v0

    .line 33
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$d;->d:Lcom/ss/android/downloadlib/a;

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Z)Z

    throw v0
.end method
