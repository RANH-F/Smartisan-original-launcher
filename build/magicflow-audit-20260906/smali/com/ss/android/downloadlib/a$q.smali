.class public Lcom/ss/android/downloadlib/a$q;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lc/d/a/a/a/a/d;

.field private static c:Lc/d/a/a/a/a/b;

.field private static d:Lc/d/a/a/a/a/i;

.field private static e:Lc/d/a/a/a/a/e;

.field private static f:Lc/d/a/a/a/a/f;

.field private static g:Lc/d/a/a/a/a/g;

.field private static h:Lc/d/a/a/a/d/a;

.field private static i:Lc/d/a/a/a/a/a;

.field private static j:Lc/d/a/a/a/a/c;

.field private static k:Lc/d/a/a/a/a/j;

.field private static l:Lc/d/a/a/a/a/h;

.field private static m:Ljava/lang/String;


# direct methods
.method public static a()Landroid/content/Context;
    .locals 2

    .line 4
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/downloadlib/a$q;->a:Landroid/content/Context;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lc/d/a/a/a/a/a;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/ss/android/downloadlib/a$q;->i:Lc/d/a/a/a/a/a;

    return-void
.end method

.method public static a(Lc/d/a/a/a/a/d;)V
    .locals 0

    .line 6
    sput-object p0, Lcom/ss/android/downloadlib/a$q;->b:Lc/d/a/a/a/a/d;

    return-void
.end method

.method public static a(Lc/d/a/a/a/a/e;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/ss/android/downloadlib/a$q;->e:Lc/d/a/a/a/a/e;

    return-void
.end method

.method public static a(Lc/d/a/a/a/a/f;)V
    .locals 0

    .line 9
    sput-object p0, Lcom/ss/android/downloadlib/a$q;->f:Lc/d/a/a/a/a/f;

    return-void
.end method

.method public static a(Lc/d/a/a/a/a/g;)V
    .locals 2

    .line 10
    sput-object p0, Lcom/ss/android/downloadlib/a$q;->g:Lc/d/a/a/a/a/g;

    .line 11
    :try_start_0
    invoke-interface {p0}, Lc/d/a/a/a/a/g;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$q;->a(Lorg/json/JSONObject;)V

    .line 12
    invoke-interface {p0}, Lc/d/a/a/a/a/g;->a()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "hook"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 13
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Lc/d/a/a/a/a/i;)V
    .locals 0

    .line 7
    sput-object p0, Lcom/ss/android/downloadlib/a$q;->d:Lc/d/a/a/a/a/i;

    return-void
.end method

.method public static a(Lc/d/a/a/a/d/a;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/ss/android/downloadlib/a$q;->h:Lc/d/a/a/a/d/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "download_notification_config"

    .line 18
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p0

    const-string v1, "min_resume_failed_interval_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)V

    .line 23
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p0

    const-string v1, "min_resume_uninstall_interval_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/c;->b(J)V

    .line 24
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p0

    const-string v1, "max_resume_failed_notification_show_count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(I)V

    .line 25
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p0

    const-string v1, "max_resume_uninstall_notification_show_count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b()Lc/d/a/a/a/a/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->b:Lc/d/a/a/a/a/d;

    return-object v0
.end method

.method public static c()Lc/d/a/a/a/a/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->c:Lc/d/a/a/a/a/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/a$q$a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$q$a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a$q;->c:Lc/d/a/a/a/a/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->c:Lc/d/a/a/a/a/b;

    return-object v0
.end method

.method public static d()Lc/d/a/a/a/a/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->d:Lc/d/a/a/a/a/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/b/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/b/a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a$q;->d:Lc/d/a/a/a/a/i;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->d:Lc/d/a/a/a/a/i;

    return-object v0
.end method

.method public static e()Lc/d/a/a/a/a/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->e:Lc/d/a/a/a/a/e;

    return-object v0
.end method

.method public static f()Lc/d/a/a/a/a/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->f:Lc/d/a/a/a/a/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/b/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/b/b;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a$q;->f:Lc/d/a/a/a/a/f;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->f:Lc/d/a/a/a/a/f;

    return-object v0
.end method

.method public static g()Lc/d/a/a/a/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->k:Lc/d/a/a/a/a/j;

    return-object v0
.end method

.method public static h()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->g:Lc/d/a/a/a/a/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/a$q$b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$q$b;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a$q;->g:Lc/d/a/a/a/a/g;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->g:Lc/d/a/a/a/a/g;

    invoke-interface {v0}, Lc/d/a/a/a/a/g;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static i()Lc/d/a/a/a/d/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->h:Lc/d/a/a/a/d/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/d/a/a/a/d/a$a;

    invoke-direct {v0}, Lc/d/a/a/a/d/a$a;-><init>()V

    invoke-virtual {v0}, Lc/d/a/a/a/d/a$a;->a()Lc/d/a/a/a/d/a;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a$q;->h:Lc/d/a/a/a/d/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->h:Lc/d/a/a/a/d/a;

    return-object v0
.end method

.method public static j()Lc/d/a/a/a/a/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->i:Lc/d/a/a/a/a/a;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    const-string v0, "1.9.5.1"

    return-object v0
.end method

.method public static l()Lc/d/a/a/a/a/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->j:Lc/d/a/a/a/a/c;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "download_completed_event_tag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "embeded_ad"

    :goto_0
    sput-object v0, Lcom/ss/android/downloadlib/a$q;->m:Ljava/lang/String;

    .line 4
    :cond_1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "is_enable_start_install_again"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static o()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "is_enable_start_install_again"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "start_install_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/32 v0, 0x493e0

    :cond_0
    return-wide v0
.end method

.method public static q()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "next_install_min_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x2710

    :cond_0
    return-wide v0
.end method

.method public static r()Lc/d/a/a/a/a/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$q;->l:Lc/d/a/a/a/a/h;

    return-object v0
.end method
