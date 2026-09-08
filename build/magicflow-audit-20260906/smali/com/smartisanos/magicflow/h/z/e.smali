.class public abstract Lcom/smartisanos/magicflow/h/z/e;
.super Ljava/lang/Object;
.source "DatabaseTransactionTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/h/z/e$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/database/sqlite/SQLiteDatabase;

.field public b:Lcom/smartisanos/magicflow/h/z/e$a;

.field public c:Lcom/smartisanos/magicflow/h/z/e$a;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public a()Lcom/smartisanos/magicflow/h/z/e$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Lcom/smartisanos/magicflow/h/z/e$a;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/z/e$a;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->c:Lcom/smartisanos/magicflow/h/z/e$a;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->c:Lcom/smartisanos/magicflow/h/z/e$a;

    iget-object v2, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/h/z/e$a;->a(Lcom/smartisanos/magicflow/h/z/e$a;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/z/e;->b()V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Lcom/smartisanos/magicflow/h/z/e$a;

    invoke-direct {v2}, Lcom/smartisanos/magicflow/h/z/e$a;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    .line 9
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 11
    new-instance v2, Lcom/smartisanos/magicflow/h/z/e$a;

    invoke-direct {v2}, Lcom/smartisanos/magicflow/h/z/e$a;-><init>()V

    :goto_0
    iput-object v2, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/z/e;->c:Lcom/smartisanos/magicflow/h/z/e$a;

    if-eqz v0, :cond_1

    .line 14
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    goto :goto_2

    .line 15
    :cond_1
    new-instance v0, Lcom/smartisanos/magicflow/h/z/e$a;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/z/e$a;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    .line 16
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    return-object v0

    .line 17
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 18
    new-instance v2, Lcom/smartisanos/magicflow/h/z/e$a;

    invoke-direct {v2}, Lcom/smartisanos/magicflow/h/z/e$a;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_4
    throw v0
.end method

.method public abstract b()V
.end method
