.class public abstract Lc/b/a/a/d/c;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/d/c$c;,
        Lc/b/a/a/d/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lc/b/a/a/d/c<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final METHOD_DELETE:I = 0x3

.field public static final METHOD_DEPRECATED_GET_OR_POST:I = -0x1

.field public static final METHOD_GET:I = 0x0

.field public static final METHOD_HEAD:I = 0x4

.field public static final METHOD_OPTIONS:I = 0x5

.field public static final METHOD_PATCH:I = 0x7

.field public static final METHOD_POST:I = 0x1

.field public static final METHOD_PUT:I = 0x2

.field public static final METHOD_TRACE:I = 0x6


# instance fields
.field protected a:Lc/b/a/a/d/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/a/d/p$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/os/Handler;

.field private final c:Lc/b/a/a/d/r$a;

.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:I

.field private final h:Ljava/lang/Object;

.field private i:Ljava/lang/Integer;

.field private j:Lc/b/a/a/d/o;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lc/b/a/a/g/e;

.field private p:Lc/b/a/a/g/b$a;

.field private q:Ljava/lang/Object;

.field private r:J

.field private s:J

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lc/b/a/a/d/c$b;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lc/b/a/a/d/p$a;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-boolean v0, Lc/b/a/a/d/r$a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lc/b/a/a/d/r$a;

    invoke-direct {v0}, Lc/b/a/a/d/r$a;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lc/b/a/a/d/c;->c:Lc/b/a/a/d/r$a;

    const-string v0, "VADNetAgent/0"

    .line 4
    iput-object v0, p0, Lc/b/a/a/d/c;->f:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lc/b/a/a/d/c;->k:Z

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lc/b/a/a/d/c;->l:Z

    .line 8
    iput-boolean v2, p0, Lc/b/a/a/d/c;->m:Z

    .line 9
    iput-boolean v2, p0, Lc/b/a/a/d/c;->n:Z

    .line 10
    iput-object v1, p0, Lc/b/a/a/d/c;->p:Lc/b/a/a/g/b$a;

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lc/b/a/a/d/c;->r:J

    .line 12
    iput-wide v1, p0, Lc/b/a/a/d/c;->s:J

    .line 13
    iput-boolean v0, p0, Lc/b/a/a/d/c;->t:Z

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/b/a/a/d/c;->b:Landroid/os/Handler;

    .line 15
    iput p1, p0, Lc/b/a/a/d/c;->d:I

    .line 16
    iput-object p2, p0, Lc/b/a/a/d/c;->e:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lc/b/a/a/d/c;->a:Lc/b/a/a/d/p$a;

    .line 18
    new-instance p1, Lc/b/a/a/d/h;

    invoke-direct {p1}, Lc/b/a/a/d/h;-><init>()V

    invoke-virtual {p0, p1}, Lc/b/a/a/d/c;->setRetryPolicy(Lc/b/a/a/g/e;)Lc/b/a/a/d/c;

    .line 19
    invoke-static {p2}, Lc/b/a/a/d/c;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/b/a/a/d/c;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc/b/a/a/d/p$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lc/b/a/a/d/c;-><init>(ILjava/lang/String;Lc/b/a/a/d/p$a;)V

    return-void
.end method

.method static synthetic a(Lc/b/a/a/d/c;)Lc/b/a/a/d/r$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/d/c;->c:Lc/b/a/a/d/r$a;

    return-object p0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    .line 22
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract a(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/m;",
            ")",
            "Lc/b/a/a/d/p<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected a(Lc/b/a/a/f/a;)Lc/b/a/a/f/a;
    .locals 0

    return-object p1
.end method

.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lc/b/a/a/d/c;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .locals 1

    .line 10
    iget-object v0, p0, Lc/b/a/a/d/c;->j:Lc/b/a/a/d/o;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p0, p1}, Lc/b/a/a/d/o;->a(Lc/b/a/a/d/c;I)V

    :cond_0
    return-void
.end method

.method protected a(JJ)V
    .locals 0

    return-void
.end method

.method a(Lc/b/a/a/d/c$b;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iput-object p1, p0, Lc/b/a/a/d/c;->w:Lc/b/a/a/d/c$b;

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract a(Lc/b/a/a/d/p;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lc/b/a/a/d/c;->j:Lc/b/a/a/d/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lc/b/a/a/d/o;->c(Lc/b/a/a/d/c;)V

    .line 4
    :cond_0
    sget-boolean v0, Lc/b/a/a/d/r$a;->c:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 7
    iget-object v2, p0, Lc/b/a/a/d/c;->b:Landroid/os/Handler;

    new-instance v3, Lc/b/a/a/d/c$a;

    invoke-direct {v3, p0, p1, v0, v1}, Lc/b/a/a/d/c$a;-><init>(Lc/b/a/a/d/c;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 8
    :cond_1
    iget-object v2, p0, Lc/b/a/a/d/c;->c:Lc/b/a/a/d/r$a;

    invoke-virtual {v2, p1, v0, v1}, Lc/b/a/a/d/r$a;->a(Ljava/lang/String;J)V

    .line 9
    iget-object p1, p0, Lc/b/a/a/d/c;->c:Lc/b/a/a/d/r$a;

    invoke-virtual {p0}, Lc/b/a/a/d/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/b/a/a/d/r$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lc/b/a/a/d/c;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/a/d/c;->v:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/a/d/c;->v:Ljava/util/Map;

    .line 4
    :cond_1
    iget-object v0, p0, Lc/b/a/a/d/c;->v:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public addMarker(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lc/b/a/a/d/r$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/a/d/c;->c:Lc/b/a/a/d/r$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lc/b/a/a/d/r$a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lc/b/a/a/d/c;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "*>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/d/c;->w:Lc/b/a/a/d/c$b;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v1, p0, p1}, Lc/b/a/a/d/c$b;->a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public build(Lc/b/a/a/d/o;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Lc/b/a/a/d/o;->a(Lc/b/a/a/d/c;)Lc/b/a/a/d/c;

    :cond_0
    return-void
.end method

.method protected c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lc/b/a/a/d/c;->l:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lc/b/a/a/d/c;->a:Lc/b/a/a/d/p$a;

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

.method public compareTo(Lc/b/a/a/d/c;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "TT;>;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lc/b/a/a/d/c;->getPriority()Lc/b/a/a/d/c$c;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getPriority()Lc/b/a/a/d/c$c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lc/b/a/a/d/c;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lc/b/a/a/d/c;->i:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/a/d/c;

    invoke-virtual {p0, p1}, Lc/b/a/a/d/c;->compareTo(Lc/b/a/a/d/c;)I

    move-result p1

    return p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public deliverError(Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/d/c;->a:Lc/b/a/a/d/p$a;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1}, Lc/b/a/a/d/p$a;->b(Lc/b/a/a/d/p;)V

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

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/d/c;->w:Lc/b/a/a/d/c$b;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p0}, Lc/b/a/a/d/c$b;->a(Lc/b/a/a/d/c;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBaseListener()Lc/b/a/a/d/p$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/d/c;->a:Lc/b/a/a/d/p$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBody()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/b/a/a/d/c;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/b/a/a/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc/b/a/a/d/c;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/b/a/a/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lc/b/a/a/g/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->p:Lc/b/a/a/g/b$a;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc/b/a/a/d/c;->getMethod()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->v:Ljava/util/Map;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddrStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/a/d/c;->d:I

    return v0
.end method

.method public getNetDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/b/a/a/d/c;->s:J

    return-wide v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/b/a/a/d/c;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/b/a/a/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc/b/a/a/d/c;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lc/b/a/a/d/c$c;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/a/d/c$c;->b:Lc/b/a/a/d/c$c;

    return-object v0
.end method

.method public final getRequestQueue()Lc/b/a/a/d/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->j:Lc/b/a/a/d/o;

    return-object v0
.end method

.method public getRetryPolicy()Lc/b/a/a/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->o:Lc/b/a/a/g/e;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/b/a/a/d/c;->r:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/a/d/c;->getRetryPolicy()Lc/b/a/a/g/e;

    move-result-object v0

    invoke-interface {v0}, Lc/b/a/a/g/e;->a()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/a/d/c;->g:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lc/b/a/a/d/c;->m:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lc/b/a/a/d/c;->l:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isResponseOnMain()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/a/d/c;->t:Z

    return v0
.end method

.method public markDelivered()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lc/b/a/a/d/c;->m:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCacheEntry(Lc/b/a/a/g/b$a;)Lc/b/a/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/g/b$a;",
            ")",
            "Lc/b/a/a/d/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/a/d/c;->p:Lc/b/a/a/g/b$a;

    return-object p0
.end method

.method public setIpAddrStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/d/c;->u:Ljava/lang/String;

    return-void
.end method

.method public setNetDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc/b/a/a/d/c;->s:J

    return-void
.end method

.method public setRequestQueue(Lc/b/a/a/d/o;)Lc/b/a/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/o;",
            ")",
            "Lc/b/a/a/d/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/a/d/c;->j:Lc/b/a/a/d/o;

    return-object p0
.end method

.method public setResponseOnMain(Z)Lc/b/a/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/b/a/a/d/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lc/b/a/a/d/c;->t:Z

    return-object p0
.end method

.method public setRetryPolicy(Lc/b/a/a/g/e;)Lc/b/a/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/g/e;",
            ")",
            "Lc/b/a/a/d/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/a/d/c;->o:Lc/b/a/a/g/e;

    return-object p0
.end method

.method public final setSequence(I)Lc/b/a/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/b/a/a/d/c<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/a/d/c;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setShouldCache(Z)Lc/b/a/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/b/a/a/d/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lc/b/a/a/d/c;->k:Z

    return-object p0
.end method

.method public final setShouldRetryServerErrors(Z)Lc/b/a/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/b/a/a/d/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lc/b/a/a/d/c;->n:Z

    return-object p0
.end method

.method public setStartTime()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc/b/a/a/d/c;->r:J

    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lc/b/a/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc/b/a/a/d/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/a/d/c;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/d/c;->e:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)Lc/b/a/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/b/a/a/d/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/a/d/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/a/d/c;->k:Z

    return v0
.end method

.method public final shouldRetryServerErrors()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/a/d/c;->n:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/b/a/a/d/c;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc/b/a/a/d/c;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lc/b/a/a/d/c;->getPriority()Lc/b/a/a/d/c$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/b/a/a/d/c;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
