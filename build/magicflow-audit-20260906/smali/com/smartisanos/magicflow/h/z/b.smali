.class public Lcom/smartisanos/magicflow/h/z/b;
.super Lcom/smartisanos/magicflow/h/w;
.source "COLLECTION_NEWS.java"


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
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v1, "TEXT"

    const-string v2, "source_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "clickUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "INTEGER DEFAULT 0"

    const-string v3, "type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v3, "icon"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v3, "Long"

    const-string v4, "storeTime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v4, "has_video"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "duration"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "data1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "data2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "data3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/z/b;->c()[Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/h/z/b;->a:Ljava/util/Map;

    const-string v2, "collection_news"

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

    const-string v0, "collection_news"

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 14

    const-string v0, "_id"

    const-string v1, "source_id"

    const-string v2, "url"

    const-string v3, "clickUrl"

    const-string v4, "title"

    const-string v5, "source"

    const-string v6, "type"

    const-string v7, "icon"

    const-string v8, "storeTime"

    const-string v9, "has_video"

    const-string v10, "duration"

    const-string v11, "data1"

    const-string v12, "data2"

    const-string v13, "data3"

    .line 1
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
