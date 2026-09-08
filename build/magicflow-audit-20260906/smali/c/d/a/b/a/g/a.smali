.class public Lc/d/a/b/a/g/a;
.super Ljava/lang/Object;
.source "DownloadMonitorHelper.java"


# direct methods
.method private static a(Ljava/lang/String;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)Lorg/json/JSONObject;
    .locals 9

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->j()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 6
    :try_start_2
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/q;->b()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7
    :try_start_3
    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    .line 9
    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 10
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v5, v2

    .line 11
    :goto_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/q;->a()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/q;->c()I

    move-result v0

    goto :goto_1

    :cond_1
    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move v0, v3

    :goto_1
    const-string v7, "event_page"

    .line 13
    invoke-virtual {v1, v7, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "app_id"

    .line 14
    invoke-virtual {v1, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_id"

    .line 15
    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_id_postfix"

    .line 16
    invoke-virtual {v1, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "update_version"

    .line 17
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "download_status"

    .line 18
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_f

    const-string p0, "download_id"

    .line 19
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "name"

    .line 20
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "url"

    .line 21
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "download_time"

    .line 22
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v4

    invoke-virtual {v1, p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "cur_bytes"

    .line 23
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v4

    invoke-virtual {v1, p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "total_bytes"

    .line 24
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v4

    invoke-virtual {v1, p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "network_quality"

    .line 25
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->u()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "only_wifi"

    .line 26
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->H0()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    move p3, v0

    goto :goto_2

    :cond_2
    move p3, v3

    :goto_2
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "need_https_degrade"

    .line 27
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->L()Z

    move-result p3

    if-eqz p3, :cond_3

    move p3, v0

    goto :goto_3

    :cond_3
    move p3, v3

    :goto_3
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "https_degrade_retry_used"

    .line 28
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->D0()Z

    move-result p3

    if-eqz p3, :cond_4

    move p3, v0

    goto :goto_4

    :cond_4
    move p3, v3

    :goto_4
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "md5"

    .line 29
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "chunk_count"

    .line 30
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->K()I

    move-result p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "is_force"

    .line 31
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->p()Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v0

    goto :goto_5

    :cond_5
    move p3, v3

    :goto_5
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "retry_count"

    .line 32
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->d()I

    move-result p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "cur_retry_time"

    .line 33
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->N()I

    move-result p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "need_retry_delay"

    .line 34
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->M()Z

    move-result p3

    if-eqz p3, :cond_6

    move p3, v0

    goto :goto_6

    :cond_6
    move p3, v3

    :goto_6
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "need_reuse_first_connection"

    .line 35
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->j()Z

    move-result p3

    if-eqz p3, :cond_7

    move p3, v0

    goto :goto_7

    :cond_7
    move p3, v3

    :goto_7
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "default_http_service_backup"

    .line 36
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->y0()Z

    move-result p3

    if-eqz p3, :cond_8

    move p3, v0

    goto :goto_8

    :cond_8
    move p3, v3

    :goto_8
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "retry_delay_status"

    .line 37
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->Q()Lc/d/a/b/a/a/j;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "backup_url_used"

    .line 38
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->g()Z

    move-result p3

    if-eqz p3, :cond_9

    move p3, v0

    goto :goto_9

    :cond_9
    move p3, v3

    :goto_9
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "download_byte_error_retry_status"

    .line 39
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->r()Lc/d/a/b/a/a/b;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "forbidden_handler_status"

    .line 40
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->R()Lc/d/a/b/a/a/a;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "need_independent_process"

    .line 41
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->k()Z

    move-result p3

    if-eqz p3, :cond_a

    move p3, v0

    goto :goto_a

    :cond_a
    move p3, v3

    :goto_a
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "head_connection_error_msg"

    .line 42
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->m0()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->m0()Ljava/lang/String;

    move-result-object p3

    goto :goto_b

    :cond_b
    move-object p3, v2

    :goto_b
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "extra"

    .line 43
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v2

    :cond_c
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "add_listener_to_same_task"

    .line 44
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->o()Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_c

    :cond_d
    move v0, v3

    :goto_c
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->b0()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_e

    const-string p0, "backup_url_count"

    .line 46
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->b0()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "cur_backup_url_index"

    .line 47
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->C0()I

    move-result p3

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    :cond_e
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->e()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_f

    const-string p0, "forbidden_urls"

    .line 49
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->e()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    if-eqz p2, :cond_10

    const-string p0, "error_code"

    .line 50
    invoke-virtual {p2}, Lc/d/a/b/a/d/a;->a()I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "error_msg"

    .line 51
    invoke-virtual {p2}, Lc/d/a/b/a/d/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_e

    :catch_1
    move-exception p0

    goto :goto_d

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 52
    :goto_d
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_10
    :goto_e
    return-object v1
.end method

.method public static a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lc/d/a/b/a/c/e0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lc/d/a/b/a/g/a;->a(Ljava/lang/String;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_1
    invoke-interface {p0, p1}, Lc/d/a/b/a/c/e0;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
