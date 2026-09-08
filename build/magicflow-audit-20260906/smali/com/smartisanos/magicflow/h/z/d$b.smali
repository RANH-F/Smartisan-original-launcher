.class final Lcom/smartisanos/magicflow/h/z/d$b;
.super Lcom/smartisanos/magicflow/h/z/e;
.source "CollectionNewsDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/h/z/d;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/magicflow/h/z/d$b;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/h/z/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/z/d$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "_id"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    iget-object v3, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const-string v5, "collection_news"

    invoke-virtual {v3, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/smartisanos/magicflow/h/z/e$a;->b:J

    .line 5
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/d;->a()Lcom/smartisanos/magicflow/LOG;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertList insert id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    iget-wide v3, v3, Lcom/smartisanos/magicflow/h/z/e$a;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
