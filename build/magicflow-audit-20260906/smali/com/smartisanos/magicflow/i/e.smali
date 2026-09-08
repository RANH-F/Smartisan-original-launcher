.class public Lcom/smartisanos/magicflow/i/e;
.super Ljava/lang/Object;
.source "NewsItemInfoTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/smartisanos/magicflow/h/r;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/smartisanos/magicflow/LOG;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/i/e;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/i/e;->b:I

    .line 4
    iput-object p2, p0, Lcom/smartisanos/magicflow/i/e;->c:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/i/e;->d:Z

    return-void
.end method

.method private a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/i/e;->c:Ljava/lang/String;

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/i/e;->c:Ljava/lang/String;

    const-string v2, "news_local"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/magicflow/h/d;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->h:Ljava/lang/String;

    :cond_0
    const-string v2, "city"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private a(Lcom/smartisanos/magicflow/h/r;)Z
    .locals 4

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "handleAdResult result null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 11
    :cond_0
    new-instance v1, Lcom/smartisanos/magicflow/j/g;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/j/g;-><init>()V

    .line 12
    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/j/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/m/c;

    if-nez v1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAdResult response null result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 14
    :cond_1
    iget v0, v1, Lcom/smartisanos/magicflow/m/c;->a:I

    if-eqz v0, :cond_2

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAdResult no success response="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/m/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 16
    :cond_2
    iget-object v0, v1, Lcom/smartisanos/magicflow/m/c;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, v1, Lcom/smartisanos/magicflow/m/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/h/r;->a(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 18
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "handleAdResult response adList no data"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2
.end method

.method private b(Lcom/smartisanos/magicflow/h/r;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "handleReadNewsResult result null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    new-instance v1, Lcom/smartisanos/magicflow/j/c;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/j/c;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/j/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/m/a;

    if-nez v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleReadNewsResult response null result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 7
    :cond_1
    iget v0, v1, Lcom/smartisanos/magicflow/m/a;->a:I

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleReadNewsResult no success response="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/m/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 9
    :cond_2
    iget-object v0, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/h/r;->a(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "handleReadNewsResult response adList no data"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2
.end method

.method private c(Lcom/smartisanos/magicflow/h/r;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "handleTTNewsResult result null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    new-instance v1, Lcom/smartisanos/magicflow/j/a;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/j/a;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/j/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/m/a;

    if-nez v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTTNewsResult response null result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 7
    :cond_1
    iget v0, v1, Lcom/smartisanos/magicflow/m/a;->a:I

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTTNewsResult no success response="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/m/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 9
    :cond_2
    iget-object v0, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, v1, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/h/r;->a(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/i/e;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "handleTTNewsResult response allNewsList no data"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public call()Lcom/smartisanos/magicflow/h/r;
    .locals 5

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/h/r;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/r;-><init>()V

    .line 3
    iget v1, p0, Lcom/smartisanos/magicflow/i/e;->b:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/r;->a(I)V

    .line 4
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/i/e;->d:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/r;->a(Z)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/i/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/r;->a(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/smartisanos/magicflow/i/e;->b:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/i/e;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/smartisanos/magicflow/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/r;->b(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/i/e;->c:Ljava/lang/String;

    const-string v2, "smartisan_read"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/i/e;->b(Lcom/smartisanos/magicflow/h/r;)Z

    move-result v1

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/i/e;->c(Lcom/smartisanos/magicflow/h/r;)Z

    move-result v1

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/smartisanos/magicflow/i/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/r;->b(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/i/e;->b(Lcom/smartisanos/magicflow/h/r;)Z

    move-result v1

    goto :goto_0

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/i/e;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/i/d;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/r;->b(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/i/e;->c(Lcom/smartisanos/magicflow/h/r;)Z

    move-result v1

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {}, Lcom/smartisanos/magicflow/i/d;->f()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/r;->b(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/i/e;->a(Lcom/smartisanos/magicflow/h/r;)Z

    move-result v1

    .line 21
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v2

    .line 22
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/magicflow/o/n;->d(Landroid/content/Context;)I

    move-result v3

    const-string v4, "phone_screen_feed"

    .line 23
    invoke-virtual {v2, v4, v1, v3}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;II)V

    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/r;->b(Z)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/i/e;->call()Lcom/smartisanos/magicflow/h/r;

    move-result-object v0

    return-object v0
.end method
