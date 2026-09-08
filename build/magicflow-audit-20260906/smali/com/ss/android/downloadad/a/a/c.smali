.class public Lcom/ss/android/downloadad/a/a/c;
.super Ljava/lang/Object;
.source "AdDownloadModel.java"

# interfaces
.implements Lc/d/a/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadad/a/a/c$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lc/d/a/a/a/d/b;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lorg/json/JSONObject;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Lc/d/a/a/a/d/f;

.field private v:Z

.field private w:Lc/d/a/b/a/c/x;


# direct methods
.method private constructor <init>(Lcom/ss/android/downloadad/a/a/c$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->d(Lcom/ss/android/downloadad/a/a/c$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->a:J

    .line 4
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->e(Lcom/ss/android/downloadad/a/a/c$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->b:J

    .line 5
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->f(Lcom/ss/android/downloadad/a/a/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->c:Z

    .line 6
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->g(Lcom/ss/android/downloadad/a/a/c$b;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/c;->d:I

    .line 7
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->h(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->i(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->f:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->j(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->k(Lcom/ss/android/downloadad/a/a/c$b;)Lc/d/a/a/a/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->g:Lc/d/a/a/a/d/b;

    .line 11
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->l(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->h:Ljava/util/List;

    .line 12
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->m(Lcom/ss/android/downloadad/a/a/c$b;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->i:Lorg/json/JSONObject;

    .line 13
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->n(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->j:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->o(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/util/List;

    .line 15
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->p(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->q(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->k:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->r(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->l:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->s(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->m:Ljava/util/Map;

    .line 19
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->t(Lcom/ss/android/downloadad/a/a/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->n:Z

    .line 20
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->u(Lcom/ss/android/downloadad/a/a/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->o:Z

    .line 21
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->v(Lcom/ss/android/downloadad/a/a/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->p:Z

    .line 22
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->w(Lcom/ss/android/downloadad/a/a/c$b;)Lorg/json/JSONObject;

    .line 23
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->x(Lcom/ss/android/downloadad/a/a/c$b;)Z

    .line 24
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->y(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->q:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->z(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->A(Lcom/ss/android/downloadad/a/a/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->r:Z

    .line 27
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->B(Lcom/ss/android/downloadad/a/a/c$b;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/c;->s:I

    .line 28
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->C(Lcom/ss/android/downloadad/a/a/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->t:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->a(Lcom/ss/android/downloadad/a/a/c$b;)Lc/d/a/a/a/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->u:Lc/d/a/a/a/d/f;

    .line 30
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->b(Lcom/ss/android/downloadad/a/a/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->v:Z

    .line 31
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$b;->c(Lcom/ss/android/downloadad/a/a/c$b;)Lc/d/a/b/a/c/x;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c;->w:Lc/d/a/b/a/c/x;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadad/a/a/c$b;Lcom/ss/android/downloadad/a/a/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadad/a/a/c;-><init>(Lcom/ss/android/downloadad/a/a/c$b;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v2, Lcom/ss/android/downloadad/a/a/c$b;

    invoke-direct {v2}, Lcom/ss/android/downloadad/a/a/c$b;-><init>()V

    :try_start_0
    const-string v3, "ad_id"

    .line 3
    invoke-static {p0, v3}, Lc/d/a/a/a/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/downloadad/a/a/c$b;->a(J)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v3, "model_type"

    .line 4
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->a(I)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v3, "ext_value"

    .line 5
    invoke-static {p0, v3}, Lc/d/a/a/a/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/downloadad/a/a/c$b;->b(J)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v3, "log_extra"

    .line 6
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v3, "package_name"

    .line 7
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v3, "download_url"

    .line 8
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v3, "app_name"

    .line 9
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v3, "app_icon"

    .line 10
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    new-instance v3, Lc/d/a/a/a/d/b;

    const-string v4, "open_url"

    .line 11
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v0}, Lc/d/a/a/a/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->a(Lc/d/a/a/a/d/b;)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v0, "mime_type"

    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ss/android/downloadad/a/a/c$b;->g(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v0, "show_toast"

    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Lcom/ss/android/downloadad/a/a/c$b;->b(Z)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v0, "show_notification"

    .line 14
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Lcom/ss/android/downloadad/a/a/c$b;->c(Z)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v0, "need_wifi"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->d(Z)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v0, "download_settings"

    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ss/android/downloadad/a/a/c$b;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v0, "notification_jump_url"

    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ss/android/downloadad/a/a/c$b;->e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    const-string v0, "extra"

    .line 18
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ss/android/downloadad/a/a/c$b;->a(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 19
    invoke-static {p0, v2}, Lcom/ss/android/downloadad/a/a/c;->a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/a/c$b;)V

    .line 20
    invoke-static {p0, v2}, Lcom/ss/android/downloadad/a/a/c;->b(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/a/c$b;)V

    .line 21
    invoke-static {p0, v2}, Lcom/ss/android/downloadad/a/a/c;->c(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/a/c$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/a/c$b;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private static a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/a/c$b;)V
    .locals 3

    const-string v0, "click_track_url"

    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/a/a/c$b;->a(Ljava/util/List;)Lcom/ss/android/downloadad/a/a/c$b;

    :cond_1
    return-void
.end method

.method private static b(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/a/c$b;)V
    .locals 5

    const-string v0, "header_keys"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "header_values"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Lcom/ss/android/downloadad/a/a/c$b;->a(Ljava/util/Map;)Lcom/ss/android/downloadad/a/a/c$b;

    :cond_1
    return-void
.end method

.method private static c(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/a/c$b;)V
    .locals 3

    const-string v0, "backup_urls"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/a/a/c$b;->b(Ljava/util/List;)Lcom/ss/android/downloadad/a/a/c$b;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/a/c;->b:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->a:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->b:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->m:Ljava/util/Map;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->n:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->o:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->p:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->r:Z

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/a/a/c;->s:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->c:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lc/d/a/a/a/d/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->g:Lc/d/a/a/a/d/b;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->h:Ljava/util/List;

    return-object v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/a/a/c;->d:I

    return v0
.end method

.method public u()Lc/d/a/a/a/d/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->u:Lc/d/a/a/a/d/f;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->v:Z

    return v0
.end method

.method public w()Lc/d/a/b/a/c/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->w:Lc/d/a/b/a/c/x;

    return-object v0
.end method
