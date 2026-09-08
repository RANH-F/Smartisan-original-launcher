.class final Ld/x$a;
.super Ld/f0/b;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final b:Ld/f;

.field final synthetic c:Ld/x;


# direct methods
.method constructor <init>(Ld/x;Ld/f;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ld/x$a;->c:Ld/x;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ld/x;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Ld/f0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Ld/x$a;->b:Ld/f;

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Ld/x$a;->c:Ld/x;

    invoke-virtual {v2}, Ld/x;->a()Ld/a0;

    move-result-object v2

    .line 2
    iget-object v3, p0, Ld/x$a;->c:Ld/x;

    iget-object v3, v3, Ld/x;->b:Ld/f0/g/j;

    invoke-virtual {v3}, Ld/f0/g/j;->b()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Ld/x$a;->b:Ld/f;

    iget-object v2, p0, Ld/x$a;->c:Ld/x;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ld/f;->a(Ld/e;Ljava/io/IOException;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ld/x$a;->b:Ld/f;

    iget-object v3, p0, Ld/x$a;->c:Ld/x;

    invoke-interface {v1, v3, v2}, Ld/f;->a(Ld/e;Ld/a0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    iget-object v0, p0, Ld/x$a;->c:Ld/x;

    iget-object v0, v0, Ld/x;->a:Ld/v;

    invoke-virtual {v0}, Ld/v;->g()Ld/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld/n;->b(Ld/x$a;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    if-eqz v0, :cond_1

    .line 6
    :try_start_2
    invoke-static {}, Ld/f0/j/e;->b()Ld/f0/j/e;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ld/x$a;->c:Ld/x;

    invoke-virtual {v4}, Ld/x;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Ld/f0/j/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Ld/x$a;->c:Ld/x;

    invoke-static {v0}, Ld/x;->a(Ld/x;)Ld/p;

    move-result-object v0

    iget-object v2, p0, Ld/x$a;->c:Ld/x;

    invoke-virtual {v0, v2, v1}, Ld/p;->a(Ld/e;Ljava/io/IOException;)V

    .line 8
    iget-object v0, p0, Ld/x$a;->b:Ld/f;

    iget-object v2, p0, Ld/x$a;->c:Ld/x;

    invoke-interface {v0, v2, v1}, Ld/f;->a(Ld/e;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 9
    :goto_3
    iget-object v1, p0, Ld/x$a;->c:Ld/x;

    iget-object v1, v1, Ld/x;->a:Ld/v;

    invoke-virtual {v1}, Ld/v;->g()Ld/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Ld/n;->b(Ld/x$a;)V

    throw v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/x$a;->c:Ld/x;

    iget-object v0, v0, Ld/x;->d:Ld/y;

    invoke-virtual {v0}, Ld/y;->g()Ld/s;

    move-result-object v0

    invoke-virtual {v0}, Ld/s;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
