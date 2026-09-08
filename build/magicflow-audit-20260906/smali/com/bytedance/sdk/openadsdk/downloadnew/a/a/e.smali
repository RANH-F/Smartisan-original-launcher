.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;
.super Ljava/lang/Object;
.source "LibSettings.java"

# interfaces
.implements Lc/d/a/a/a/a/g;


# static fields
.field private static b:Z = true

.field private static c:Z = false

.field private static d:Z = true

.field private static e:Ljava/lang/String; = "com.oppo.market"

.field private static f:I = 0x0

.field private static g:Ljava/lang/String; = "com.huawei.appmarket"

.field private static h:I = 0x1

.field private static i:I = 0x1e

.field private static j:I = 0xa


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b()V

    return-void
.end method

.method private static b()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->u()Z

    move-result v1

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b:Z

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->v()Z

    move-result v1

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->c:Z

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->w()Z

    move-result v1

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->d:Z

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->x()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->y()I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->f:I

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->z()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->A()I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->h:I

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->B()I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->i:I

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->C()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private c()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "landing_page_progressbar_visible"

    .line 3
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "download_lib_switch"

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "download_completed_event_tag"

    const-string v2, "openad_sdk_download_complete_tag"

    .line 5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_enable_start_install_again"

    .line 6
    sget v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->h:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "start_install_interval"

    .line 7
    sget v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->i:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "next_install_min_interval"

    .line 8
    sget v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->j:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "hook"

    .line 9
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->d:Z

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "hook_oppo_arg1"

    .line 10
    sget-object v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hook_oppo_arg4"

    .line 11
    sget v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->f:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "hook_huawei_arg1"

    .line 12
    sget-object v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "check_hijack"

    .line 13
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "need_clear_task_reset_list"

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-object v1, v0

    :catchall_1
    :goto_1
    return-object v1
.end method

.method private d()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "SM-C9000"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "SM-A9100"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "SM-A9200"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "SM-G8850"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "X20A"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->s()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    array-length v3, v1

    if-lez v3, :cond_1

    .line 9
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 11
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 15
    :catchall_0
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    if-lez v2, :cond_3

    :try_start_1
    const-string v2, ","

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move v2, v4

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b()V

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
