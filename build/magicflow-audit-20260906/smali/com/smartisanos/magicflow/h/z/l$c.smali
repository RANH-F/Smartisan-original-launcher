.class final Lcom/smartisanos/magicflow/h/z/l$c;
.super Lcom/smartisanos/magicflow/h/z/e;
.source "RecommendAppDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/h/z/l;->a(Landroid/content/ContentValues;Ljava/lang/String;)V
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
    iput-object p2, p0, Lcom/smartisanos/magicflow/h/z/l$c;->d:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/smartisanos/magicflow/h/z/l$c;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/h/z/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/z/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/l$c;->d:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/smartisanos/magicflow/h/z/l$c;->e:Ljava/lang/String;

    const-string v3, "recommend_apps"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
