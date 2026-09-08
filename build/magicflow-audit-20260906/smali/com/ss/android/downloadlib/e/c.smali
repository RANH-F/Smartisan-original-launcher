.class public Lcom/ss/android/downloadlib/e/c;
.super Ljava/lang/Object;
.source "DownloadDataAdapterUtils.java"


# direct methods
.method public static a(Lc/d/a/b/a/f/c;)Lcom/ss/android/downloadlib/a$h/b;
    .locals 9

    .line 13
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 14
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 15
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "extra"

    .line 16
    invoke-static {v4, p0}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "log_extra"

    .line 17
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "is_enable_backdialog"

    .line 18
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string p0, "ext_value"

    .line 19
    invoke-static {v4, p0}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    move-wide v4, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-wide v5, v1

    .line 20
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-wide v7, v1

    move-wide v1, v5

    move-wide v4, v7

    .line 21
    :goto_2
    new-instance p0, Lcom/ss/android/downloadlib/a$h/b$a;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$h/b$a;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/downloadlib/a$h/b$a;->a(J)Lcom/ss/android/downloadlib/a$h/b$a;

    .line 22
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/a$h/b$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a$h/b$a;

    invoke-virtual {p0, v3}, Lcom/ss/android/downloadlib/a$h/b$a;->a(Z)Lcom/ss/android/downloadlib/a$h/b$a;

    invoke-virtual {p0, v4, v5}, Lcom/ss/android/downloadlib/a$h/b$a;->b(J)Lcom/ss/android/downloadlib/a$h/b$a;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$h/b$a;->a()Lcom/ss/android/downloadlib/a$h/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;JILjava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "extra"

    .line 2
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ext_value"

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "position"

    .line 4
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "log_extra"

    .line 5
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "is_enable_backdialog"

    .line 6
    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p6, :cond_0

    const-string p0, "extra_json"

    .line 7
    invoke-virtual {p6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "notification_jump_url"

    .line 9
    invoke-virtual {v0, p0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p8, :cond_2

    const-string p0, "download_settings_json"

    .line 10
    invoke-virtual {p8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
