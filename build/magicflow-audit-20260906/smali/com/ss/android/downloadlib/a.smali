.class public Lcom/ss/android/downloadlib/a;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Lcom/ss/android/downloadad/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a$c;,
        Lcom/ss/android/downloadlib/a$d;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "a"

.field private static d:Lcom/ss/android/downloadlib/a;


# instance fields
.field private volatile a:Z

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a;->a:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a;->b:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized a()Lcom/ss/android/downloadlib/a;
    .locals 2

    const-class v0, Lcom/ss/android/downloadlib/a;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/ss/android/downloadlib/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/a;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    .line 7
    :cond_0
    sget-object v1, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/ss/android/downloadad/a/c/a;II)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "scene"

    const/4 v3, -0x1

    if-nez v1, :cond_1

    .line 164
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-le p3, v3, :cond_0

    .line 165
    :try_start_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_3

    :cond_0
    :goto_0
    move-object v0, p1

    goto :goto_2

    .line 166
    :cond_1
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    if-le p3, v3, :cond_2

    .line 167
    :try_start_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_3

    :cond_2
    :goto_1
    move-object v0, v1

    :goto_2
    :try_start_5
    const-string p1, "hijack"

    .line 168
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    .line 169
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-object v0
.end method

.method public static a(Lc/d/a/b/a/f/c;J)V
    .locals 5

    .line 11
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "download_url"

    .line 13
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_name"

    .line 14
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->s0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cur_bytes"

    .line 15
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "total_bytes"

    .line 16
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "chunk_count"

    .line 17
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->K()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "network_quality"

    .line 18
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "download_time"

    .line 19
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "is_using_new"

    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "extra"

    .line 21
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static a(Lcom/ss/android/downloadad/a/c/a;Landroid/content/ContentValues;)V
    .locals 5

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "ext_value"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ss/android/downloadad/a/c/a;->b(J)V

    :cond_1
    const-string v0, "ad_id"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/downloadad/a/c/a;->a(J)V

    :cond_2
    const-string v0, "log_extra"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 40
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/c/a;->b(Ljava/lang/String;)V

    :cond_3
    const-string v0, "package_name"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 43
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/c/a;->a(Ljava/lang/String;)V

    :cond_4
    const-string v0, "force_update"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const-string v0, "extra"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/c/a;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 49
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/c/a;->a(Lorg/json/JSONObject;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private a(Lcom/ss/android/downloadad/a/c/a;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 131
    sget-object v2, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySendAndRefreshAdEvent start key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    .line 132
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    sget-object v6, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trySendAndRefreshAdEvent now:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", download status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", model timestamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->e()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", adid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-static {v6, v7, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->c()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto/16 :goto_1

    .line 138
    :cond_1
    sget-object v6, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v7, "trySendAndRefreshAdEvent STATUS_DOWNLOAD_FINISH start"

    invoke-static {v6, v7, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->e()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/32 v6, 0x240c8400

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    .line 140
    invoke-interface/range {p2 .. p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    sget-object v1, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "trySendAndRefreshAdEvent STATUS_DOWNLOAD_FINISH return romve"

    invoke-static {v1, v2, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 142
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 143
    sget-object v3, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trySendAndRefreshAdEvent STATUS_DOWNLOAD_FINISH packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 144
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    invoke-interface/range {p2 .. p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    sget-object v1, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "trySendAndRefreshAdEvent STATUS_DOWNLOAD_FINISH romve"

    invoke-static {v1, v2, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 147
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/e/h;->a(Lcom/ss/android/downloadad/a/c/a;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ss/android/downloadlib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/c/a;II)Lorg/json/JSONObject;

    move-result-object v14

    .line 149
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->m()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->g()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->b()J

    move-result-wide v12

    const/4 v15, 0x2

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->l()Z

    move-result v16

    const-string v7, "install_finish"

    .line 152
    invoke-static/range {v6 .. v16}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    .line 153
    invoke-interface/range {p2 .. p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/a$j$c;->a(Lcom/ss/android/downloadad/a/c/a;Landroid/content/Context;)V

    .line 155
    sget-object v1, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "trySendAndRefreshAdEvent STATUS_DOWNLOAD_FINISH isInstalledApp"

    invoke-static {v1, v2, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 156
    :cond_4
    :goto_0
    sget-object v1, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "trySendAndRefreshAdEvent STATUS_DOWNLOAD_FINISH end"

    invoke-static {v1, v2, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 157
    :cond_5
    sget-object v6, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v7, "trySendAndRefreshAdEvent STATUS_START_DOWNLOAD start"

    invoke-static {v6, v7, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->e()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/32 v6, 0xf731400

    cmp-long v1, v2, v6

    if-ltz v1, :cond_6

    .line 159
    invoke-interface/range {p2 .. p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    sget-object v1, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "trySendAndRefreshAdEvent STATUS_START_DOWNLOAD remove"

    invoke-static {v1, v2, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 161
    :cond_6
    sget-object v1, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "trySendAndRefreshAdEvent STATUS_START_DOWNLOAD end"

    invoke-static {v1, v2, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    if-nez v1, :cond_8

    const-string v1, "null == model"

    goto :goto_3

    :cond_8
    move-object v1, v4

    .line 162
    :goto_3
    sget-object v2, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySendAndRefreshAdEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", return"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v5}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lcom/ss/android/downloadad/a/c/a;Landroid/content/SharedPreferences;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 97
    sget-object v2, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tryListenInstallFinishEvent start"

    invoke-static {v2, v4, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p1, :cond_5

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 99
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    sget-object v0, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryListenInstallFinishEvent adId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",packageName is empty "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 103
    :cond_1
    iget-object v4, v1, Lcom/ss/android/downloadlib/a;->b:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xf

    .line 104
    :try_start_0
    sget-object v5, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v6, "tryListenInstallFinishEvent start check: "

    invoke-static {v5, v6, v3}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-wide/16 v5, 0x4e20

    .line 105
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v7, p1

    :goto_0
    if-lez v4, :cond_4

    .line 106
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    const-string v9, ""

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/ss/android/downloadad/a/c/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v7

    .line 107
    invoke-static {v7}, Lcom/ss/android/downloadlib/e/h;->a(Lcom/ss/android/downloadad/a/c/a;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 108
    sget-object v4, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryListenInstallFinishEvent isInstalledApp start adId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v7}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {v4, v5, v3}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 111
    invoke-virtual {v7}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/ss/android/downloadlib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v7, v4, v5}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/c/a;II)Lorg/json/JSONObject;

    move-result-object v16

    .line 112
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->m()Ljava/lang/String;

    move-result-object v8

    const-string v9, "install_finish"

    .line 113
    invoke-virtual {v7}, Lcom/ss/android/downloadad/a/c/a;->g()Z

    move-result v10

    invoke-virtual {v7}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/ss/android/downloadad/a/c/a;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/ss/android/downloadad/a/c/a;->b()J

    move-result-wide v14

    const/16 v17, 0x2

    .line 114
    invoke-virtual {v7}, Lcom/ss/android/downloadad/a/c/a;->l()Z

    move-result v18

    .line 115
    invoke-static/range {v8 .. v18}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    .line 116
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ss/android/downloadlib/a$j$c;->a(Lcom/ss/android/downloadad/a/c/a;Landroid/content/Context;)V

    .line 118
    sget-object v0, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "tryListenInstallFinishEvent isInstalledApp end "

    invoke-static {v0, v2, v3}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_3

    .line 119
    sget-object v0, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "tryListenInstallFinishEvent while retryCount == 0 "

    invoke-static {v0, v2, v3}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 121
    :cond_4
    :goto_1
    sget-object v0, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "tryListenInstallFinishEvent while end "

    invoke-static {v0, v2, v3}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_2
    iget-object v0, v1, Lcom/ss/android/downloadlib/a;->b:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    .line 123
    :goto_3
    :try_start_2
    sget-object v2, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryListenInstallFinishEvent throwable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 124
    :goto_4
    sget-object v0, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    const-string v2, "tryListenInstallFinishEvent end"

    invoke-static {v0, v2, v3}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catchall_2
    move-exception v0

    .line 125
    iget-object v2, v1, Lcom/ss/android/downloadlib/a;->b:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v0

    :cond_5
    :goto_5
    if-nez p1, :cond_6

    const-string v0, "model is null"

    goto :goto_6

    .line 126
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_6
    sget-object v2, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryListenInstallFinishEvent value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",return "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a;->b(Lcom/ss/android/downloadad/a/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/c/a;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/c/a;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/c/a;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/c/a;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_ad_download_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    .line 25
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ss/android/downloadad/a/c/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/c/a;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-static {v1, p1}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/c/a;Landroid/content/ContentValues;)V

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/c/a;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lc/d/a/b/a/f/c;Z)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/a;->a:Z

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 8
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "check_hijack"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sp_ttdownloader_md5"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p2}, Lcom/ss/android/downloadlib/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/ss/android/downloadad/a/c/a;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->k()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lc/d/a/b/a/f/c;Z)V

    .line 4
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->m()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->g()Z

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->b()J

    move-result-wide v9

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object v11

    const/4 v12, 0x2

    .line 6
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->l()Z

    move-result v13

    const-string v4, "download_finish"

    .line 7
    invoke-static/range {v3 .. v13}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 128
    sget-object v0, Lcom/ss/android/downloadlib/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEventStatus mIsListeningInstallFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/downloadlib/a;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 129
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a;->a:Z

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lcom/ss/android/downloadlib/d;->c()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a$c;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/a$c;-><init>(Lcom/ss/android/downloadlib/a;I)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 87
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object p2

    const-string v0, "sp_ad_download_event"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, ""

    .line 89
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 91
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ss/android/downloadad/a/c/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a;->b(Lcom/ss/android/downloadad/a/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(JI)V
    .locals 12

    .line 202
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sp_ad_download_event"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    .line 204
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ss/android/downloadad/a/c/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-static {v0}, Lcom/ss/android/downloadad/a/c/a;->a(Lcom/ss/android/downloadad/a/c/a;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v1, "fail_security"

    .line 208
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v9, v1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_failed"

    .line 210
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->g()Z

    move-result v3

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->b()J

    move-result-wide v7

    const/4 v10, 0x2

    .line 211
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->l()Z

    move-result v11

    move-wide v4, p1

    .line 212
    invoke-static/range {v1 .. v11}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(JILjava/lang/String;JLc/d/a/b/a/f/c;)V
    .locals 13

    .line 71
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sp_ad_download_event"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    .line 73
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ss/android/downloadad/a/c/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/ss/android/downloadad/a/c/a;->a(Lcom/ss/android/downloadad/a/c/a;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v1, "download_time"

    .line 77
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fail_status"

    .line 78
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fail_msg"

    move-object/from16 v2, p4

    .line 80
    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    const/4 v1, 0x1

    move-object v12, p0

    move-object/from16 v2, p7

    .line 81
    :try_start_1
    invoke-direct {p0, v9, v2, v1}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lc/d/a/b/a/f/c;Z)V

    .line 82
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_failed"

    .line 83
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->g()Z

    move-result v3

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->b()J

    move-result-wide v7

    const/4 v10, 0x2

    .line 84
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->l()Z

    move-result v11

    move-wide v4, p1

    .line 85
    invoke-static/range {v1 .. v11}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v12, p0

    return-void

    :catch_1
    move-exception v0

    move-object v12, p0

    .line 86
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "sp_ad_download_event"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, ""

    .line 54
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/d;->c()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a$d;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/ss/android/downloadlib/a$d;-><init>(Lcom/ss/android/downloadlib/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lc/d/a/a/a/c/c;Lc/d/a/a/a/c/d;)V
    .locals 15

    .line 176
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_ad_download_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    invoke-interface/range {p2 .. p2}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lc/d/a/a/a/c/c;->h()Ljava/lang/String;

    move-result-object v1

    const-string v3, "install_window_show"

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ss/android/downloadad/a/c/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    invoke-interface/range {p1 .. p1}, Lc/d/a/a/a/c/c;->p()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    invoke-interface/range {p1 .. p1}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "click_install"

    :cond_2
    if-nez v0, :cond_4

    .line 185
    invoke-interface/range {p2 .. p2}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 187
    :cond_3
    invoke-interface/range {p2 .. p2}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v4

    .line 188
    invoke-interface/range {p2 .. p2}, Lc/d/a/a/a/c/d;->n()Z

    move-result v6

    .line 189
    invoke-interface/range {p2 .. p2}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-interface/range {p2 .. p2}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v8

    move-object v10, v0

    move-wide v13, v4

    move v4, v6

    move-wide v5, v13

    goto :goto_1

    .line 191
    :cond_4
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_5

    .line 192
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 193
    :cond_5
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v5

    .line 194
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->g()Z

    move-result v7

    .line 195
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->f()Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->b()J

    move-result-wide v9

    move-wide v13, v9

    move-object v10, v4

    move v4, v7

    move-object v7, v8

    move-wide v8, v13

    :goto_1
    const-string v0, "key_extra_check_install_tag"

    .line 197
    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "key_extra_check_install_label"

    .line 198
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v11, 0x1

    .line 199
    invoke-interface/range {p1 .. p1}, Lc/d/a/a/a/c/c;->A()Z

    move-result v12

    move-object v2, v1

    .line 200
    invoke-static/range {v2 .. v12}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public a(Lcom/ss/android/downloadad/a/c/a;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/ss/android/downloadlib/d;->c()Lcom/ss/android/downloadlib/d;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/a$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/a$a;-><init>(Lcom/ss/android/downloadlib/a;Ljava/lang/String;Lcom/ss/android/downloadad/a/c/a;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/downloadlib/a$h/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 170
    new-instance v0, Lcom/ss/android/downloadad/a/a/b$b;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/b$b;-><init>()V

    .line 171
    invoke-virtual {v0, p2}, Lcom/ss/android/downloadad/a/a/b$b;->g(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 172
    invoke-virtual {v0, p3}, Lcom/ss/android/downloadad/a/a/b$b;->n(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/b$b;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object p2

    .line 173
    new-instance p3, Lcom/ss/android/downloadad/a/a/c$b;

    invoke-direct {p3}, Lcom/ss/android/downloadad/a/a/c$b;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/ss/android/downloadad/a/a/c$b;->a(Z)Lcom/ss/android/downloadad/a/a/c$b;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/ss/android/downloadad/a/a/c$b;->a(J)Lcom/ss/android/downloadad/a/a/c$b;

    .line 174
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ss/android/downloadad/a/a/c$b;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$h/b;->b()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/ss/android/downloadad/a/a/c$b;->b(J)Lcom/ss/android/downloadad/a/a/c$b;

    invoke-virtual {p3}, Lcom/ss/android/downloadad/a/a/c$b;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object p1

    .line 175
    invoke-virtual {p0, p2, p1}, Lcom/ss/android/downloadlib/a;->a(Lc/d/a/a/a/c/c;Lc/d/a/a/a/c/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3

    .line 94
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "check_hijack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/d;->c()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/a$b;-><init>(Lcom/ss/android/downloadlib/a;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 57
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/ss/android/downloadlib/a;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "sp_ad_download_event"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, ""

    .line 59
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 61
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/ss/android/downloadad/a/c/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 62
    invoke-virtual {v4}, Lcom/ss/android/downloadad/a/c/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x3

    .line 63
    invoke-virtual {v4, v5, v6}, Lcom/ss/android/downloadad/a/c/a;->b(J)V

    .line 64
    invoke-direct/range {p0 .. p2}, Lcom/ss/android/downloadlib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x3

    invoke-direct {v1, v4, v2, v5}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/c/a;II)Lorg/json/JSONObject;

    move-result-object v14

    .line 65
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->m()Ljava/lang/String;

    move-result-object v6

    const-string v7, "install_finish"

    .line 66
    invoke-virtual {v4}, Lcom/ss/android/downloadad/a/c/a;->g()Z

    move-result v8

    invoke-virtual {v4}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v9

    invoke-virtual {v4}, Lcom/ss/android/downloadad/a/c/a;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/ss/android/downloadad/a/c/a;->b()J

    move-result-wide v12

    const/4 v15, 0x2

    .line 67
    invoke-virtual {v4}, Lcom/ss/android/downloadad/a/c/a;->l()Z

    move-result v16

    .line 68
    invoke-static/range {v6 .. v16}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    .line 69
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
