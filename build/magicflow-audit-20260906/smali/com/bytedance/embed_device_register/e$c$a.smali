.class Lcom/bytedance/embed_device_register/e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embed_device_register/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:J

.field private e:J

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->f:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/embed_device_register/e$c$a;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->f:Ljava/util/List;

    .line 5
    iget-object v0, p1, Lcom/bytedance/embed_device_register/e$c$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->a:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/bytedance/embed_device_register/e$c$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->b:Ljava/lang/String;

    .line 7
    iget-boolean v0, p1, Lcom/bytedance/embed_device_register/e$c$a;->c:Z

    iput-boolean v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->c:Z

    .line 8
    iget-wide v0, p1, Lcom/bytedance/embed_device_register/e$c$a;->d:J

    iput-wide v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->d:J

    .line 9
    iget-wide v0, p1, Lcom/bytedance/embed_device_register/e$c$a;->e:J

    iput-wide v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->e:J

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lcom/bytedance/embed_device_register/e$c$a;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->f:Ljava/util/List;

    .line 11
    iget v0, p1, Lcom/bytedance/embed_device_register/e$c$a;->g:I

    iput v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->g:I

    .line 12
    iget-wide v0, p1, Lcom/bytedance/embed_device_register/e$c$a;->h:J

    iput-wide v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->h:J

    return-void
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/e$c$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/embed_device_register/e$c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static d(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 10

    .line 1
    new-instance v0, Lcom/bytedance/embed_device_register/e$c$a;

    invoke-direct {v0}, Lcom/bytedance/embed_device_register/e$c$a;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "id"

    .line 4
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "is_track_limited"

    .line 5
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "take_ms"

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "time"

    .line 7
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "req_id"

    .line 8
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "query_times"

    .line 9
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "hw_id_version_code"

    .line 10
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v7, Lcom/bytedance/embed_device_register/e$c$a;

    invoke-direct {v7}, Lcom/bytedance/embed_device_register/e$c$a;-><init>()V

    .line 12
    invoke-virtual {v7, p0}, Lcom/bytedance/embed_device_register/e$c$a;->a(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$c$a;

    .line 13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/embed_device_register/e$c$a;->a(Z)Lcom/bytedance/embed_device_register/e$c$a;

    const-wide/16 v8, -0x1

    .line 14
    invoke-static {v3, v8, v9}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/bytedance/embed_device_register/e$c$a;->a(J)Lcom/bytedance/embed_device_register/e$c$a;

    .line 15
    invoke-static {v4, v8, v9}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/bytedance/embed_device_register/e$c$a;->b(J)Lcom/bytedance/embed_device_register/e$c$a;

    .line 16
    invoke-virtual {v7, v5}, Lcom/bytedance/embed_device_register/e$c$a;->b(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$c$a;

    const/4 p0, -0x1

    .line 17
    invoke-static {v6, p0}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/embed_device_register/e$c$a;->a(I)Lcom/bytedance/embed_device_register/e$c$a;

    .line 18
    invoke-static {v1, v8, v9}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/bytedance/embed_device_register/e$c$a;->c(J)Lcom/bytedance/embed_device_register/e$c$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method a(I)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 0

    .line 5
    iput p1, p0, Lcom/bytedance/embed_device_register/e$c$a;->g:I

    return-object p0
.end method

.method a(J)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/bytedance/embed_device_register/e$c$a;->d:J

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method a(Z)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/embed_device_register/e$c$a;->c:Z

    return-object p0
.end method

.method a()Lcom/bytedance/embed_device_register/e$c;
    .locals 13

    .line 6
    new-instance v12, Lcom/bytedance/embed_device_register/e$c;

    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$c$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/bytedance/embed_device_register/e$c$a;->c:Z

    iget-wide v4, p0, Lcom/bytedance/embed_device_register/e$c$a;->d:J

    iget-wide v6, p0, Lcom/bytedance/embed_device_register/e$c$a;->e:J

    iget-object v8, p0, Lcom/bytedance/embed_device_register/e$c$a;->f:Ljava/util/List;

    iget v9, p0, Lcom/bytedance/embed_device_register/e$c$a;->g:I

    iget-wide v10, p0, Lcom/bytedance/embed_device_register/e$c$a;->h:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/embed_device_register/e$c;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJLjava/util/List;IJ)V

    return-object v12
.end method

.method b(J)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/embed_device_register/e$c$a;->e:J

    return-object p0
.end method

.method b(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method b()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method c(J)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/embed_device_register/e$c$a;->h:J

    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$c$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
