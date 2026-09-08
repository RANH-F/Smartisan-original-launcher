.class public Lcom/ss/android/downloadlib/a$p;
.super Ljava/lang/Object;
.source "DownloadInsideHelper.java"


# direct methods
.method public static a(ZZLorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/f;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 95
    invoke-virtual {p3}, Lcom/ss/android/socialbase/appdownloader/f;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Lcom/ss/android/socialbase/appdownloader/f;->o()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {p3}, Lcom/ss/android/socialbase/appdownloader/f;->o()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/ss/android/downloadlib/a$p;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 97
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/appdownloader/f;)I

    move-result p2

    if-eqz p0, :cond_2

    .line 98
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->d()Lc/d/a/a/a/a/i;

    move-result-object p0

    invoke-virtual {p3}, Lcom/ss/android/socialbase/appdownloader/f;->o()Landroid/content/Context;

    move-result-object p3

    if-eqz p1, :cond_1

    const-string p1, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\uff0c\u53ef\u5728\"\u6211\u7684\"\u91cc\u67e5\u770b\u7ba1\u7406"

    goto :goto_0

    :cond_1
    const-string p1, "\u5df2\u5f00\u59cb\u4e0b\u8f7d"

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p0, p3, p1, v1, v0}, Lc/d/a/a/a/a/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return p2

    :cond_3
    :goto_1
    return v0
.end method

.method public static a(Lc/d/a/b/a/f/c;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "extra"

    .line 102
    invoke-static {v2, p0}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-wide v0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p0, "label"

    .line 91
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ext_json"

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "wap_stat"

    const-string v1, "app_download"

    const/4 v2, 0x0

    .line 94
    invoke-static {v0, v1, p0, p1, v2}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method static a(Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/c;)V
    .locals 5

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    .line 68
    invoke-interface {p0}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ad_id"

    .line 69
    invoke-interface {p0}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ext_value"

    .line 70
    invoke-interface {p0}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-interface {p0}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 76
    invoke-interface {p1}, Lc/d/a/a/a/c/c;->v()I

    move-result p0

    if-nez p0, :cond_1

    .line 77
    invoke-interface {p1}, Lc/d/a/a/a/c/c;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "browser"

    :goto_1
    const-string p1, "wap_stat"

    const-string v1, "app_download"

    const/4 v2, 0x0

    .line 78
    invoke-static {p1, v1, p0, v0, v2}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static a(Ljava/lang/String;JLc/d/a/a/a/c/d;Lc/d/a/a/a/c/c;)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p3}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "click_type"

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p3}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 6
    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :goto_1
    invoke-interface {p4}, Lc/d/a/a/a/c/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p4}, Lc/d/a/a/a/c/c;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-interface {p4}, Lc/d/a/a/a/c/c;->b()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_2
    new-instance p2, Lc/d/a/a/a/d/d$a;

    invoke-direct {p2}, Lc/d/a/a/a/d/d$a;-><init>()V

    .line 10
    invoke-virtual {p2, p1}, Lc/d/a/a/a/d/d$a;->b(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 11
    invoke-virtual {p2, p0}, Lc/d/a/a/a/d/d$a;->c(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 12
    invoke-interface {p3}, Lc/d/a/a/a/c/d;->n()Z

    move-result p0

    invoke-virtual {p2, p0}, Lc/d/a/a/a/d/d$a;->b(Z)Lc/d/a/a/a/d/d$a;

    .line 13
    invoke-interface {p3}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lc/d/a/a/a/d/d$a;->a(J)Lc/d/a/a/a/d/d$a;

    .line 14
    invoke-interface {p3}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lc/d/a/a/a/d/d$a;->d(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 15
    invoke-interface {p3}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lc/d/a/a/a/d/d$a;->b(J)Lc/d/a/a/a/d/d$a;

    .line 16
    invoke-virtual {p2, v1}, Lc/d/a/a/a/d/d$a;->a(Lorg/json/JSONObject;)Lc/d/a/a/a/d/d$a;

    .line 17
    invoke-interface {p4}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lc/d/a/a/a/d/d$a;->a(Ljava/lang/Object;)Lc/d/a/a/a/d/d$a;

    .line 18
    invoke-interface {p3}, Lc/d/a/a/a/c/d;->r()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lc/d/a/a/a/d/d$a;->a(Ljava/util/List;)Lc/d/a/a/a/d/d$a;

    const/4 p0, 0x1

    .line 19
    invoke-virtual {p2, p0}, Lc/d/a/a/a/d/d$a;->a(I)Lc/d/a/a/a/d/d$a;

    .line 20
    invoke-interface {p4}, Lc/d/a/a/a/c/c;->A()Z

    move-result p0

    invoke-virtual {p2, p0}, Lc/d/a/a/a/d/d$a;->a(Z)Lc/d/a/a/a/d/d$a;

    .line 21
    invoke-virtual {p2}, Lc/d/a/a/a/d/d$a;->a()Lc/d/a/a/a/d/d;

    move-result-object p0

    .line 22
    invoke-interface {p4}, Lc/d/a/a/a/c/c;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->a(Lc/d/a/a/a/d/d;)V

    goto :goto_3

    .line 24
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->b(Lc/d/a/a/a/d/d;)V

    :goto_3
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLc/d/a/a/a/c/d;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Lc/d/a/a/a/d/d$a;

    invoke-direct {v0}, Lc/d/a/a/a/d/d$a;-><init>()V

    .line 27
    invoke-virtual {v0, p0}, Lc/d/a/a/a/d/d$a;->b(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 28
    invoke-virtual {v0, p1}, Lc/d/a/a/a/d/d$a;->c(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 29
    invoke-interface {p4}, Lc/d/a/a/a/c/d;->n()Z

    move-result p0

    invoke-virtual {v0, p0}, Lc/d/a/a/a/d/d$a;->b(Z)Lc/d/a/a/a/d/d$a;

    .line 30
    invoke-interface {p4}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lc/d/a/a/a/d/d$a;->a(J)Lc/d/a/a/a/d/d$a;

    .line 31
    invoke-interface {p4}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc/d/a/a/a/d/d$a;->d(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 32
    invoke-interface {p4}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lc/d/a/a/a/d/d$a;->b(J)Lc/d/a/a/a/d/d$a;

    .line 33
    invoke-interface {p4}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc/d/a/a/a/d/d$a;->a(Lorg/json/JSONObject;)Lc/d/a/a/a/d/d$a;

    const/4 p0, 0x1

    .line 34
    invoke-virtual {v0, p0}, Lc/d/a/a/a/d/d$a;->a(I)Lc/d/a/a/a/d/d$a;

    .line 35
    invoke-virtual {v0, p2}, Lc/d/a/a/a/d/d$a;->a(Ljava/lang/Object;)Lc/d/a/a/a/d/d$a;

    .line 36
    invoke-virtual {v0, p3}, Lc/d/a/a/a/d/d$a;->a(Z)Lc/d/a/a/a/d/d$a;

    .line 37
    invoke-virtual {v0}, Lc/d/a/a/a/d/d$a;->a()Lc/d/a/a/a/d/d;

    move-result-object p0

    if-eqz p3, :cond_1

    .line 38
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->a(Lc/d/a/a/a/d/d;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->b(Lc/d/a/a/a/d/d;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Lc/d/a/a/a/d/d$a;

    invoke-direct {v0}, Lc/d/a/a/a/d/d$a;-><init>()V

    .line 82
    invoke-virtual {v0, p0}, Lc/d/a/a/a/d/d$a;->a(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 83
    invoke-virtual {v0, p1}, Lc/d/a/a/a/d/d$a;->b(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 84
    invoke-virtual {v0, p2}, Lc/d/a/a/a/d/d$a;->c(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    const-wide/16 p0, 0x0

    .line 85
    invoke-virtual {v0, p0, p1}, Lc/d/a/a/a/d/d$a;->b(J)Lc/d/a/a/a/d/d$a;

    .line 86
    invoke-virtual {v0, p3}, Lc/d/a/a/a/d/d$a;->a(Lorg/json/JSONObject;)Lc/d/a/a/a/d/d$a;

    .line 87
    invoke-virtual {v0, p4}, Lc/d/a/a/a/d/d$a;->a(Z)Lc/d/a/a/a/d/d$a;

    .line 88
    invoke-virtual {v0}, Lc/d/a/a/a/d/d$a;->a()Lc/d/a/a/a/d/d;

    move-result-object p0

    if-eqz p4, :cond_1

    .line 89
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->a(Lc/d/a/a/a/d/d;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->b(Lc/d/a/a/a/d/d;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JIZ)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Lc/d/a/a/a/d/d$a;

    invoke-direct {v0}, Lc/d/a/a/a/d/d$a;-><init>()V

    .line 42
    invoke-virtual {v0, p0}, Lc/d/a/a/a/d/d$a;->b(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 43
    invoke-virtual {v0, p1}, Lc/d/a/a/a/d/d$a;->c(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 44
    invoke-virtual {v0, p2}, Lc/d/a/a/a/d/d$a;->b(Z)Lc/d/a/a/a/d/d$a;

    .line 45
    invoke-virtual {v0, p3, p4}, Lc/d/a/a/a/d/d$a;->a(J)Lc/d/a/a/a/d/d$a;

    .line 46
    invoke-virtual {v0, p5}, Lc/d/a/a/a/d/d$a;->d(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 47
    invoke-virtual {v0, p6, p7}, Lc/d/a/a/a/d/d$a;->b(J)Lc/d/a/a/a/d/d$a;

    .line 48
    invoke-virtual {v0, p8}, Lc/d/a/a/a/d/d$a;->a(I)Lc/d/a/a/a/d/d$a;

    .line 49
    invoke-virtual {v0, p9}, Lc/d/a/a/a/d/d$a;->a(Z)Lc/d/a/a/a/d/d$a;

    .line 50
    invoke-virtual {v0}, Lc/d/a/a/a/d/d$a;->a()Lc/d/a/a/a/d/d;

    move-result-object p0

    if-eqz p9, :cond_1

    .line 51
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->a(Lc/d/a/a/a/d/d;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->b(Lc/d/a/a/a/d/d;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Lc/d/a/a/a/d/d$a;

    invoke-direct {v0}, Lc/d/a/a/a/d/d$a;-><init>()V

    .line 55
    invoke-virtual {v0, p0}, Lc/d/a/a/a/d/d$a;->b(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 56
    invoke-virtual {v0, p1}, Lc/d/a/a/a/d/d$a;->c(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 57
    invoke-virtual {v0, p2}, Lc/d/a/a/a/d/d$a;->b(Z)Lc/d/a/a/a/d/d$a;

    .line 58
    invoke-virtual {v0, p3, p4}, Lc/d/a/a/a/d/d$a;->a(J)Lc/d/a/a/a/d/d$a;

    .line 59
    invoke-virtual {v0, p5}, Lc/d/a/a/a/d/d$a;->d(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 60
    invoke-virtual {v0, p6, p7}, Lc/d/a/a/a/d/d$a;->b(J)Lc/d/a/a/a/d/d$a;

    .line 61
    invoke-virtual {v0, p8}, Lc/d/a/a/a/d/d$a;->a(Lorg/json/JSONObject;)Lc/d/a/a/a/d/d$a;

    .line 62
    invoke-virtual {v0, p9}, Lc/d/a/a/a/d/d$a;->a(I)Lc/d/a/a/a/d/d$a;

    .line 63
    invoke-virtual {v0, p10}, Lc/d/a/a/a/d/d$a;->a(Z)Lc/d/a/a/a/d/d$a;

    .line 64
    invoke-virtual {v0}, Lc/d/a/a/a/d/d$a;->a()Lc/d/a/a/a/d/d;

    move-result-object p0

    if-eqz p10, :cond_1

    .line 65
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->a(Lc/d/a/a/a/d/d;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lc/d/a/a/a/a/d;->b(Lc/d/a/a/a/d/d;)V

    :goto_0
    return-void
.end method

.method static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static a(Lc/d/a/a/a/c/d;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lc/d/a/a/a/c/d;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lc/d/a/a/a/c/d;->t()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static b(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static b(Lc/d/a/a/a/c/d;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lc/d/a/a/a/c/d;->t()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static c(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
