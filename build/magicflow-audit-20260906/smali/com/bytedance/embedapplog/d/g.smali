.class public Lcom/bytedance/embedapplog/d/g;
.super Lcom/bytedance/embedapplog/d/a;
.source "SourceFile"


# instance fields
.field public i:[B

.field j:I

.field public k:I

.field private l:Lorg/json/JSONArray;

.field private m:Lorg/json/JSONArray;

.field private n:Lcom/bytedance/embedapplog/d/f;

.field private o:Lorg/json/JSONArray;

.field private p:Lcom/bytedance/embedapplog/d/j;

.field private q:Lorg/json/JSONObject;

.field private r:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/embedapplog/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/d/a;
    .locals 2

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/a;->a:J

    const/4 v0, 0x1

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/g;->i:[B

    const/4 v0, 0x2

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/embedapplog/d/g;->j:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/g;->q:Lorg/json/JSONObject;

    .line 14
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/g;->n:Lcom/bytedance/embedapplog/d/f;

    .line 15
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/g;->p:Lcom/bytedance/embedapplog/d/j;

    .line 16
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/g;->o:Lorg/json/JSONArray;

    .line 17
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    .line 18
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/g;->m:Lorg/json/JSONArray;

    .line 19
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/g;->r:Lorg/json/JSONArray;

    return-object p0
.end method

.method a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/embedapplog/d/a;->a:J

    .line 2
    iput-object p3, p0, Lcom/bytedance/embedapplog/d/g;->q:Lorg/json/JSONObject;

    .line 3
    iput-object p4, p0, Lcom/bytedance/embedapplog/d/g;->n:Lcom/bytedance/embedapplog/d/f;

    .line 4
    iput-object p5, p0, Lcom/bytedance/embedapplog/d/g;->p:Lcom/bytedance/embedapplog/d/j;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/g;->o:Lorg/json/JSONArray;

    .line 6
    iput-object p7, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    .line 7
    iput-object p8, p0, Lcom/bytedance/embedapplog/d/g;->m:Lorg/json/JSONArray;

    .line 8
    iput-object p9, p0, Lcom/bytedance/embedapplog/d/g;->r:Lorg/json/JSONArray;

    return-void
.end method

.method protected a(Landroid/content/ContentValues;)V
    .locals 2

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/AppLog;->toEncryptByte(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "_data"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 23
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected a()[Ljava/lang/String;
    .locals 8

    const-string v0, "local_time_ms"

    const-string v1, "integer"

    const-string v2, "_data"

    const-string v3, "blob"

    const-string v4, "_fail"

    const-string v5, "integer"

    const-string v6, "_full"

    const-string v7, "integer"

    .line 9
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/embedapplog/d/a;
    .locals 0

    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method protected b()Lorg/json/JSONObject;
    .locals 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "magic_tag"

    const-string v2, "ss_app_log"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->q:Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    sget-object v1, Lcom/bytedance/embedapplog/c/a;->b:Lorg/json/JSONObject;

    const-string v2, "time_sync"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->n:Lcom/bytedance/embedapplog/d/f;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->n:Lcom/bytedance/embedapplog/d/f;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "launch"

    .line 8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->p:Lcom/bytedance/embedapplog/d/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v1

    .line 11
    iget-object v3, p0, Lcom/bytedance/embedapplog/d/g;->o:Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    .line 12
    :goto_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_2

    .line 13
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 14
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/bytedance/embedapplog/d/g;->o:Lorg/json/JSONArray;

    .line 15
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "params"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "page_key"

    const-string v9, ""

    .line 16
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v8, "duration"

    .line 17
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit16 v7, v7, 0x3e7

    div-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 18
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    const-string v3, "activites"

    .line 19
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 21
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "terminate"

    .line 22
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-lez v1, :cond_6

    .line 24
    iget-object v3, p0, Lcom/bytedance/embedapplog/d/g;->l:Lorg/json/JSONArray;

    const-string v4, "event"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    :cond_6
    iget-object v3, p0, Lcom/bytedance/embedapplog/d/g;->o:Lorg/json/JSONArray;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_3

    :cond_7
    move v3, v2

    .line 26
    :goto_3
    iget-object v4, p0, Lcom/bytedance/embedapplog/d/g;->m:Lorg/json/JSONArray;

    if-nez v4, :cond_8

    .line 27
    iget-object v4, p0, Lcom/bytedance/embedapplog/d/g;->o:Lorg/json/JSONArray;

    iput-object v4, p0, Lcom/bytedance/embedapplog/d/g;->m:Lorg/json/JSONArray;

    goto :goto_5

    :cond_8
    if-lez v3, :cond_9

    move v4, v2

    :goto_4
    if-ge v4, v3, :cond_9

    .line 28
    iget-object v5, p0, Lcom/bytedance/embedapplog/d/g;->m:Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/bytedance/embedapplog/d/g;->o:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 29
    :cond_9
    :goto_5
    iget-object v4, p0, Lcom/bytedance/embedapplog/d/g;->m:Lorg/json/JSONArray;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_6

    :cond_a
    move v4, v2

    :goto_6
    if-lez v4, :cond_b

    .line 30
    iget-object v5, p0, Lcom/bytedance/embedapplog/d/g;->m:Lorg/json/JSONArray;

    const-string v6, "event_v3"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_b
    iget-object v5, p0, Lcom/bytedance/embedapplog/d/g;->r:Lorg/json/JSONArray;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    :cond_c
    if-lez v2, :cond_d

    .line 32
    iget-object v5, p0, Lcom/bytedance/embedapplog/d/g;->r:Lorg/json/JSONArray;

    const-string v6, "log_data"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wP {"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v6, p0, Lcom/bytedance/embedapplog/d/g;->n:Lcom/bytedance/embedapplog/d/f;

    if-eqz v6, :cond_e

    goto :goto_7

    :cond_e
    const-string v6, "la"

    :goto_7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/bytedance/embedapplog/d/g;->p:Lcom/bytedance/embedapplog/d/j;

    if-eqz v6, :cond_f

    goto :goto_8

    :cond_f
    const-string v6, "te"

    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", p: "

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", v1: "

    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", v3: "

    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", m: "

    .line 39
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    const-string v0, "pack"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/g;->i:[B

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->i:[B

    array-length v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/util/TTEncryptUtils;->b([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/embedapplog/d/g;->i:[B

    .line 3
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/bytedance/embedapplog/d/g;->i:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/g;->i:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    .line 5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :goto_1
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 10
    :catch_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v3, v0

    :goto_2
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v3, v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    .line 11
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_2

    .line 12
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_2
    if-eqz v3, :cond_3

    .line 13
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_3
    return-object v0

    :catchall_3
    move-exception v1

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_4

    .line 14
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_4
    if-eqz v3, :cond_5

    .line 15
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 16
    :catch_8
    :cond_5
    throw v1
.end method
