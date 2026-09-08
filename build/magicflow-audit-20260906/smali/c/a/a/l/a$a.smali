.class Lc/a/a/l/a$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/l/a;


# direct methods
.method constructor <init>(Lc/a/a/l/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a/a/l/a$a;->a:Lc/a/a/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/a/a/l/a$a;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .line 2
    iget-object v0, p0, Lc/a/a/l/a$a;->a:Lc/a/a/l/a;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/a/a/l/a$a;->a:Lc/a/a/l/a;

    invoke-static {v1}, Lc/a/a/l/a;->a(Lc/a/a/l/a;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-object v2

    .line 5
    :cond_0
    iget-object v1, p0, Lc/a/a/l/a$a;->a:Lc/a/a/l/a;

    invoke-static {v1}, Lc/a/a/l/a;->b(Lc/a/a/l/a;)V

    .line 6
    iget-object v1, p0, Lc/a/a/l/a$a;->a:Lc/a/a/l/a;

    invoke-static {v1}, Lc/a/a/l/a;->e(Lc/a/a/l/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lc/a/a/l/a$a;->a:Lc/a/a/l/a;

    invoke-static {v1}, Lc/a/a/l/a;->f(Lc/a/a/l/a;)V

    .line 8
    iget-object v1, p0, Lc/a/a/l/a$a;->a:Lc/a/a/l/a;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lc/a/a/l/a;->a(Lc/a/a/l/a;I)I

    .line 9
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
