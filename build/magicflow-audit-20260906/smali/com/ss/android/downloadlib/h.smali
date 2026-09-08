.class public Lcom/ss/android/downloadlib/h;
.super Ljava/lang/Object;
.source "DownloadDispatcherImpl.java"

# interfaces
.implements Lcom/ss/android/downloadlib/g;


# static fields
.field private static volatile e:Lcom/ss/android/downloadlib/h;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/downloadlib/a$n;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/a$n;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lc/d/a/a/a/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/h;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/h;->e:Lcom/ss/android/downloadlib/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/h;->e:Lcom/ss/android/downloadlib/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/h;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/h;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/h;->e:Lcom/ss/android/downloadlib/h;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/h;->e:Lcom/ss/android/downloadlib/h;

    return-object v0
.end method

.method private b()V
    .locals 6

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/ss/android/downloadlib/h;->d:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 11
    :cond_0
    iput-wide v0, p0, Lcom/ss/android/downloadlib/h;->d:J

    .line 12
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/ss/android/downloadlib/h;->c()V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;ILc/d/a/a/a/c/e;Lc/d/a/a/a/c/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/h;->c(Landroid/content/Context;ILc/d/a/a/a/c/e;Lc/d/a/a/a/c/d;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a$n;

    .line 4
    iget-object v2, p0, Lcom/ss/android/downloadlib/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/a$n;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {v0, p2, p3}, Lcom/ss/android/downloadlib/a$n;->a(ILc/d/a/a/a/c/e;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {v0, p4}, Lcom/ss/android/downloadlib/a$n;->a(Lc/d/a/a/a/c/d;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/a$n;->a()V

    .line 6
    iget-object p1, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    invoke-interface {p4}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c()V
    .locals 9

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/ss/android/downloadlib/h;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/downloadlib/a$n;

    .line 7
    invoke-interface {v4}, Lcom/ss/android/downloadlib/a$n;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v4}, Lcom/ss/android/downloadlib/a$n;->d()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/32 v7, 0x927c0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 9
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method private c(Landroid/content/Context;ILc/d/a/a/a/c/e;Lc/d/a/a/a/c/d;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/a$m;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$m;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/a$n;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {v0, p2, p3}, Lcom/ss/android/downloadlib/a$n;->a(ILc/d/a/a/a/c/e;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {v0, p4}, Lcom/ss/android/downloadlib/a$n;->a(Lc/d/a/a/a/c/d;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/a$n;->a()V

    .line 3
    iget-object p1, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    invoke-interface {p4}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a$m;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/a$n;

    if-eqz p1, :cond_1

    .line 15
    instance-of v0, p1, Lcom/ss/android/downloadlib/a$m;

    if-eqz v0, :cond_1

    .line 16
    check-cast p1, Lcom/ss/android/downloadlib/a$m;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public a(Landroid/content/Context;ILc/d/a/a/a/c/e;Lc/d/a/a/a/c/d;)V
    .locals 2

    if-eqz p4, :cond_3

    .line 7
    invoke-interface {p4}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    invoke-interface {p4}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a$n;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/a$n;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {v0, p2, p3}, Lcom/ss/android/downloadlib/a$n;->a(ILc/d/a/a/a/c/e;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {v0, p4}, Lcom/ss/android/downloadlib/a$n;->a(Lc/d/a/a/a/c/d;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/a$n;->a()V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/h;->b(Landroid/content/Context;ILc/d/a/a/a/c/e;Lc/d/a/a/a/c/d;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/h;->c(Landroid/content/Context;ILc/d/a/a/a/c/e;Lc/d/a/a/a/c/d;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/c/a/a;

    .line 29
    invoke-interface {v1, p1, p2, p3}, Lc/d/a/a/a/c/a/a;->a(Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/c/a/a;

    .line 35
    invoke-interface {v1, p1}, Lc/d/a/a/a/c/a/a;->a(Lc/d/a/b/a/f/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;Ljava/lang/String;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/c/a/a;

    .line 31
    invoke-interface {v1, p1, p2, p3}, Lc/d/a/a/a/c/a/a;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/c/a/a;

    .line 33
    invoke-interface {v1, p1, p2}, Lc/d/a/a/a/c/a/a;->b(Lc/d/a/b/a/f/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a$n;

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0, p2}, Lcom/ss/android/downloadlib/a$n;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 19
    iget-object p2, p0, Lcom/ss/android/downloadlib/h;->a:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p2, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/downloadlib/h;->b()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/downloadlib/h;->a(Ljava/lang/String;JILc/d/a/a/a/c/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;JILc/d/a/a/a/c/c;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/downloadlib/h;->a(Ljava/lang/String;JILc/d/a/a/a/c/c;Lc/d/a/a/a/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;JILc/d/a/a/a/c/c;Lc/d/a/a/a/c/b;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/a$n;

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1, p5}, Lcom/ss/android/downloadlib/a$n;->a(Lc/d/a/a/a/c/c;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {p1, p6}, Lcom/ss/android/downloadlib/a$n;->a(Lc/d/a/a/a/c/b;)Lcom/ss/android/downloadlib/a$n;

    invoke-interface {p1, p2, p3, p4}, Lcom/ss/android/downloadlib/a$n;->a(JI)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/a$n;

    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1, p2}, Lcom/ss/android/downloadlib/a$n;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/c/a/a;

    .line 15
    invoke-interface {v1, p1, p2}, Lc/d/a/a/a/c/a/a;->a(Lc/d/a/b/a/f/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/a$n;

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Lcom/ss/android/downloadlib/a$n;->a()V

    :cond_0
    return-void
.end method
