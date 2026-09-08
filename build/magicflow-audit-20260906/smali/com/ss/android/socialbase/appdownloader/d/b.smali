.class public Lcom/ss/android/socialbase/appdownloader/d/b;
.super Ljava/lang/Object;
.source "DefaultDownloadLaunchHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/d/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Lcom/ss/android/socialbase/appdownloader/d/b$b;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/ss/android/socialbase/appdownloader/d/b$b;->b:J

    .line 9
    iget v0, p2, Lcom/ss/android/socialbase/appdownloader/d/b$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/ss/android/socialbase/appdownloader/d/b$b;->c:I

    .line 10
    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/d/b$b;->a()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p2, p2, Lcom/ss/android/socialbase/appdownloader/d/b$b;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Lc/d/a/b/a/f/c;Z)V
    .locals 3

    .line 13
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/f;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->s0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 15
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 16
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 17
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 18
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->H0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->c(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 19
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 20
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 21
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->e(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 23
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->f0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(I)Lcom/ss/android/socialbase/appdownloader/f;

    .line 24
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->e0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->b(I)Lcom/ss/android/socialbase/appdownloader/f;

    .line 25
    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->f(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 26
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->L()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->d(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 27
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 28
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->g(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 29
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->y0()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->h(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 30
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->j()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->i(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 31
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->k()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->k(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 32
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->B0()Lc/d/a/b/a/a/g;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lc/d/a/b/a/a/g;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 33
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->p()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->m(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 34
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->l()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f;->l(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 35
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->M()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/f;->g(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 36
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/appdownloader/f;)I

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/d/b;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Landroid/content/SharedPreferences;Lcom/ss/android/socialbase/appdownloader/d/b$b;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 27
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/ss/android/socialbase/appdownloader/d/b$b;->d:J

    .line 28
    iget v0, p2, Lcom/ss/android/socialbase/appdownloader/d/b$b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/ss/android/socialbase/appdownloader/d/b$b;->e:I

    .line 29
    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/d/b$b;->a()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p2, p2, Lcom/ss/android/socialbase/appdownloader/d/b$b;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v8, 0x0

    const-string v1, "sp_appdownloader"

    .line 3
    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lc/d/a/b/a/f/c;

    if-eqz v10, :cond_2

    .line 5
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->y()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/d/b$b;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_4
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/d/b$b;

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/appdownloader/d/b$b;-><init>(I)V

    :goto_1
    move-object v11, v1

    .line 10
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->G0()I

    move-result v1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    .line 11
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->h0()Z

    move-result v2

    if-nez v2, :cond_6

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v11, Lcom/ss/android/socialbase/appdownloader/d/b$b;->b:J

    sub-long/2addr v1, v4

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/c;->g()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-lez v1, :cond_5

    iget v1, v11, Lcom/ss/android/socialbase/appdownloader/d/b$b;->c:I

    .line 13
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/c;->i()I

    move-result v2

    if-ge v1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v8

    :goto_2
    if-eqz v3, :cond_2

    .line 14
    invoke-direct {p0, v10, v3}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lc/d/a/b/a/f/c;Z)V

    .line 15
    invoke-direct {p0, v9, v11}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Landroid/content/SharedPreferences;Lcom/ss/android/socialbase/appdownloader/d/b$b;)V

    goto :goto_0

    :cond_6
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 16
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->h0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v11, Lcom/ss/android/socialbase/appdownloader/d/b$b;->d:J

    sub-long/2addr v1, v4

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/c;->h()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-lez v1, :cond_7

    iget v1, v11, Lcom/ss/android/socialbase/appdownloader/d/b$b;->e:I

    .line 18
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/c;->j()I

    move-result v2

    if-ge v1, v2, :cond_7

    goto :goto_3

    :cond_7
    move v3, v8

    :goto_3
    if-eqz v3, :cond_2

    .line 19
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->d(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v1

    if-nez v1, :cond_8

    .line 20
    new-instance v12, Lcom/ss/android/socialbase/appdownloader/e;

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->s0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v7

    move-object v1, v12

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/e;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/notification/a;)V

    move-object v1, v12

    goto :goto_4

    .line 22
    :cond_8
    invoke-virtual {v1, v10}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lc/d/a/b/a/f/c;)V

    .line 23
    :goto_4
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->b(J)V

    .line 24
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    .line 25
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->A0()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v8}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILc/d/a/b/a/d/a;Z)V

    .line 26
    invoke-direct {p0, v9, v11}, Lcom/ss/android/socialbase/appdownloader/d/b;->b(Landroid/content/SharedPreferences;Lcom/ss/android/socialbase/appdownloader/d/b$b;)V

    goto/16 :goto_0

    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/d/b$b;
    .locals 9

    const-string v0, "show_coun_uninstall_resume"

    const-string v1, "last_time_uninstall_resume"

    const-string v2, "show_count_failed_resume"

    const-string v3, "last_time_failed_resume"

    const-string v4, "id"

    const/4 v5, 0x0

    .line 37
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 39
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 40
    new-instance v4, Lcom/ss/android/socialbase/appdownloader/d/b$b;

    invoke-direct {v4, p1}, Lcom/ss/android/socialbase/appdownloader/d/b$b;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :try_start_1
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/ss/android/socialbase/appdownloader/d/b$b;->b:J

    .line 43
    :cond_0
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v4, Lcom/ss/android/socialbase/appdownloader/d/b$b;->c:I

    .line 45
    :cond_1
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v4, Lcom/ss/android/socialbase/appdownloader/d/b$b;->d:J

    .line 47
    :cond_2
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 48
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v4, Lcom/ss/android/socialbase/appdownloader/d/b$b;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_3
    move-object v4, v5

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v4, v5

    .line 49
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v4
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "application/vnd.android.package-archive"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/d/b$a;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/appdownloader/d/b$a;-><init>(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/d/b;->b(Ljava/util/List;)V

    :goto_0
    return-void
.end method
