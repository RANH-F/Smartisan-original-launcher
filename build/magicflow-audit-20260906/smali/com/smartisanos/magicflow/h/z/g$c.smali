.class final Lcom/smartisanos/magicflow/h/z/g$c;
.super Lcom/smartisanos/magicflow/h/z/e;
.source "ExpressAccountDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/h/z/g;->a(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:J


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/smartisanos/magicflow/h/z/g$c;->d:J

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/h/z/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sub_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smartisanos/magicflow/h/z/g$c;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "express_account"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/smartisanos/magicflow/h/z/e$a;->c:Z

    return-void
.end method
