.class public Lcom/smartisanos/magicflow/h/z/j;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MagicFlowDBHelper.java"


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;

.field private static b:Lcom/smartisanos/magicflow/h/z/j;

.field private static final c:[Lcom/smartisanos/magicflow/h/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/z/j;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/z/j;->a:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smartisanos/magicflow/h/w;

    .line 2
    new-instance v1, Lcom/smartisanos/magicflow/h/z/a;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/z/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/magicflow/h/z/k;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/z/k;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/magicflow/h/z/m;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/z/m;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/magicflow/h/z/b;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/z/b;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/magicflow/h/z/h;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/z/h;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/magicflow/h/z/f;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/z/f;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/smartisanos/magicflow/h/z/j;->c:[Lcom/smartisanos/magicflow/h/w;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "magic_flow.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/z/j;->b:Lcom/smartisanos/magicflow/h/z/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/h/z/j;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/h/z/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/magicflow/h/z/j;->b:Lcom/smartisanos/magicflow/h/z/j;

    :cond_0
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/h/z/j;->c:[Lcom/smartisanos/magicflow/h/w;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    :try_start_0
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/w;->a()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, p0}, Lcom/smartisanos/magicflow/h/w;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j()Lcom/smartisanos/magicflow/h/z/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/z/j;->b:Lcom/smartisanos/magicflow/h/z/j;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/smartisanos/magicflow/h/z/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 1
    sget-object p2, Lcom/smartisanos/magicflow/h/z/j;->c:[Lcom/smartisanos/magicflow/h/w;

    array-length p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    aget-object v2, p2, v1

    .line 2
    :try_start_0
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/magicflow/h/z/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcom/smartisanos/magicflow/h/z/j;->c:[Lcom/smartisanos/magicflow/h/w;

    array-length p3, p2

    :goto_2
    if-ge v0, p3, :cond_1

    aget-object v1, p2, v0

    .line 5
    :try_start_1
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/w;->a()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/smartisanos/magicflow/h/w;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    .line 1
    sget-object p2, Lcom/smartisanos/magicflow/h/z/j;->c:[Lcom/smartisanos/magicflow/h/w;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 2
    :try_start_0
    sget-object v3, Lcom/smartisanos/magicflow/h/z/j;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpgrade table name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/w;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2, p3, p1}, Lcom/smartisanos/magicflow/h/w;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
