.class public Lcom/smartisanos/magicflow/h/z/o/a;
.super Lcom/smartisanos/magicflow/h/w;
.source "XIAOYUAN.java"


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

    sput-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v1, "TEXT"

    const-string v2, "msg_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v2, "card_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v2, "phone_num"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v2, "content"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v2, "LONG DEFAULT 0"

    const-string v3, "sms_recive_time"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v3, "title_no"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v3, "parse_result"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v3, "deadline"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v3, "order_time"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v3, "appear_time"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v2, "dup_value"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v2, "special_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v1, "delete_flag"

    const-string v2, "INTEGER DEFAULT 0"

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
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/z/o/a;->c()[Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/h/z/o/a;->a:Ljava/util/Map;

    const-string v2, "tb_card_item"

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

    const-string v0, "tb_card_item"

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 14

    const-string v0, "id"

    const-string v1, "msg_id"

    const-string v2, "card_type"

    const-string v3, "phone_num"

    const-string v4, "content"

    const-string v5, "sms_recive_time"

    const-string v6, "title_no"

    const-string v7, "parse_result"

    const-string v8, "deadline"

    const-string v9, "order_time"

    const-string v10, "appear_time"

    const-string v11, "dup_value"

    const-string v12, "special_key"

    const-string v13, "delete_flag"

    .line 1
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
