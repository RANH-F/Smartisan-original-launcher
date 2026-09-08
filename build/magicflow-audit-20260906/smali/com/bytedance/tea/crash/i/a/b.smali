.class public Lcom/bytedance/tea/crash/i/a/b;
.super Ljava/lang/Object;
.source "ActivityDataManager.java"


# instance fields
.field private a:Landroid/app/Application;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/String;

.field private p:J

.field private q:I

.field private final r:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/i/a/b;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/i/a/b;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/i/a/b;->e:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/i/a/b;->f:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/bytedance/tea/crash/i/a/b$a;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/i/a/b$a;-><init>(Lcom/bytedance/tea/crash/i/a/b;)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/i/a/b;->r:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 7
    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/b;->b:Landroid/content/Context;

    .line 8
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/b;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/b;->a:Landroid/app/Application;

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/tea/crash/i/a/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/i/a/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/tea/crash/i/a/b;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/i/a/b;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/tea/crash/i/a/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/i/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/b;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 2

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "time"

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/tea/crash/i/a/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/tea/crash/i/a/b;->j:J

    return-wide p1
.end method

.method static synthetic b(Lcom/bytedance/tea/crash/i/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/b;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/tea/crash/i/a/b;)Ljava/util/List;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/bytedance/tea/crash/i/a/b;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/tea/crash/i/a/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/tea/crash/i/a/b;->h:J

    return-wide v0
.end method

.method static synthetic c(Lcom/bytedance/tea/crash/i/a/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/tea/crash/i/a/b;->l:J

    return-wide p1
.end method

.method static synthetic c(Lcom/bytedance/tea/crash/i/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/b;->k:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/b;->a:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/b;->r:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/bytedance/tea/crash/i/a/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/tea/crash/i/a/b;->n:J

    return-wide p1
.end method

.method static synthetic d(Lcom/bytedance/tea/crash/i/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/b;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/bytedance/tea/crash/i/a/b;)Ljava/util/List;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/bytedance/tea/crash/i/a/b;->d:Ljava/util/List;

    return-object p0
.end method

.method private d()Lorg/json/JSONArray;
    .locals 5

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/b;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/b;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/bytedance/tea/crash/i/a/b;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 9
    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/i/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/tea/crash/i/a/b;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/tea/crash/i/a/b;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/tea/crash/i/a/b;->q:I

    return v0
.end method

.method static synthetic e(Lcom/bytedance/tea/crash/i/a/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/tea/crash/i/a/b;->p:J

    return-wide p1
.end method

.method static synthetic e(Lcom/bytedance/tea/crash/i/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/b;->o:Ljava/lang/String;

    return-object p1
.end method

.method private e()Lorg/json/JSONArray;
    .locals 5

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/b;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/b;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/bytedance/tea/crash/i/a/b;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 9
    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/i/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/tea/crash/i/a/b;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/tea/crash/i/a/b;->q:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bytedance/tea/crash/i/a/b;->q:I

    return v0
.end method

.method static synthetic g(Lcom/bytedance/tea/crash/i/a/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/tea/crash/i/a/b;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/tea/crash/i/a/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/tea/crash/i/a/b;->f:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 5

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "last_create_activity"

    .line 9
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/b;->g:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/i/a/b;->h:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/i/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_start_activity"

    .line 10
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/b;->i:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/i/a/b;->j:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/i/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_resume_activity"

    .line 11
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/b;->k:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/i/a/b;->l:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/i/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_pause_activity"

    .line 12
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/b;->m:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/i/a/b;->n:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/i/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_stop_activity"

    .line 13
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/b;->o:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/i/a/b;->p:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/i/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "alive_activities"

    .line 14
    invoke-direct {p0}, Lcom/bytedance/tea/crash/i/a/b;->d()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "finish_activities"

    .line 15
    invoke-direct {p0}, Lcom/bytedance/tea/crash/i/a/b;->e()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public b()Lorg/json/JSONArray;
    .locals 6

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/b;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x5

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_2

    .line 8
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 10
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "package_name"

    .line 11
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "description"

    .line 12
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "number_of_activities"

    .line 13
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "number_of_running_activities"

    .line 14
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "topActivity"

    .line 15
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "baseActivity"

    .line 16
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_4
    return-object v0
.end method
