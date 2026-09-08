.class public Lcom/bytedance/tea/crash/upload/b;
.super Ljava/lang/Object;
.source "CrashUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/upload/b$b;,
        Lcom/bytedance/tea/crash/upload/b$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static b:Lcom/bytedance/tea/crash/upload/c;


# direct methods
.method public static a(JLjava/lang/String;[BLcom/bytedance/tea/crash/upload/b$a;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;
    .locals 7

    if-nez p2, :cond_0

    .line 1
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 p1, 0xc9

    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x0

    new-array p3, p0, [B

    .line 2
    :cond_1
    array-length p0, p3

    const/4 p1, 0x0

    .line 3
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$a;->b:Lcom/bytedance/tea/crash/upload/b$a;

    const/16 v1, 0x80

    if-ne v0, p4, :cond_2

    if-le p0, v1, :cond_2

    .line 4
    invoke-static {p3}, Lcom/bytedance/tea/crash/upload/b;->b([B)[B

    move-result-object p3

    const-string p1, "gzip"

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$a;->c:Lcom/bytedance/tea/crash/upload/b$a;

    if-ne v0, p4, :cond_3

    if-le p0, v1, :cond_3

    .line 6
    invoke-static {p3}, Lcom/bytedance/tea/crash/upload/b;->a([B)[B

    move-result-object p3

    const-string p1, "deflate"

    :cond_3
    :goto_0
    move-object v1, p3

    move-object p3, p1

    if-nez v1, :cond_4

    .line 7
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 p1, 0xca

    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p0

    :cond_4
    if-eqz p6, :cond_8

    .line 8
    array-length p0, v1

    invoke-static {v1, p0}, Lcom/bytedance/embedapplog/util/TTEncryptUtils;->a([BI)[B

    move-result-object p0

    if-eqz p0, :cond_7

    .line 9
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "?"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 11
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_5
    const-string p1, "&"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 13
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "tt_data=a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "application/octet-stream;tt-data=a"

    move-object p1, p0

    move-object p0, p2

    move-object p2, p5

    goto :goto_2

    :cond_7
    move-object p0, p2

    move-object p2, p5

    move-object p1, v1

    :goto_2
    const/4 p5, 0x1

    const/4 p6, 0x1

    const-string p4, "POST"

    .line 15
    invoke-static/range {p0 .. p6}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "POST"

    move-object v0, p2

    move-object v2, p5

    move-object v3, p3

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;
    .locals 1

    .line 67
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->b()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;
    .locals 3

    .line 68
    :try_start_0
    new-instance v0, Lcom/bytedance/tea/crash/upload/e;

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/tea/crash/upload/e;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "json"

    .line 69
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/tea/crash/upload/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "file"

    .line 70
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/tea/crash/upload/e;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 71
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/upload/e;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "succ_kind"

    .line 73
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "succ"

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 75
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILorg/json/JSONObject;)V

    return-object p0

    .line 76
    :cond_0
    new-instance p1, Lcom/bytedance/tea/crash/upload/f;

    const/16 p2, 0xcc

    invoke-direct {p1, p2, p0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p0

    .line 77
    :try_start_2
    new-instance p1, Lcom/bytedance/tea/crash/upload/f;

    const/16 p2, 0xcd

    invoke-direct {p1, p2, p0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 p1, 0xcf

    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;
    .locals 8

    .line 81
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x200000

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/bytedance/tea/crash/upload/b$a;->b:Lcom/bytedance/tea/crash/upload/b$a;

    const-string v6, "application/json; charset=utf-8"

    move-object v3, p0

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/tea/crash/upload/b;->a(JLjava/lang/String;[BLcom/bytedance/tea/crash/upload/b$a;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0

    .line 83
    :cond_1
    :goto_0
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 p1, 0xc9

    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 84
    invoke-static {p0}, Lcom/bytedance/tea/crash/m/j;->b(Ljava/lang/Throwable;)V

    .line 85
    new-instance p1, Lcom/bytedance/tea/crash/upload/f;

    const/16 p2, 0xcf

    invoke-direct {p1, p2, p0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/Throwable;)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/tea/crash/upload/f;
    .locals 4

    const-string v0, "gzip"

    const/4 v1, 0x0

    .line 26
    :try_start_0
    sget-object v2, Lcom/bytedance/tea/crash/upload/b;->b:Lcom/bytedance/tea/crash/upload/c;

    if-eqz v2, :cond_0

    .line 27
    sget-object v2, Lcom/bytedance/tea/crash/upload/b;->b:Lcom/bytedance/tea/crash/upload/c;

    invoke-interface {v2, p0, p1}, Lcom/bytedance/tea/crash/upload/c;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 28
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-eqz p6, :cond_1

    .line 29
    new-instance v3, Ljava/net/URL;

    invoke-static {p0, v2}, Lc/b/b/a/a/a/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz p6, :cond_3

    .line 32
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_3

    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v2, :cond_2

    goto :goto_1

    .line 34
    :cond_2
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_3
    if-eqz p5, :cond_4

    const/4 p5, 0x1

    .line 35
    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_2

    :cond_4
    const/4 p5, 0x0

    .line 36
    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :goto_2
    if-eqz p2, :cond_5

    const-string p5, "Content-Type"

    .line 37
    invoke-virtual {p0, p5, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p3, :cond_6

    const-string p2, "Content-Encoding"

    .line 38
    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p2, "Accept-Encoding"

    .line 39
    invoke-virtual {p0, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_c

    .line 40
    invoke-virtual {p0, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 41
    array-length p2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p2, :cond_7

    .line 42
    :try_start_2
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 44
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :try_start_4
    invoke-static {p2}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, v1

    :goto_3
    invoke-static {p2}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    throw p1

    .line 46
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_a

    .line 47
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz p2, :cond_8

    .line 50
    :try_start_6
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 51
    :try_start_7
    invoke-static {p2}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 52
    :try_start_8
    invoke-static {p2}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_3
    move-exception p3

    move-object v1, p2

    goto :goto_5

    :catchall_4
    move-exception p3

    :goto_5
    invoke-static {v1}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    throw p3

    .line 53
    :cond_8
    invoke-static {p1}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/io/InputStream;)[B

    move-result-object p3

    .line 54
    :goto_6
    invoke-static {p3}, Lcom/bytedance/tea/crash/upload/b;->c([B)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz p0, :cond_9

    .line 55
    :try_start_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 56
    :catch_0
    :cond_9
    invoke-static {p1}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    return-object p2

    :catchall_5
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_7

    .line 57
    :cond_a
    :try_start_a
    new-instance p2, Lcom/bytedance/tea/crash/upload/f;

    const/16 p3, 0xce

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "http response code "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz p0, :cond_b

    .line 58
    :try_start_b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 59
    :catch_1
    :cond_b
    invoke-static {v1}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    return-object p2

    .line 60
    :cond_c
    :try_start_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request method is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_6
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .line 61
    :goto_7
    :try_start_d
    invoke-static {p1}, Lcom/bytedance/tea/crash/m/j;->b(Ljava/lang/Throwable;)V

    .line 62
    new-instance p2, Lcom/bytedance/tea/crash/upload/f;

    const/16 p3, 0xcf

    invoke-direct {p2, p3, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz p0, :cond_d

    .line 63
    :try_start_e
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 64
    :catch_2
    :cond_d
    invoke-static {v1}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    return-object p2

    :catchall_7
    move-exception p1

    if-eqz p0, :cond_e

    .line 65
    :try_start_f
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 66
    :catch_3
    :cond_e
    invoke-static {v1}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-static {}, Lcom/bytedance/tea/crash/o;->e()Lcom/bytedance/tea/crash/i/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/i/c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    .line 86
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    const/4 v2, -0x1

    .line 87
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 90
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {v0}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/bytedance/tea/crash/m/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static a([B)[B
    .locals 4

    .line 17
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 18
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 19
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 20
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    new-array p0, v1, [B

    .line 21
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, p0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 25
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;
    .locals 1

    .line 8
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->a()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static b([B)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    invoke-static {p0}, Lcom/bytedance/tea/crash/m/j;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw p0
.end method

.method private static c([B)Lcom/bytedance/tea/crash/upload/f;
    .locals 4

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 p0, 0xcc

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 5
    new-instance v2, Lcom/bytedance/tea/crash/upload/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILorg/json/JSONObject;)V

    return-object v2

    .line 6
    :cond_1
    new-instance v1, Lcom/bytedance/tea/crash/upload/f;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 7
    :catch_0
    new-instance v1, Lcom/bytedance/tea/crash/upload/f;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 8
    :cond_2
    :goto_0
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v0, 0xcb

    invoke-direct {p0, v0}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p0
.end method
