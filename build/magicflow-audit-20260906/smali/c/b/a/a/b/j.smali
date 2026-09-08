.class public Lc/b/a/a/b/j;
.super Lc/b/a/a/d/c;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/a/d/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Lc/b/a/a/d/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/a/d/p$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lc/b/a/a/d/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lc/b/a/a/d/p$a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc/b/a/a/d/c;-><init>(ILjava/lang/String;Lc/b/a/a/d/p$a;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/a/a/b/j;->c:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lc/b/a/a/b/j;->d:Lc/b/a/a/d/p$a;

    return-void
.end method


# virtual methods
.method protected a(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/m;",
            ")",
            "Lc/b/a/a/d/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lc/b/a/a/d/m;->b:[B

    iget-object v2, p1, Lc/b/a/a/d/m;->c:Ljava/util/Map;

    invoke-static {v2}, Lc/b/a/a/e/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lc/b/a/a/d/m;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 8
    :goto_0
    invoke-static {p1}, Lc/b/a/a/e/c;->a(Lc/b/a/a/d/m;)Lc/b/a/a/g/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lc/b/a/a/d/p;->a(Ljava/lang/Object;Lc/b/a/a/g/b$a;)Lc/b/a/a/d/p;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/b/j;->d:Lc/b/a/a/d/p$a;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1}, Lc/b/a/a/d/p$a;->a(Lc/b/a/a/d/p;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 2

    .line 1
    invoke-super {p0}, Lc/b/a/a/d/c;->cancel()V

    .line 2
    iget-object v0, p0, Lc/b/a/a/b/j;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Lc/b/a/a/b/j;->d:Lc/b/a/a/d/p$a;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
