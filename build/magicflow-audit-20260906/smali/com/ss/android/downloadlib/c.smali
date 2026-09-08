.class public Lcom/ss/android/downloadlib/c;
.super Ljava/lang/Object;
.source "BaseDownloadMonitorListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c$j;


# static fields
.field private static a:Ljava/lang/String; = "c"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lc/d/a/b/a/f/c;)V
    .locals 3

    .line 32
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "exec_clear_space_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/a$j$c;->a()Lcom/ss/android/downloadlib/a$j$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a$j$c;->a(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method private a(Ljava/lang/Long;Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ss/android/downloadlib/e/h;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 37
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/d$c;->b()Lcom/ss/android/downloadlib/d$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/d$c;->a(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V
    .locals 14

    move-object v0, p1

    move-object/from16 v9, p2

    move/from16 v1, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    const-string v5, "extra"

    const-string v10, ""

    const/4 v11, 0x0

    if-ne v1, v2, :cond_2

    if-eqz v9, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v2, v5}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "exception_msg_length"

    const/16 v3, 0xaa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ss/android/downloadlib/e/h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lc/d/a/b/a/d/a;->a()I

    move-result v4

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v12

    move-wide v2, v5

    move-object v5, v7

    move-wide v6, v12

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/downloadlib/a;->a(JILjava/lang/String;JLc/d/a/b/a/f/c;)V

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/ss/android/downloadlib/e/h;->a(Lc/d/a/b/a/d/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/c;->a(Lc/d/a/b/a/f/c;)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object v1

    invoke-virtual {v1, p1, v9, v10}, Lcom/ss/android/downloadlib/h;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/ss/android/downloadlib/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppDownloadMonitorSend, downloadUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fail status:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual/range {p2 .. p2}, Lc/d/a/b/a/d/a;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fail message:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lc/d/a/b/a/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v1, v0, v11}, Lcom/ss/android/downloadlib/e/g;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_5

    .line 15
    sget-object v1, Lcom/ss/android/downloadlib/c;->a:Ljava/lang/String;

    const-string v2, "onAppDownloadMonitorSend, download success start"

    invoke-static {v1, v2, v11}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 16
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    sget-object v0, Lcom/ss/android/downloadlib/c;->a:Ljava/lang/String;

    const-string v1, "onAppDownloadMonitorSend, download success canShowNotification"

    invoke-static {v0, v1, v11}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 18
    :cond_3
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {v2, v5}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    .line 22
    sget-object v5, Lcom/ss/android/downloadlib/c;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAppDownloadMonitorSend, download success step url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", adId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {v5, v6, v11}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 25
    invoke-static {p1, v1, v2}, Lcom/ss/android/downloadlib/a;->a(Lc/d/a/b/a/f/c;J)V

    .line 26
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/ss/android/downloadlib/a;->a(J)V

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/ss/android/downloadlib/c;->a(Ljava/lang/Long;Lc/d/a/b/a/f/c;)V

    goto :goto_0

    :cond_4
    move-object v2, p0

    .line 28
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object v1

    invoke-virtual {v1, p1, v10}, Lcom/ss/android/downloadlib/h;->a(Lc/d/a/b/a/f/c;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/ss/android/downloadlib/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAppDownloadMonitorSend, download success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v11}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p0

    .line 30
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    sget-object v1, Lcom/ss/android/downloadlib/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAppDownloadMonitorSend, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v11}, Lcom/ss/android/downloadlib/e/g;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_5
    :goto_2
    move-object v2, p0

    :goto_3
    return-void
.end method
