.class final Lcom/smartisanos/magicflow/cache/MovieDataCache$2;
.super Ljava/lang/Object;
.source "MovieDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/MovieDataCache;->removeMovieCardItem(Lcom/smartisanos/magicflow/h/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/smartisanos/magicflow/h/m;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/MovieDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/MovieDataCache;->MOVIE_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/MovieDataCache;->MOVIE_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/m;

    if-eqz v2, :cond_0

    .line 3
    iget v3, v2, Lcom/smartisanos/magicflow/h/m;->a:I

    iget-object v4, p0, Lcom/smartisanos/magicflow/cache/MovieDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/m;

    iget v4, v4, Lcom/smartisanos/magicflow/h/m;->a:I

    if-ne v3, v4, :cond_0

    .line 4
    sget-object v1, Lcom/smartisanos/magicflow/cache/MovieDataCache;->MOVIE_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MovieDataCache;->access$000()V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
