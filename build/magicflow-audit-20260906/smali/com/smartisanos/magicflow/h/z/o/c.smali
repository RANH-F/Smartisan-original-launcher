.class public Lcom/smartisanos/magicflow/h/z/o/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "XiaoYuanDBHelper.java"


# static fields
.field private static a:Lcom/smartisanos/magicflow/h/z/o/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/z/j;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "sms_card.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/c;->a:Lcom/smartisanos/magicflow/h/z/o/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/h/z/o/c;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/h/z/o/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/magicflow/h/z/o/c;->a:Lcom/smartisanos/magicflow/h/z/o/c;

    :cond_0
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/smartisanos/magicflow/h/w;

    .line 3
    new-instance v1, Lcom/smartisanos/magicflow/h/z/o/a;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/z/o/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/w;->a()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j()Lcom/smartisanos/magicflow/h/z/o/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/c;->a:Lcom/smartisanos/magicflow/h/z/o/c;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/smartisanos/magicflow/h/z/o/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
