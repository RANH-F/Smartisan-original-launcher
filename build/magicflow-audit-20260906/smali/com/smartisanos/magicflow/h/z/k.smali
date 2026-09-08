.class public Lcom/smartisanos/magicflow/h/z/k;
.super Lcom/smartisanos/magicflow/h/w;
.source "RECOMMEND_APP.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    const-string v1, "TEXT"

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    const-string v2, "category"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    const-string v2, "package"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    const-string v2, "installed"

    const-string v3, "INTEGER"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    const-string v2, "recmd_brief"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    const-string v1, "score"

    const-string v2, "FLOAT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    const-string v1, "full_content"

    const-string v2, "BLOB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/h/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/z/k;->c()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/smartisanos/magicflow/h/z/k;->a:Ljava/util/Map;

    const-string v2, "recommend_apps"

    invoke-static {v2, v0, v1}, Lcom/smartisanos/magicflow/h/w;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "recommend_apps"

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 8

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "category"

    const-string v3, "package"

    const-string v4, "installed"

    const-string v5, "recmd_brief"

    const-string v6, "score"

    const-string v7, "full_content"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
