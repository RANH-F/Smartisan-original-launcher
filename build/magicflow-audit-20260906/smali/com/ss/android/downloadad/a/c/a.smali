.class public Lcom/ss/android/downloadad/a/c/a;
.super Ljava/lang/Object;
.source "NativeDownloadModel.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:J

.field private j:Lorg/json/JSONObject;

.field private k:J

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ss/android/downloadad/a/c/a;->d:I

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/c/a;->h:Z

    return-void
.end method

.method public constructor <init>(Lc/d/a/a/a/c/d;ZJ)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/ss/android/downloadad/a/c/a;->d:I

    .line 6
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/c/a;->h:Z

    .line 7
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/c/a;->a:J

    .line 8
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/c/a;->b:J

    .line 9
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/c/a;->c:Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/c/a;->e:Ljava/lang/String;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/c/a;->i:J

    .line 12
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/c/a;->j:Lorg/json/JSONObject;

    .line 13
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/c/a;->h:Z

    .line 14
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->l()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/c/a;->f:I

    .line 15
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadad/a/c/a;->g:Ljava/lang/String;

    .line 16
    iput-wide p3, p0, Lcom/ss/android/downloadad/a/c/a;->k:J

    .line 17
    iput-boolean p2, p0, Lcom/ss/android/downloadad/a/c/a;->l:Z

    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/a/c/a;)Lorg/json/JSONObject;
    .locals 1

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/c/a;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v1, Lcom/ss/android/downloadad/a/c/a;

    invoke-direct {v1}, Lcom/ss/android/downloadad/a/c/a;-><init>()V

    :try_start_0
    const-string v2, "mId"

    .line 7
    invoke-static {p0, v2}, Lc/d/a/a/a/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/c/a;->a(J)V

    const-string v2, "mExtValue"

    .line 8
    invoke-static {p0, v2}, Lc/d/a/a/a/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/c/a;->b(J)V

    const-string v2, "mLogExtra"

    .line 9
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/c/a;->b(Ljava/lang/String;)V

    const-string v2, "mDownloadStatus"

    .line 10
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/c/a;->a(I)V

    const-string v2, "mPackageName"

    .line 11
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/c/a;->a(Ljava/lang/String;)V

    const-string v2, "mIsAd"

    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/c/a;->a(Z)V

    const-string v2, "mTimeStamp"

    .line 13
    invoke-static {p0, v2}, Lc/d/a/a/a/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/c/a;->c(J)V

    const-string v2, "mVersionCode"

    .line 14
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/c/a;->b(I)V

    const-string v2, "mVersionName"

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/c/a;->c(Ljava/lang/String;)V

    const-string v2, "mDownloadId"

    .line 16
    invoke-static {p0, v2}, Lc/d/a/a/a/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/c/a;->d(J)V

    const-string v2, "mIsV3Event"

    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/c/a;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "mExtras"

    .line 18
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ss/android/downloadad/a/c/a;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/a/c/a;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/c/a;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/ss/android/downloadad/a/c/a;->d:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/c/a;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ss/android/downloadad/a/c/a;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ss/android/downloadad/a/c/a;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/c/a;->h:Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/c/a;->b:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/ss/android/downloadad/a/c/a;->f:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/c/a;->b:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadad/a/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/c/a;->l:Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/a/c/a;->d:I

    return v0
.end method

.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/c/a;->i:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadad/a/c/a;->g:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/c/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/c/a;->k:J

    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/c/a;->i:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/c/a;->h:Z

    return v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/c/a;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/a/c/a;->f:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/a/c/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/c/a;->k:J

    return-wide v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/c/a;->l:Z

    return v0
.end method

.method public m()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mId"

    .line 2
    iget-wide v2, p0, Lcom/ss/android/downloadad/a/c/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mExtValue"

    .line 3
    iget-wide v2, p0, Lcom/ss/android/downloadad/a/c/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mLogExtra"

    .line 4
    iget-object v2, p0, Lcom/ss/android/downloadad/a/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadStatus"

    .line 5
    iget v2, p0, Lcom/ss/android/downloadad/a/c/a;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mPackageName"

    .line 6
    iget-object v2, p0, Lcom/ss/android/downloadad/a/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mIsAd"

    .line 7
    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/c/a;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mTimeStamp"

    .line 8
    iget-wide v2, p0, Lcom/ss/android/downloadad/a/c/a;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mExtras"

    .line 9
    iget-object v2, p0, Lcom/ss/android/downloadad/a/c/a;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mVersionCode"

    .line 10
    iget v2, p0, Lcom/ss/android/downloadad/a/c/a;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mVersionName"

    .line 11
    iget-object v2, p0, Lcom/ss/android/downloadad/a/c/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadId"

    .line 12
    iget-wide v2, p0, Lcom/ss/android/downloadad/a/c/a;->k:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mIsV3Event"

    .line 13
    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/c/a;->l:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method
