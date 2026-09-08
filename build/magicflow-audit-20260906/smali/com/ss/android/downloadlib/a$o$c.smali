.class Lcom/ss/android/downloadlib/a$o$c;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/a$o$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a$o;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ss/android/downloadlib/a$o;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a$o;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/a$o$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lc/d/a/b/a/f/c;Lorg/json/JSONObject;)V
    .locals 4

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$o;->c(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/d;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {v0, p2}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "is_using_new"

    if-eqz p1, :cond_1

    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a$o;->c(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/d;

    move-result-object v1

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "total_bytes"

    .line 24
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "chunk_count"

    .line 25
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->K()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download_url"

    .line 26
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_name"

    .line 27
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->s0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_quality"

    .line 28
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 30
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/f/c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$o;->b(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$o;->b(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a$o$c;->a(Lc/d/a/b/a/f/c;Lorg/json/JSONObject;)V

    .line 4
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$o;->b(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/c;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/c/c;->e()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a$o;->b(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/c;

    move-result-object v1

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->m()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lc/d/a/a/a/d/d$a;

    invoke-direct {v2}, Lc/d/a/a/a/d/d$a;-><init>()V

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$o;->b(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/c;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->b(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "click_start"

    :goto_1
    invoke-virtual {v2, v1}, Lc/d/a/a/a/d/d$a;->c(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    .line 9
    invoke-static {p1}, Lcom/ss/android/downloadlib/a$o;->c(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/d;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/c/d;->n()Z

    move-result p1

    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->b(Z)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    .line 10
    invoke-static {p1}, Lcom/ss/android/downloadlib/a$o;->c(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/d;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lc/d/a/a/a/d/d$a;->a(J)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    .line 11
    invoke-static {p1}, Lcom/ss/android/downloadlib/a$o;->c(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/d;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->d(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    .line 12
    invoke-static {p1}, Lcom/ss/android/downloadlib/a$o;->c(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/d;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lc/d/a/a/a/d/d$a;->b(J)Lc/d/a/a/a/d/d$a;

    .line 13
    invoke-virtual {v2, v0}, Lc/d/a/a/a/d/d$a;->a(Lorg/json/JSONObject;)Lc/d/a/a/a/d/d$a;

    const/4 p1, 0x1

    .line 14
    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->a(I)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    .line 15
    invoke-static {p1}, Lcom/ss/android/downloadlib/a$o;->b(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o$c;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$o;->b(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/c;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->a(Ljava/lang/Object;)Lc/d/a/a/a/d/d$a;

    iget-boolean p1, p0, Lcom/ss/android/downloadlib/a$o$c;->a:Z

    .line 16
    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->a(Z)Lc/d/a/a/a/d/d$a;

    .line 17
    invoke-virtual {v2}, Lc/d/a/a/a/d/d$a;->a()Lc/d/a/a/a/d/d;

    move-result-object p1

    .line 18
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a$o$c;->a:Z

    if-eqz v0, :cond_3

    .line 19
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/d/a/a/a/a/d;->a(Lc/d/a/a/a/d/d;)V

    goto :goto_3

    .line 20
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/d/a/a/a/a/d;->b(Lc/d/a/a/a/d/d;)V

    :cond_4
    :goto_3
    return-void
.end method
