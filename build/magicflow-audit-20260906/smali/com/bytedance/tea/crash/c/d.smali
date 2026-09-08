.class public Lcom/bytedance/tea/crash/c/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NpthDbHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "npth_log.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/tea/crash/c/c/b;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/c/c/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/tea/crash/c/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
