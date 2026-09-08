.class public Lcom/bytedance/tea/crash/upload/CrashUploadService;
.super Landroid/app/IntentService;
.source "CrashUploadService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CrashUploadService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/tea/crash/f;)Lcom/bytedance/tea/crash/upload/f;
    .locals 3

    if-nez p4, :cond_0

    .line 1
    new-instance p1, Lcom/bytedance/tea/crash/upload/f;

    const/16 p2, 0xc9

    invoke-direct {p1, p2}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_scene"

    const-string v2, "new_process"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    :goto_0
    sget-object v0, Lcom/bytedance/tea/crash/f;->d:Lcom/bytedance/tea/crash/f;

    if-ne p4, v0, :cond_1

    .line 7
    invoke-static {p1, p2, p3}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    sget-object p3, Lcom/bytedance/tea/crash/f;->b:Lcom/bytedance/tea/crash/f;

    if-ne p4, p3, :cond_2

    .line 9
    invoke-static {p1, p2}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->a()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "crash_type"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/f;

    :cond_1
    const-string v1, "upload_url"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "crash_json_value"

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "crash_info_file_path"

    .line 5
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "crash_dump_file_path"

    .line 6
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/bytedance/tea/crash/c/b;->a()Lcom/bytedance/tea/crash/c/b;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/IntentService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/tea/crash/c/b;->a(Landroid/content/Context;)V

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 9
    invoke-static {}, Lcom/bytedance/tea/crash/c/b;->a()Lcom/bytedance/tea/crash/c/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bytedance/tea/crash/c/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/bytedance/tea/crash/upload/CrashUploadService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/tea/crash/f;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/tea/crash/upload/f;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    sget-object p1, Lcom/bytedance/tea/crash/f;->d:Lcom/bytedance/tea/crash/f;

    if-ne v0, p1, :cond_3

    .line 13
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/tea/crash/m/d;->a(Ljava/io/File;Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    invoke-static {}, Lcom/bytedance/tea/crash/c/b;->a()Lcom/bytedance/tea/crash/c/b;

    move-result-object p1

    invoke-static {v3}, Lcom/bytedance/tea/crash/c/a/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/b;->a(Lcom/bytedance/tea/crash/c/a/a;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    invoke-static {v3}, Lcom/bytedance/tea/crash/m/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 17
    invoke-static {}, Lcom/bytedance/tea/crash/c/b;->a()Lcom/bytedance/tea/crash/c/b;

    move-result-object p1

    invoke-static {v3}, Lcom/bytedance/tea/crash/c/a/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/b;->a(Lcom/bytedance/tea/crash/c/a/a;)V

    :cond_4
    :goto_0
    return-void
.end method
