.class Ld/f0/e/a$a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Le/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f0/e/a;->a(Ld/f0/e/b;Ld/a0;)Ld/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Le/e;

.field final synthetic c:Ld/f0/e/b;

.field final synthetic d:Le/d;


# direct methods
.method constructor <init>(Ld/f0/e/a;Le/e;Ld/f0/e/b;Le/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld/f0/e/a$a;->b:Le/e;

    iput-object p3, p0, Ld/f0/e/a$a;->c:Ld/f0/e/b;

    iput-object p4, p0, Ld/f0/e/a$a;->d:Le/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/c;J)J
    .locals 8

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Ld/f0/e/a$a;->b:Le/e;

    invoke-interface {v1, p1, p2, p3}, Le/s;->a(Le/c;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Ld/f0/e/a$a;->a:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Ld/f0/e/a$a;->a:Z

    .line 4
    iget-object p1, p0, Ld/f0/e/a$a;->d:Le/d;

    invoke-interface {p1}, Le/r;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Ld/f0/e/a$a;->d:Le/d;

    invoke-interface {v0}, Le/d;->a()Le/c;

    move-result-object v3

    invoke-virtual {p1}, Le/c;->q()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Le/c;->a(Le/c;JJ)Le/c;

    .line 6
    iget-object p1, p0, Ld/f0/e/a$a;->d:Le/d;

    invoke-interface {p1}, Le/d;->i()Le/d;

    return-wide p2

    :catch_0
    move-exception p1

    .line 7
    iget-boolean p2, p0, Ld/f0/e/a$a;->a:Z

    if-nez p2, :cond_2

    .line 8
    iput-boolean v0, p0, Ld/f0/e/a$a;->a:Z

    .line 9
    iget-object p2, p0, Ld/f0/e/a$a;->c:Ld/f0/e/b;

    invoke-interface {p2}, Ld/f0/e/b;->b()V

    .line 10
    :cond_2
    throw p1
.end method

.method public b()Le/t;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/f0/e/a$a;->b:Le/e;

    invoke-interface {v0}, Le/s;->b()Le/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld/f0/e/a$a;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {p0, v0, v1}, Ld/f0/c;->a(Le/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ld/f0/e/a$a;->a:Z

    .line 4
    iget-object v0, p0, Ld/f0/e/a$a;->c:Ld/f0/e/b;

    invoke-interface {v0}, Ld/f0/e/b;->b()V

    .line 5
    :cond_0
    iget-object v0, p0, Ld/f0/e/a$a;->b:Le/e;

    invoke-interface {v0}, Le/s;->close()V

    return-void
.end method
