.class public Lc/d/a/b/a/h/g;
.super Ljava/lang/Object;
.source "NetTrafficManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/a/h/g$c;,
        Lc/d/a/b/a/h/g$b;
    }
.end annotation


# instance fields
.field private final a:Lc/d/a/b/a/h/b;

.field private volatile b:Z

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lc/d/a/b/a/h/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lc/d/a/b/a/h/h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/a/h/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lc/d/a/b/a/h/b;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/h/b;-><init>(D)V

    iput-object v0, p0, Lc/d/a/b/a/h/g;->a:Lc/d/a/b/a/h/b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/d/a/b/a/h/g;->b:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lc/d/a/b/a/h/h;->e:Lc/d/a/b/a/h/h;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/d/a/b/a/h/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/h/g;->e:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/b/a/h/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/h/g;-><init>()V

    return-void
.end method

.method private a(D)Lc/d/a/b/a/h/h;
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 25
    sget-object p1, Lc/d/a/b/a/h/h;->e:Lc/d/a/b/a/h/h;

    return-object p1

    :cond_0
    const-wide v0, 0x4062c00000000000L    # 150.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 26
    sget-object p1, Lc/d/a/b/a/h/h;->a:Lc/d/a/b/a/h/h;

    return-object p1

    :cond_1
    const-wide v0, 0x4081300000000000L    # 550.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 27
    sget-object p1, Lc/d/a/b/a/h/h;->b:Lc/d/a/b/a/h/h;

    return-object p1

    :cond_2
    const-wide v0, 0x409f400000000000L    # 2000.0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_3

    .line 28
    sget-object p1, Lc/d/a/b/a/h/h;->c:Lc/d/a/b/a/h/h;

    return-object p1

    .line 29
    :cond_3
    sget-object p1, Lc/d/a/b/a/h/h;->d:Lc/d/a/b/a/h/h;

    return-object p1
.end method

.method public static b()Lc/d/a/b/a/h/g;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/b/a/h/g$b;->a:Lc/d/a/b/a/h/g;

    return-object v0
.end method

.method private c()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/h/g;->a:Lc/d/a/b/a/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/h/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/h/h;

    .line 3
    sget-object v2, Lc/d/a/b/a/h/g$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-wide v2, 0x409f400000000000L    # 2000.0

    const-wide v4, 0x4081300000000000L    # 550.0

    const-wide v6, 0x4062c00000000000L    # 150.0

    const/4 v8, 0x1

    if-eq v0, v8, :cond_4

    const/4 v9, 0x2

    if-eq v0, v9, :cond_3

    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    return v8

    :cond_1
    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    goto :goto_0

    :cond_2
    move-wide v10, v2

    move-wide v2, v4

    move-wide v4, v10

    goto :goto_0

    :cond_3
    move-wide v2, v6

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x0

    move-wide v4, v6

    .line 4
    :goto_0
    iget-object v0, p0, Lc/d/a/b/a/h/g;->a:Lc/d/a/b/a/h/b;

    invoke-virtual {v0}, Lc/d/a/b/a/h/b;->a()D

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v0, v6, v4

    if-lez v0, :cond_5

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v2

    cmpl-double v0, v6, v4

    if-lez v0, :cond_6

    return v8

    :cond_5
    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    cmpg-double v0, v6, v2

    if-gez v0, :cond_6

    return v8

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return v1
.end method

.method private d()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/h/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lc/d/a/b/a/h/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/h/g$c;

    iget-object v3, p0, Lc/d/a/b/a/h/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/h/h;

    invoke-interface {v2, v3}, Lc/d/a/b/a/h/g$c;->a(Lc/d/a/b/a/h/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lc/d/a/b/a/h/h;
    .locals 2

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/h/g;->a:Lc/d/a/b/a/h/b;

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lc/d/a/b/a/h/h;->e:Lc/d/a/b/a/h/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    .line 21
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc/d/a/b/a/h/g;->a:Lc/d/a/b/a/h/b;

    invoke-virtual {v0}, Lc/d/a/b/a/h/b;->a()D

    move-result-wide v0

    .line 22
    invoke-direct {p0, v0, v1}, Lc/d/a/b/a/h/g;->a(D)Lc/d/a/b/a/h/h;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    sget-object v0, Lc/d/a/b/a/h/h;->e:Lc/d/a/b/a/h/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JJ)V
    .locals 2

    monitor-enter p0

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    long-to-double v0, p3

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-eqz p3, :cond_5

    const-wide/high16 p3, 0x4008000000000000L    # 3.0

    cmpg-double p3, p1, p3

    if-gez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    iget-object p3, p0, Lc/d/a/b/a/h/g;->a:Lc/d/a/b/a/h/b;

    invoke-virtual {p3, p1, p2}, Lc/d/a/b/a/h/b;->a(D)V

    .line 2
    invoke-virtual {p0}, Lc/d/a/b/a/h/g;->a()Lc/d/a/b/a/h/h;

    move-result-object p1

    .line 3
    iget-boolean p2, p0, Lc/d/a/b/a/h/g;->b:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 4
    iget p2, p0, Lc/d/a/b/a/h/g;->f:I

    add-int/2addr p2, p3

    iput p2, p0, Lc/d/a/b/a/h/g;->f:I

    .line 5
    iget-object p2, p0, Lc/d/a/b/a/h/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    const/4 p4, 0x0

    if-eq p1, p2, :cond_1

    .line 6
    iput-boolean p4, p0, Lc/d/a/b/a/h/g;->b:Z

    .line 7
    iput p3, p0, Lc/d/a/b/a/h/g;->f:I

    .line 8
    :cond_1
    iget p1, p0, Lc/d/a/b/a/h/g;->f:I

    int-to-double p1, p1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_2

    invoke-direct {p0}, Lc/d/a/b/a/h/g;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iput-boolean p4, p0, Lc/d/a/b/a/h/g;->b:Z

    .line 10
    iput p3, p0, Lc/d/a/b/a/h/g;->f:I

    .line 11
    iget-object p1, p0, Lc/d/a/b/a/h/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p2, p0, Lc/d/a/b/a/h/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Lc/d/a/b/a/h/g;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_2
    monitor-exit p0

    return-void

    .line 14
    :cond_3
    :try_start_1
    iget-object p2, p0, Lc/d/a/b/a/h/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_4

    .line 15
    iput-boolean p3, p0, Lc/d/a/b/a/h/g;->b:Z

    .line 16
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lc/d/a/b/a/h/g;->d:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :catchall_0
    :cond_4
    monitor-exit p0

    return-void

    .line 18
    :cond_5
    :goto_0
    monitor-exit p0

    return-void
.end method
