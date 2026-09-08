.class Lcom/smartisanos/magicflow/h/z/h$a$a;
.super Lcom/smartisanos/magicflow/h/z/e;
.source "HISTORY_NEWS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/h/z/h$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/z/h$a;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/h/z/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_0

    .line 1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object v3, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    iget-object v4, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const-string v6, "history_news"

    invoke-virtual {v4, v6, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/smartisanos/magicflow/h/z/e$a;->b:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
