.class public Lc/a/a/o/j/o;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lc/a/a/o/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/b<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5

    const-string v0, "StreamEncoder"

    .line 2
    invoke-static {}, Lc/a/a/t/a;->b()Lc/a/a/t/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/t/a;->a()[B

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-static {}, Lc/a/a/t/a;->b()Lc/a/a/t/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lc/a/a/t/a;->a([B)Z

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 6
    :try_start_1
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Failed to encode data onto the OutputStream"

    .line 7
    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_1
    invoke-static {}, Lc/a/a/t/a;->b()Lc/a/a/t/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lc/a/a/t/a;->a([B)Z

    return v2

    :goto_1
    invoke-static {}, Lc/a/a/t/a;->b()Lc/a/a/t/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lc/a/a/t/a;->a([B)Z

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lc/a/a/o/j/o;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
