.class final Lcom/smartisanos/magicflow/h/z/c$b;
.super Lcom/smartisanos/magicflow/h/z/e;
.source "CardItemDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/h/z/c;->a(Landroid/content/ContentValues;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/ContentValues;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/magicflow/h/z/c$b;->d:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/smartisanos/magicflow/h/z/c$b;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/h/z/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/z/e;->b:Lcom/smartisanos/magicflow/h/z/e$a;

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/magicflow/h/z/c$b;->d:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/smartisanos/magicflow/h/z/c$b;->e:Ljava/lang/String;

    const-string v4, "card"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/magicflow/h/z/e$a;->a:I

    return-void
.end method
