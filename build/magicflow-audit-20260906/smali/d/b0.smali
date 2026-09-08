.class public abstract Ld/b0;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ld/u;JLe/e;)Ld/b0;
    .locals 1

    if-eqz p3, :cond_0

    .line 3
    new-instance v0, Ld/b0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Ld/b0$a;-><init>(Ld/u;JLe/e;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ld/u;[B)Ld/b0;
    .locals 3

    .line 1
    new-instance v0, Le/c;

    invoke-direct {v0}, Le/c;-><init>()V

    invoke-virtual {v0, p1}, Le/c;->write([B)Le/c;

    .line 2
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Ld/b0;->a(Ld/u;JLe/e;)Ld/b0;

    move-result-object p0

    return-object p0
.end method

.method private o()Ljava/nio/charset/Charset;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld/b0;->l()Ld/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ld/f0/c;->j:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ld/u;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ld/f0/c;->j:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b0;->m()Le/e;

    move-result-object v0

    invoke-static {v0}, Ld/f0/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final j()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b0;->m()Le/e;

    move-result-object v0

    invoke-interface {v0}, Le/e;->h()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract k()J
.end method

.method public abstract l()Ld/u;
.end method

.method public abstract m()Le/e;
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld/b0;->m()Le/e;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Ld/b0;->o()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Ld/f0/c;->a(Le/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Le/e;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Ld/f0/c;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Ld/f0/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method
