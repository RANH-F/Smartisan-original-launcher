.class Lcom/bytedance/sdk/openadsdk/h/f/a$a;
.super Ljava/lang/Thread;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/f/a;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/h/f/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a:Lcom/bytedance/sdk/openadsdk/h/f/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->d:Ljava/util/Queue;

    .line 3
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b:Ljava/util/Queue;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->e:Ljava/util/Queue;

    return-void
.end method

.method private a(ILcom/bytedance/sdk/openadsdk/h/f/b;)Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCachePreloader"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;-><init>(Lcom/bytedance/sdk/openadsdk/h/f/a$a;)V

    .line 5
    :cond_0
    iput p1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->a:I

    .line 6
    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    return-object v0
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    .line 9
    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    const/4 v1, -0x1

    .line 10
    iput v1, p1, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->a:I

    .line 11
    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method private declared-synchronized b(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()V
    .locals 5

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/h/f/b;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 7
    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    .line 8
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/h/f/b;->b:I

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->d:I

    .line 9
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/f/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->e:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/f/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    .line 13
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a()V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/h/f/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a(ILcom/bytedance/sdk/openadsdk/h/f/b;)Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V

    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c:Z

    if-eqz v0, :cond_d

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c()V

    .line 5
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto/16 :goto_4

    .line 8
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()V

    .line 9
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c:Z

    goto/16 :goto_4

    .line 10
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()V

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e;->c()Lcom/bytedance/sdk/openadsdk/h/a/b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e;->c()Lcom/bytedance/sdk/openadsdk/h/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a()V

    .line 13
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e;->b()Lcom/bytedance/sdk/openadsdk/h/a/c;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e;->b()Lcom/bytedance/sdk/openadsdk/h/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a()V

    goto :goto_4

    .line 15
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()V

    goto :goto_4

    .line 16
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 17
    :cond_7
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_9

    aget-object v7, v4, v6

    .line 20
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 21
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 22
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    .line 23
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    move v6, v3

    goto :goto_3

    :cond_a
    move v6, v2

    .line 24
    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v4

    const/4 v5, 0x0

    iget v7, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->d:I

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZZILjava/lang/String;[Ljava/lang/String;)V

    .line 25
    :cond_b
    :goto_4
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 26
    :cond_c
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 27
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 28
    :goto_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_d
    return-void
.end method
