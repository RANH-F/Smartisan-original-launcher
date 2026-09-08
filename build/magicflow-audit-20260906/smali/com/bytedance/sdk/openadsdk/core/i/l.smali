.class public Lcom/bytedance/sdk/openadsdk/core/i/l;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/i/e;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:I

.field private F:I

.field private G:J

.field private H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:I

.field private K:I

.field private L:J

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/i/m;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/i/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->d:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->f:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->g:Ljava/util/List;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->i:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->j:I

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->k:I

    const-string v2, "com.oppo.market"

    .line 10
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->l:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->m:I

    const-string v2, "com.huawei.appmarket"

    .line 12
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->n:Ljava/lang/String;

    .line 13
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->o:I

    const/16 v2, 0x1e

    .line 14
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->p:I

    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->q:I

    .line 16
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->r:I

    const/16 v3, 0xa

    .line 17
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->s:I

    .line 18
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->t:I

    .line 19
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->u:I

    const/4 v3, 0x5

    .line 20
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->v:I

    const/4 v4, 0x2

    .line 21
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->w:I

    .line 22
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->z:I

    .line 23
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->A:I

    .line 24
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->F:I

    const-wide/16 v4, 0x0

    .line 25
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->G:J

    .line 26
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    .line 27
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    .line 28
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->J:I

    .line 29
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->K:I

    const-wide/16 v0, 0x2710

    .line 30
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->L:J

    const/16 v0, 0x32

    .line 31
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->M:I

    .line 32
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->N:I

    .line 33
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->O:I

    const/16 v0, 0xe10

    .line 34
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->P:I

    return-void
.end method

.method private M()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->f:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->f:Ljava/util/Set;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private N()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/i/l;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/i/m;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->b:Ljava/util/Map;

    iget-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/i/m;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private O()Lcom/bytedance/sdk/openadsdk/utils/ad;
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_sdk_settings"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    return p1

    :cond_0
    const/4 p1, 0x5

    return p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/i/m;)V
    .locals 0

    .line 210
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/i/m;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 211
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v3

    const-string v4, "download_config_install_again_time_next"

    const-string v5, "download_config_install_again_time"

    const-string v6, "download_config_enable_install_again"

    const-string v7, "download_config_dl_size"

    const-string v8, "download_config_dl_network"

    const-string v9, "download_config_hook_huawei_arg1"

    const-string v10, "download_config_hook_oppo_arg4"

    const-string v11, "download_config_hook_oppo_arg1"

    const-string v12, "download_config_hook"

    const-string v13, "download_config_progressbar"

    const-string v14, "download_config_back_dialog"

    const-string v15, "max"

    const-string v1, "duration"

    const-string v2, "xpath"

    if-eqz v3, :cond_6

    .line 212
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->h:Ljava/lang/String;

    move-object/from16 v16, v4

    const-string v4, "tt_sdk_settings"

    invoke-static {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->L:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->M:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v15, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v14, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v13, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v12, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->l:Ljava/lang/String;

    invoke-static {v4, v11, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v10, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->n:Ljava/lang/String;

    invoke-static {v4, v9, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v8, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v7, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v6, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_config_storage_internal"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_config_resume_notify_switch"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_config_resume_notify_time"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_config_resume_notify_count"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->N:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pos_cache_time"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->O:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vbtt"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->P:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fetch_template"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "web_info_wifi_enable"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "web_info_page_count"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "splash_load_type"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "splash_check_type"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->J:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "if_both_open"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->K:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "support_tnc"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->B:Ljava/lang/String;

    const-string v2, "pyload_h5"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->C:Ljava/lang/String;

    const-string v2, "playableLoadH5Url"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_list_control"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->G:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "hit_app_list_time"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    const-string v2, "hit_app_list_data"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 244
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    const-string v2, "scheme_list_data"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 245
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->x:Ljava/lang/String;

    const-string v2, "ab_test_version"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->y:Ljava/lang/String;

    const-string v2, "ab_test_param"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "push_config"

    move-object/from16 v3, p2

    .line 250
    invoke-static {v4, v1, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ad_slot_conf"

    move-object/from16 v2, p1

    .line 252
    invoke-static {v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 254
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->e:Ljava/lang/String;

    const-string v2, "template_ids"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_4
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 256
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->c:Ljava/lang/String;

    const-string v2, "tpl_infos"

    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v17, v4

    move-object v4, v1

    move-object v1, v2

    move-object/from16 v2, v17

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->O()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v3

    move-object/from16 v16, v2

    .line 258
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->h:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->L:J

    invoke-virtual {v3, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;J)V

    .line 260
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->M:I

    invoke-virtual {v3, v15, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 261
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->i:I

    invoke-virtual {v3, v14, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 262
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->j:I

    invoke-virtual {v3, v13, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 263
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->k:I

    invoke-virtual {v3, v12, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 264
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->l:Ljava/lang/String;

    invoke-virtual {v3, v11, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->m:I

    invoke-virtual {v3, v10, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 266
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->n:Ljava/lang/String;

    invoke-virtual {v3, v9, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->o:I

    invoke-virtual {v3, v8, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 268
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->p:I

    invoke-virtual {v3, v7, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 269
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->q:I

    invoke-virtual {v3, v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 270
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->r:I

    invoke-virtual {v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 271
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->s:I

    move-object/from16 v2, v16

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 272
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->t:I

    const-string v2, "download_config_storage_internal"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 273
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->u:I

    const-string v2, "download_config_resume_notify_switch"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 274
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->v:I

    const-string v2, "download_config_resume_notify_time"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 275
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->w:I

    const-string v2, "download_config_resume_notify_count"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 276
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->N:I

    const-string v2, "pos_cache_time"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 277
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->P:I

    const-string v2, "fetch_template"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 278
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->z:I

    const-string v2, "web_info_wifi_enable"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 279
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->A:I

    const-string v2, "web_info_page_count"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 280
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->B:Ljava/lang/String;

    const-string v2, "pyload_h5"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->C:Ljava/lang/String;

    const-string v2, "playableLoadH5Url"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    const-string v2, "splash_load_type"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 283
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    const-string v2, "splash_check_type"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 284
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->J:I

    const-string v2, "if_both_open"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 285
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->K:I

    const-string v2, "support_tnc"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 286
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->F:I

    const-string v2, "app_list_control"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 287
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->G:J

    const-string v4, "hit_app_list_time"

    invoke-virtual {v3, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;J)V

    .line 288
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    const-string v2, "hit_app_list_data"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 289
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    const-string v2, "scheme_list_data"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 290
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 291
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->x:Ljava/lang/String;

    const-string v2, "ab_test_version"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_7
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 293
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->y:Ljava/lang/String;

    const-string v2, "ab_test_param"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_8
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->O:I

    const-string v2, "vbtt"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 295
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "push_config"

    move-object/from16 v2, p2

    .line 296
    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "ad_slot_conf"

    move-object/from16 v2, p1

    .line 298
    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 300
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->e:Ljava/lang/String;

    const-string v2, "template_ids"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_b
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 302
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->c:Ljava/lang/String;

    const-string v2, "tpl_infos"

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/i/a;
    .locals 26

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "code_id"

    .line 1
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "auto_play"

    .line 2
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "voice_control"

    .line 3
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    const-string v7, "rv_preload"

    .line 4
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "nv_preload"

    .line 5
    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "read_video_from_cache"

    .line 6
    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const/16 v10, 0x64

    const-string v11, "proportion_watching"

    .line 7
    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x0

    const-string v12, "skip_time_displayed"

    .line 8
    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "video_skip_result"

    .line 9
    invoke-virtual {v0, v13, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "reg_creative_control"

    .line 10
    invoke-virtual {v0, v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x3

    const-string v11, "play_bar_show_time"

    .line 11
    invoke-virtual {v0, v11, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v15, -0x1

    const-string v2, "rv_skip_time"

    .line 12
    invoke-virtual {v0, v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v6, "endcard_close_time"

    .line 13
    invoke-virtual {v0, v6, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move/from16 v19, v6

    const-string v6, "playable_endcard_close_time"

    .line 14
    invoke-virtual {v0, v6, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v15, 0x2

    .line 15
    invoke-virtual {v0, v4, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v15, "if_show_win"

    move/from16 v21, v6

    const/4 v6, 0x1

    .line 16
    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v15, "sp_preload"

    move/from16 v17, v6

    const/4 v6, 0x0

    .line 17
    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v6, 0x5dc

    move/from16 v22, v15

    const-string v15, "stop_time"

    .line 18
    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v15, "native_playable_delay"

    move/from16 v23, v6

    const/4 v6, 0x2

    .line 19
    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v15, "time_out_control"

    move/from16 v18, v6

    const/4 v6, -0x1

    .line 20
    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v6, 0x14

    move/from16 v24, v15

    const-string v15, "playable_duration_time"

    .line 21
    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v15, "playable_close_time"

    move/from16 v25, v6

    const/4 v6, -0x1

    .line 22
    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v15, "playable_reward_type"

    move/from16 v20, v6

    const/4 v6, 0x0

    .line 23
    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "reward_is_callback"

    .line 24
    invoke-virtual {v0, v15, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v15, "parent_tpl_ids"

    .line 25
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a()Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v15

    .line 27
    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/i/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/i/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/i/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/i/a;->q(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/core/i/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/i/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/core/i/a;->t(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/core/i/a;->u(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/core/i/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/core/i/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v19

    .line 39
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/i/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v21

    .line 41
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v17

    .line 42
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v22

    .line 43
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->f(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v23

    .line 44
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->g(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v18

    .line 45
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->h(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v24

    .line 46
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->e(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v20

    .line 47
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v25

    .line 48
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    move/from16 v2, v16

    .line 49
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->b(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/i/a;->c(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/i/m;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ""

    const-string v1, "tpl_id"

    .line 1
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "md5"

    .line 2
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 3
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i/m;->a()Lcom/bytedance/sdk/openadsdk/core/i/m;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/i/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/m;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/i/m;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/m;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/i/m;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/m;

    move-result-object p0

    return-object p0
.end method

.method private d(Lorg/json/JSONObject;)I
    .locals 2

    const/4 v0, 0x1

    const-string v1, "splash_load_type"

    .line 1
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    .line 2
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v0

    .line 3
    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    return p1
.end method

.method private e(Lorg/json/JSONObject;)I
    .locals 2

    const/4 v0, 0x1

    const-string v1, "splash_check_type"

    .line 1
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    .line 2
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    return p1
.end method

.method private t(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/i/g;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/i/g;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "action"

    .line 5
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/i/g;->a:Ljava/lang/String;

    const-string v4, "service"

    .line 6
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/i/g;->b:Ljava/lang/String;

    const-string v4, "package"

    .line 7
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/i/g;->c:Ljava/lang/String;

    const-string v4, "wakeup_interval"

    .line 8
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/i/g;->d:I

    .line 9
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i/f;->a()Lcom/bytedance/sdk/openadsdk/core/i/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private u(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a()Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/i/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/i/a;->q(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/i/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    const/16 v2, 0x64

    .line 10
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->t(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/i/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    const/4 v2, 0x3

    .line 13
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    const/4 v2, -0x1

    .line 14
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/i/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->e(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    const/16 v0, 0x14

    .line 21
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->q:I

    return v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->r:I

    return v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->s:I

    return v0
.end method

.method public D()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public E()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->v:I

    return v0
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->w:I

    return v0
.end method

.method public H()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->G:J

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public I()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->G:J

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public J()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->F:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public K()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->O:I

    return v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/i/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->g:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)I
    .locals 1

    if-nez p1, :cond_0

    .line 309
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/i/l;->a(Z)I

    move-result p1

    return p1

    .line 310
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 311
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->v:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/i/l;->a(Z)I

    move-result p1

    :goto_0
    return p1
.end method

.method public a()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    const-string v2, "download_config_hook"

    const-string v3, "download_config_progressbar"

    const-string v4, "download_config_back_dialog"

    const/16 v5, 0x32

    const-string v6, "max"

    const-wide/16 v7, 0x2710

    const-string v9, "duration"

    const-string v10, ""

    const-string v11, "xpath"

    const/4 v12, 0x5

    const/16 v13, 0x1e

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_4

    const-string v1, "tt_sdk_settings"

    .line 2
    invoke-static {v1, v11, v10}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->h:Ljava/lang/String;

    .line 3
    invoke-static {v1, v9, v7, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->L:J

    .line 4
    invoke-static {v1, v6, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->M:I

    .line 5
    invoke-static {v1, v4, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->i:I

    .line 6
    invoke-static {v1, v3, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->j:I

    .line 7
    invoke-static {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->k:I

    const-string v2, "download_config_hook_oppo_arg1"

    const-string v3, "com.oppo.market"

    .line 8
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->l:Ljava/lang/String;

    const-string v2, "download_config_hook_oppo_arg4"

    .line 9
    invoke-static {v1, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->m:I

    const-string v2, "download_config_hook_huawei_arg1"

    const-string v3, "com.huawei.appmarket"

    .line 10
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->n:Ljava/lang/String;

    const-string v2, "download_config_dl_network"

    .line 11
    invoke-static {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->o:I

    const-string v2, "download_config_dl_size"

    .line 12
    invoke-static {v1, v2, v13}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->p:I

    const-string v2, "download_config_enable_install_again"

    .line 13
    invoke-static {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->q:I

    const-string v2, "download_config_install_again_time"

    .line 14
    invoke-static {v1, v2, v13}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->r:I

    const/16 v2, 0xa

    const-string v3, "download_config_install_again_time_next"

    .line 15
    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->s:I

    const-string v2, "download_config_storage_internal"

    .line 16
    invoke-static {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->t:I

    const-string v2, "download_config_resume_notify_switch"

    .line 17
    invoke-static {v1, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->u:I

    const-string v2, "download_config_resume_notify_time"

    .line 18
    invoke-static {v1, v2, v12}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->v:I

    const/4 v2, 0x2

    const-string v3, "download_config_resume_notify_count"

    .line 19
    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->w:I

    const-string v2, "pos_cache_time"

    .line 20
    invoke-static {v1, v2, v13}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->N:I

    const-string v2, "vbtt"

    .line 21
    invoke-static {v1, v2, v12}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->O:I

    const/16 v2, 0xe10

    const-string v3, "fetch_template"

    .line 22
    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->P:I

    const-string v2, "template_ids"

    const/4 v3, 0x0

    .line 23
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->e:Ljava/lang/String;

    const-string v2, "ab_test_version"

    .line 24
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->x:Ljava/lang/String;

    const-string v2, "ab_test_param"

    .line 25
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->y:Ljava/lang/String;

    const-string v2, "web_info_wifi_enable"

    .line 26
    invoke-static {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->z:I

    const-string v2, "web_info_page_count"

    .line 27
    invoke-static {v1, v2, v12}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->A:I

    const-string v2, "pyload_h5"

    .line 28
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->B:Ljava/lang/String;

    const-string v2, "playableLoadH5Url"

    .line 29
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->C:Ljava/lang/String;

    const-string v2, "splash_load_type"

    .line 30
    invoke-static {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    const-string v2, "splash_check_type"

    .line 31
    invoke-static {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    const-string v2, "if_both_open"

    .line 32
    invoke-static {v1, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->J:I

    const-string v2, "support_tnc"

    .line 33
    invoke-static {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->K:I

    const-string v2, "tpl_infos"

    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->c:Ljava/lang/String;

    const-string v2, "app_list_control"

    .line 35
    invoke-static {v1, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->F:I

    const-wide/16 v2, 0x0

    const-string v4, "hit_app_list_time"

    .line 36
    invoke-static {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->G:J

    .line 37
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const-string v2, "hit_app_list_data"

    const/4 v3, 0x0

    .line 38
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 41
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const-string v2, "scheme_list_data"

    const/4 v3, 0x0

    .line 43
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 44
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "push_config"

    const/4 v3, 0x0

    .line 47
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/i/l;->t(Ljava/lang/String;)V

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->M()V

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->N()V

    const-string v2, "ad_slot_conf"

    .line 51
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 53
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 55
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_2
    if-ge v14, v1, :cond_3

    .line 56
    invoke-virtual {v2, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 57
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 58
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->a:Ljava/util/Map;

    iget-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/i/a;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 59
    :catch_0
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c()V

    return-void

    .line 60
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->O()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v11, v10}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->h:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v9, v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->L:J

    .line 63
    invoke-virtual {v1, v6, v5}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->M:I

    .line 64
    invoke-virtual {v1, v4, v15}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->i:I

    .line 65
    invoke-virtual {v1, v3, v14}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->j:I

    .line 66
    invoke-virtual {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->k:I

    const-string v2, "download_config_hook_oppo_arg1"

    const-string v3, "com.oppo.market"

    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->l:Ljava/lang/String;

    const-string v2, "download_config_hook_oppo_arg4"

    .line 68
    invoke-virtual {v1, v2, v14}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->m:I

    const-string v2, "download_config_hook_huawei_arg1"

    const-string v3, "com.huawei.appmarket"

    .line 69
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->n:Ljava/lang/String;

    const-string v2, "download_config_dl_network"

    .line 70
    invoke-virtual {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->o:I

    const-string v2, "download_config_dl_size"

    .line 71
    invoke-virtual {v1, v2, v13}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->p:I

    const-string v2, "download_config_enable_install_again"

    .line 72
    invoke-virtual {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->q:I

    const-string v2, "download_config_install_again_time"

    .line 73
    invoke-virtual {v1, v2, v13}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->r:I

    const/16 v2, 0xa

    const-string v3, "download_config_install_again_time_next"

    .line 74
    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->s:I

    const-string v2, "download_config_storage_internal"

    .line 75
    invoke-virtual {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->t:I

    const-string v2, "download_config_resume_notify_switch"

    .line 76
    invoke-virtual {v1, v2, v14}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->u:I

    const/4 v2, 0x2

    const-string v3, "download_config_resume_notify_count"

    .line 77
    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->w:I

    const-string v2, "download_config_resume_notify_time"

    .line 78
    invoke-virtual {v1, v2, v12}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->v:I

    const-string v2, "pos_cache_time"

    .line 79
    invoke-virtual {v1, v2, v13}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->N:I

    const/16 v2, 0xe10

    const-string v3, "fetch_template"

    .line 80
    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->P:I

    const-string v2, "ab_test_version"

    .line 81
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->x:Ljava/lang/String;

    const-string v2, "ab_test_param"

    .line 82
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->y:Ljava/lang/String;

    const-string v2, "vbtt"

    .line 83
    invoke-virtual {v1, v2, v12}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->O:I

    const-string v2, "template_ids"

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->e:Ljava/lang/String;

    const-string v2, "web_info_wifi_enable"

    .line 85
    invoke-virtual {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->z:I

    const-string v2, "web_info_page_count"

    .line 86
    invoke-virtual {v1, v2, v12}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->A:I

    const-string v2, "pyload_h5"

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->B:Ljava/lang/String;

    const-string v2, "playableLoadH5Url"

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->C:Ljava/lang/String;

    const-string v2, "splash_load_type"

    .line 89
    invoke-virtual {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    const-string v2, "splash_check_type"

    .line 90
    invoke-virtual {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    const-string v2, "if_both_open"

    .line 91
    invoke-virtual {v1, v2, v14}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->J:I

    const-string v2, "support_tnc"

    .line 92
    invoke-virtual {v1, v2, v15}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->K:I

    const-string v2, "tpl_infos"

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->c:Ljava/lang/String;

    const-string v2, "app_list_control"

    .line 94
    invoke-virtual {v1, v2, v14}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->F:I

    const-wide/16 v2, 0x0

    const-string v4, "hit_app_list_time"

    .line 95
    invoke-virtual {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->G:J

    .line 96
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const-string v2, "hit_app_list_data"

    const/4 v3, 0x0

    .line 97
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 98
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 99
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 101
    :cond_5
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const-string v2, "scheme_list_data"

    const/4 v3, 0x0

    .line 102
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 103
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 104
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const-string v2, "push_config"

    const/4 v3, 0x0

    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/i/l;->t(Ljava/lang/String;)V

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->M()V

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->N()V

    const-string v2, "ad_slot_conf"

    .line 110
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 112
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 114
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_5
    if-ge v14, v1, :cond_8

    .line 115
    invoke-virtual {v2, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 116
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 117
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/i/l;->a:Ljava/util/Map;

    iget-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/i/a;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 118
    :catch_1
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "xpath"

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->h:Ljava/lang/String;

    const/16 v0, 0x1e

    const-string v1, "pos_cache_time"

    .line 120
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->N:I

    const-string v1, "feq_policy"

    .line 121
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "duration"

    .line 122
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->L:J

    const-string v2, "max"

    .line 123
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->M:I

    :cond_0
    const/4 v1, 0x5

    const-string v2, "vbtt"

    .line 124
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->O:I

    const/16 v2, 0xe10

    const-string v3, "fetch_tpl_interval"

    .line 125
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->P:I

    .line 126
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->c()V

    const-string v2, "abtest"

    .line 127
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "version"

    .line 128
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->x:Ljava/lang/String;

    const-string v4, "param"

    .line 129
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->y:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_1
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->y:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->x:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    const-string v4, "ab_test_param"

    const-string v5, "ab_test_version"

    if-eqz v2, :cond_2

    const-string v2, "tt_sdk_settings"

    .line 132
    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->O()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v2

    .line 135
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;)V

    :goto_0
    const-string v2, "web_info"

    .line 137
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    const-string v5, "web_info_wifi_enable"

    .line 138
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->z:I

    const-string v5, "web_info_page_count"

    .line 139
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->A:I

    :cond_3
    const-string v2, "pyload_h5"

    .line 140
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->B:Ljava/lang/String;

    const-string v2, "pure_pyload_h5"

    .line 141
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->C:Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->d(Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting-\u300bmSplashLoadType="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "splashLoad"

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->e(Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting-\u300bmSplashCheckType="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v5, "if_both_open"

    .line 146
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->J:I

    const-string v5, "support_tnc"

    .line 147
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->K:I

    const-string v5, "al"

    .line 148
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->F:I

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->G:J

    .line 150
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    const-string v5, "spam_app_list"

    .line 151
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 152
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_5

    .line 153
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 155
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->H:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 156
    :cond_5
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    const-string v5, "scheme_check_list"

    .line 157
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 158
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_7

    .line 159
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 161
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->I:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    const-string v5, "download_config"

    .line 162
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v6, "is_enable_back_dialog"

    .line 163
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->i:I

    const-string v6, "landing_page_progressbar_visible"

    .line 164
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->j:I

    const-string v6, "hook"

    .line 165
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->k:I

    const-string v6, "hook_oppo_arg1"

    const-string v7, "com.oppo.market"

    .line 166
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->l:Ljava/lang/String;

    const-string v6, "hook_oppo_arg4"

    .line 167
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->m:I

    const-string v6, "hook_huawei_arg1"

    const-string v7, "com.huawei.appmarket"

    .line 168
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->n:Ljava/lang/String;

    const-string v6, "dl_network"

    .line 169
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->o:I

    const-string v6, "dl_size"

    .line 170
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->p:I

    const-string v6, "is_enable_start_install_again"

    .line 171
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->q:I

    const-string v6, "start_install_time"

    .line 172
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->r:I

    const/16 v0, 0xa

    const-string v6, "next_install_min_time"

    .line 173
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->s:I

    const-string v0, "if_storage_internal"

    .line 174
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->t:I

    const-string v0, "if_tips"

    .line 175
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->u:I

    const-string v0, "min_failed_time"

    .line 176
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->v:I

    const/4 v0, 0x2

    const-string v1, "max_failes_count"

    .line 177
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->w:I

    :cond_8
    const-string v0, "tpl_ids"

    .line 178
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->e:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->M()V

    :cond_9
    :try_start_0
    const-string v0, "push_config"

    .line 181
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 182
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_c

    .line 184
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/i/g;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/i/g;-><init>()V

    .line 185
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v8, "action"

    .line 186
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/i/g;->a:Ljava/lang/String;

    const-string v8, "service"

    .line 187
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/i/g;->b:Ljava/lang/String;

    const-string v8, "package"

    .line 188
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/i/g;->c:Ljava/lang/String;

    const-string v8, "wakeup_interval"

    .line 189
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bytedance/sdk/openadsdk/core/i/g;->d:I

    .line 190
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    move-object v1, v3

    .line 191
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i/f;->a()Lcom/bytedance/sdk/openadsdk/core/i/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/f;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v3

    .line 192
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    const-string v0, "ad_slot_conf_list"

    .line 193
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 194
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 196
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    move v5, v2

    :goto_6
    if-ge v5, v4, :cond_e

    .line 197
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 198
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 199
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->a:Ljava/util/Map;

    iget-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/i/a;->a:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    const-string v0, "tpl_infos"

    .line 200
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 201
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->c:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 203
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :goto_7
    if-ge v2, v0, :cond_10

    .line 204
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 205
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/i/l;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/i/m;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 206
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->b:Ljava/util/Map;

    iget-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/i/m;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/i/l;->a(Lcom/bytedance/sdk/openadsdk/core/i/m;)V

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 208
    :cond_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c()V

    .line 209
    invoke-direct {p0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 303
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 304
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .line 305
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 306
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->e:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    :cond_0
    return v2

    .line 307
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 308
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 52
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->J:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 55
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 56
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->o:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 53
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 54
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->h:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(I)I
    .locals 0

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 12
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->b:I

    return p1
.end method

.method public c(Ljava/lang/String;)I
    .locals 0

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 10
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->t:I

    return p1
.end method

.method public c()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->K:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->o:I

    return v0
.end method

.method public d(I)I
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 8
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->j:I

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 6
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->p:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->p:I

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 6
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->q:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x5dc

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->r:I

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->x:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)I
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->l:I

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->y:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->y:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 5
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/p;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 8
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/p;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "md5"

    .line 9
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->L:J

    return-wide v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->y:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->M:I

    return v0
.end method

.method public j(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->i:I

    return p1
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->N:I

    return v0
.end method

.method public k(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->k:I

    return p1
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->P:I

    return v0
.end method

.method public l(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->m:I

    return p1
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->A:I

    return v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->w:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->B:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->x:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x14

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->u:I

    return p1
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->C:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->D:I

    return v0
.end method

.method public p(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->n:I

    return p1
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->E:I

    return v0
.end method

.method public q(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/i/a;->f:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/i/a;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->u(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/i/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->p()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public t()Z
    .locals 2

    .line 12
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public u()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public v()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public w()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->l:Ljava/lang/String;

    return-object v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->m:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/l;->n:Ljava/lang/String;

    return-object v0
.end method
