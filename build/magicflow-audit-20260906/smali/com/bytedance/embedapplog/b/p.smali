.class Lcom/bytedance/embedapplog/b/p;
.super Lcom/bytedance/embedapplog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/b/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/b/c;-><init>(ZZ)V

    .line 2
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/p;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/p;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/h;->t()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "package"

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v1, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v3, "has zijie pkg"

    .line 5
    invoke-static {v3, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/h;->t()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "real_package_name"

    .line 7
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/p;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 9
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 10
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "app_version"

    if-nez v3, :cond_2

    .line 11
    :try_start_1
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 12
    :cond_2
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :goto_1
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "app_version_minor"

    if-nez v3, :cond_3

    .line 14
    :try_start_2
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const-string v3, ""

    .line 15
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :goto_2
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->h()I

    move-result v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "version_code"

    if-eqz v3, :cond_4

    .line 17
    :try_start_3
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->h()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    :goto_3
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->i()I

    move-result v3
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "update_version_code"

    if-eqz v3, :cond_5

    .line 20
    :try_start_4
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->i()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    :goto_4
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->j()I

    move-result v3
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "manifest_version_code"

    if-eqz v3, :cond_6

    .line 23
    :try_start_5
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->j()I

    move-result v2

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    .line 24
    :cond_6
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    :goto_5
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "app_name"

    .line 26
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_7
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "tweaked_channel"

    .line 28
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    :cond_8
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_9

    .line 30
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-lez v0, :cond_9

    const-string v2, "display_name"

    .line 31
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->e:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_9
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 32
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    return v1
.end method
