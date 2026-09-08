.class public Lc/d/a/a/a/d/d$a;
.super Ljava/lang/Object;
.source "DownloadEventModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lorg/json/JSONObject;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/d/a/a/a/d/d$a;->d:Z

    .line 3
    iput-boolean v0, p0, Lc/d/a/a/a/d/d$a;->m:Z

    return-void
.end method

.method static synthetic a(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/a/d/d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/a/d/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/a/d/d$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lc/d/a/a/a/d/d$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/a/a/d/d$a;->d:Z

    return p0
.end method

.method static synthetic e(Lc/d/a/a/a/d/d$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/a/a/d/d$a;->e:J

    return-wide v0
.end method

.method static synthetic f(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/a/d/d$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lc/d/a/a/a/d/d$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/a/a/d/d$a;->g:J

    return-wide v0
.end method

.method static synthetic h(Lc/d/a/a/a/d/d$a;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic i(Lc/d/a/a/a/d/d$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/a/d/d$a;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lc/d/a/a/a/d/d$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/d/a/a/a/d/d$a;->k:I

    return p0
.end method

.method static synthetic k(Lc/d/a/a/a/d/d$a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/a/d/d$a;->l:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic l(Lc/d/a/a/a/d/d$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/a/a/d/d$a;->m:Z

    return p0
.end method

.method static synthetic m(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/a/d/d$a;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lc/d/a/a/a/d/d$a;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/a/d/d$a;->o:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public a(I)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 7
    iput p1, p0, Lc/d/a/a/a/d/d$a;->k:I

    return-object p0
.end method

.method public a(J)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lc/d/a/a/a/d/d$a;->e:J

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 8
    iput-object p1, p0, Lc/d/a/a/a/d/d$a;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lc/d/a/a/a/d/d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lc/d/a/a/a/d/d$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lc/d/a/a/a/d/d$a;"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lc/d/a/a/a/d/d$a;->j:Ljava/util/List;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a(Z)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/a/a/d/d$a;->m:Z

    return-object p0
.end method

.method public a()Lc/d/a/a/a/d/d;
    .locals 6

    const-string v0, "log_extra"

    .line 9
    iget-object v1, p0, Lc/d/a/a/a/d/d$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "umeng"

    .line 10
    iput-object v1, p0, Lc/d/a/a/a/d/d$a;->a:Ljava/lang/String;

    .line 11
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    .line 14
    :cond_1
    :try_start_0
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->i:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 16
    iget-object v4, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 17
    iget-object v4, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 18
    :cond_3
    iget-boolean v2, p0, Lc/d/a/a/a/d/d$a;->m:Z

    if-eqz v2, :cond_5

    .line 19
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->c:Ljava/lang/String;

    iput-object v2, p0, Lc/d/a/a/a/d/d$a;->n:Ljava/lang/String;

    .line 20
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lc/d/a/a/a/d/d$a;->o:Lorg/json/JSONObject;

    .line 21
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 22
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 24
    iget-object v4, p0, Lc/d/a/a/a/d/d$a;->o:Lorg/json/JSONObject;

    iget-object v5, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 25
    :cond_4
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->o:Lorg/json/JSONObject;

    const-string v3, "category"

    iget-object v4, p0, Lc/d/a/a/a/d/d$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->o:Lorg/json/JSONObject;

    const-string v3, "tag"

    iget-object v4, p0, Lc/d/a/a/a/d/d$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->o:Lorg/json/JSONObject;

    const-string v3, "value"

    iget-wide v4, p0, Lc/d/a/a/a/d/d$a;->e:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->o:Lorg/json/JSONObject;

    const-string v3, "ext_value"

    iget-wide v4, p0, Lc/d/a/a/a/d/d$a;->g:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    :cond_5
    iget-boolean v2, p0, Lc/d/a/a/a/d/d$a;->d:Z

    if-eqz v2, :cond_7

    const-string v2, "ad_extra_data"

    .line 30
    iget-object v3, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 32
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v0, "is_ad_event"

    const-string v2, "1"

    .line 33
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_7
    const-string v0, "extra"

    .line 34
    iget-object v2, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :goto_2
    iput-object v1, p0, Lc/d/a/a/a/d/d$a;->h:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    new-instance v0, Lc/d/a/a/a/d/d;

    invoke-direct {v0, p0}, Lc/d/a/a/a/d/d;-><init>(Lc/d/a/a/a/d/d$a;)V

    return-object v0
.end method

.method public b(J)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 3
    iput-wide p1, p0, Lc/d/a/a/a/d/d$a;->g:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/d/a/a/a/d/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lc/d/a/a/a/d/d$a;->d:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/d/a/a/a/d/d$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/d/a/a/a/d/d$a;->f:Ljava/lang/String;

    return-object p0
.end method
