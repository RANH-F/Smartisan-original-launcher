.class Lcom/smartisanos/magicflow/h/z/h$a;
.super Ljava/lang/Object;
.source "HISTORY_NEWS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/h/z/h;->a(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/z/h;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/magicflow/h/z/h$a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/h/z/h$a$a;

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/z/h$a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/magicflow/h/z/h$a$a;-><init>(Lcom/smartisanos/magicflow/h/z/h$a;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    return-void
.end method
