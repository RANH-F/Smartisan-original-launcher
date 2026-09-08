.class Ld/f0/i/g$d;
.super Ld/f0/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f0/i/g;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ld/f0/i/g;


# direct methods
.method varargs constructor <init>(Ld/f0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/f0/i/g$d;->d:Ld/f0/i/g;

    iput p4, p0, Ld/f0/i/g$d;->b:I

    iput-object p5, p0, Ld/f0/i/g$d;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Ld/f0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/f0/i/g$d;->d:Ld/f0/i/g;

    iget-object v0, v0, Ld/f0/i/g;->j:Ld/f0/i/m;

    iget v1, p0, Ld/f0/i/g$d;->b:I

    iget-object v2, p0, Ld/f0/i/g$d;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ld/f0/i/m;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Ld/f0/i/g$d;->d:Ld/f0/i/g;

    iget-object v0, v0, Ld/f0/i/g;->q:Ld/f0/i/j;

    iget v1, p0, Ld/f0/i/g$d;->b:I

    sget-object v2, Ld/f0/i/b;->g:Ld/f0/i/b;

    invoke-virtual {v0, v1, v2}, Ld/f0/i/j;->a(ILd/f0/i/b;)V

    .line 3
    iget-object v0, p0, Ld/f0/i/g$d;->d:Ld/f0/i/g;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Ld/f0/i/g$d;->d:Ld/f0/i/g;

    iget-object v1, v1, Ld/f0/i/g;->s:Ljava/util/Set;

    iget v2, p0, Ld/f0/i/g$d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method
