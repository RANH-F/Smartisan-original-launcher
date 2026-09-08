.class public Lcom/bytedance/embedapplog/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/d/b$a;
    }
.end annotation


# static fields
.field private static d:I

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/embedapplog/d/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/bytedance/embedapplog/b/h;

.field private final b:Lcom/bytedance/embedapplog/b/i;

.field private final c:Lcom/bytedance/embedapplog/d/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bytedance/embedapplog/d/i;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "event_name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " =?  AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "monitor_status"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/d/b;->e:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/bytedance/embedapplog/d/i;->o:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SET "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "monitor_num"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " =? WHERE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " =? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " =?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/d/b;->f:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/embedapplog/d/i;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<? ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "local_time_ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " LIMIT ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/d/b;->g:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/bytedance/embedapplog/d/i;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <= ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/d/b;->h:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    .line 6
    new-instance v0, Lcom/bytedance/embedapplog/d/h;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/h;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 7
    new-instance v0, Lcom/bytedance/embedapplog/d/c;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/c;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 8
    new-instance v0, Lcom/bytedance/embedapplog/d/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/bytedance/embedapplog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 9
    new-instance v0, Lcom/bytedance/embedapplog/d/f;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/f;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 10
    new-instance v0, Lcom/bytedance/embedapplog/d/j;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/j;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 11
    new-instance v0, Lcom/bytedance/embedapplog/d/g;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/g;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 12
    new-instance v0, Lcom/bytedance/embedapplog/d/d;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/bytedance/embedapplog/d/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 13
    new-instance v0, Lcom/bytedance/embedapplog/d/i;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/i;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bytedance/embedapplog/d/b$a;

    const-string v1, "bd_embed_tea_agent.db"

    const/4 v2, 0x0

    const/16 v3, 0x1d

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/bytedance/embedapplog/d/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/b;->c:Lcom/bytedance/embedapplog/d/b$a;

    .line 3
    iput-object p2, p0, Lcom/bytedance/embedapplog/d/b;->b:Lcom/bytedance/embedapplog/b/i;

    .line 4
    iput-object p3, p0, Lcom/bytedance/embedapplog/d/b;->a:Lcom/bytedance/embedapplog/b/h;

    return-void
.end method

.method private a([Lcom/bytedance/embedapplog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .line 147
    aput-object v2, p5, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 p2, 0xc8

    :cond_1
    :goto_1
    if-lez p2, :cond_2

    .line 148
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 149
    aget-object v1, p1, v0

    invoke-direct {p0, p3, v1, p4, p2}, Lcom/bytedance/embedapplog/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/embedapplog/d/a;Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v1

    aput-object v1, p5, v0

    .line 150
    aget-object v1, p5, v0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr p2, v1

    if-lez p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method private a(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/d/g;)J
    .locals 15

    .line 114
    sget-object v0, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    sget-object v1, Lcom/bytedance/embedapplog/d/i;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/d/i;

    .line 115
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 116
    new-instance v1, Lcom/bytedance/embedapplog/d/e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "bav2b_monitor"

    invoke-direct {v1, v4, v2, v3}, Lcom/bytedance/embedapplog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x0

    move-object v11, p0

    .line 119
    :try_start_0
    iget-object v7, v11, Lcom/bytedance/embedapplog/d/b;->c:Lcom/bytedance/embedapplog/d/b$a;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    :try_start_1
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 121
    invoke-static {}, Lcom/bytedance/embedapplog/util/g;->a()J

    move-result-wide v7

    .line 122
    sget-object v10, Lcom/bytedance/embedapplog/d/b;->g:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v14

    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v2

    invoke-virtual {v12, v10, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v13, v5

    .line 123
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    invoke-virtual {v0, v2}, Lcom/bytedance/embedapplog/d/i;->a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/d/a;

    .line 125
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/bytedance/embedapplog/d/e;->i:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->e()Lcom/bytedance/embedapplog/a/k;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 128
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->e()Lcom/bytedance/embedapplog/a/k;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 129
    :cond_0
    iget-wide v6, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    cmp-long v6, v6, v13

    if-lez v6, :cond_1

    .line 130
    iget-wide v6, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    move-wide v13, v6

    .line 131
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string v0, "]"

    .line 133
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 135
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz v0, :cond_3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p succ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/embedapplog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 138
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_4

    .line 139
    :try_start_3
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 140
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-wide v13

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-wide v13, v5

    :goto_2
    move-object v3, v12

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v12, v3

    goto :goto_5

    :catch_3
    move-exception v0

    move-wide v13, v5

    .line 141
    :goto_3
    :try_start_4
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_5

    .line 142
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 143
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-wide v13

    :goto_5
    if-eqz v12, :cond_6

    .line 144
    :try_start_6
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 145
    invoke-static {v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 146
    :cond_6
    :goto_6
    throw v1
.end method

.method private a(JI)Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE pack SET _fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " WHERE "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "local_time_ms"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bytedance/embedapplog/d/a;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/d/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "session_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ORDER BY "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "local_time_ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LIMIT "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bytedance/embedapplog/d/a;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/d/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "session_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "local_time_ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/embedapplog/d/a;Ljava/lang/String;I)Lorg/json/JSONArray;
    .locals 9

    const-string v0, ", "

    .line 151
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 152
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v5, v2

    .line 153
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    invoke-virtual {p2, p4}, Lcom/bytedance/embedapplog/d/a;->a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/d/a;

    .line 155
    sget-boolean v7, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz v7, :cond_1

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryEvnetInner, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 158
    iget-wide v7, p2, Lcom/bytedance/embedapplog/d/a;->a:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_0

    .line 159
    iget-wide v5, p2, Lcom/bytedance/embedapplog/d/a;->a:J

    goto :goto_0

    :cond_2
    cmp-long v2, v5, v2

    if-lez v2, :cond_3

    .line 160
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/a;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p4, :cond_4

    .line 161
    :goto_1
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-wide v5, v2

    move-object p4, v4

    .line 162
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p4, :cond_4

    goto :goto_1

    .line 163
    :cond_4
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryEvent, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_2
    move-exception p1

    if-eqz p4, :cond_5

    .line 164
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method private a(Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lcom/bytedance/embedapplog/d/h;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;
    .locals 11

    const-string v0, ", "

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 165
    iget-object v3, p1, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 166
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    const-string v8, "SELECT * FROM page WHERE session_id=? LIMIT 500"

    .line 167
    invoke-virtual {p4, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 169
    invoke-virtual {p3, v8}, Lcom/bytedance/embedapplog/d/h;->a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/d/a;

    .line 170
    sget-boolean v4, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz v4, :cond_0

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryPageInner, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/embedapplog/d/h;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    invoke-virtual {p3}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 174
    :cond_1
    iget-wide v9, p3, Lcom/bytedance/embedapplog/d/h;->i:J

    add-long/2addr v6, v9

    :goto_1
    move v4, v1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    const-string p3, "DELETE FROM page WHERE session_id=?"

    .line 175
    invoke-virtual {p4, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v8, :cond_4

    .line 176
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p3

    goto :goto_3

    :catchall_1
    move-exception p3

    move-object v8, v5

    .line 177
    :goto_3
    :try_start_2
    invoke-static {p3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_4

    goto :goto_2

    .line 178
    :cond_4
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-lez p3, :cond_6

    const-wide/16 p3, 0x3e8

    cmp-long v1, v6, p3

    if-lez v1, :cond_5

    goto :goto_5

    :cond_5
    move-wide v6, p3

    .line 179
    :goto_5
    iput-wide v6, p2, Lcom/bytedance/embedapplog/d/j;->i:J

    .line 180
    iget-object v1, p1, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    iput-object v1, p2, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    .line 181
    iget-wide v1, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    iput-wide v1, p2, Lcom/bytedance/embedapplog/d/a;->a:J

    .line 182
    iget-wide v1, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    add-long/2addr v1, v6

    div-long/2addr v1, p3

    iput-wide v1, p2, Lcom/bytedance/embedapplog/d/j;->j:J

    .line 183
    iget-object p3, p0, Lcom/bytedance/embedapplog/d/b;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-static {p3}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/b/h;)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/bytedance/embedapplog/d/a;->b:J

    .line 184
    iget-object p3, p1, Lcom/bytedance/embedapplog/d/a;->e:Ljava/lang/String;

    iput-object p3, p2, Lcom/bytedance/embedapplog/d/a;->e:Ljava/lang/String;

    .line 185
    iget-object p1, p1, Lcom/bytedance/embedapplog/d/a;->f:Ljava/lang/String;

    iput-object p1, p2, Lcom/bytedance/embedapplog/d/a;->f:Ljava/lang/String;

    .line 186
    :cond_6
    sget-boolean p1, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz p1, :cond_7

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryPage, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-object v3

    :catchall_2
    move-exception p1

    if-eqz v8, :cond_8

    .line 188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p1
.end method

.method private a(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "d succ:maxTs ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/b;->c:Lcom/bytedance/embedapplog/d/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/bytedance/embedapplog/d/b;->h:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/bytedance/embedapplog/d/a;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/bytedance/embedapplog/d/g;Ljava/util/HashMap;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/d/g;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "event"

    const-string v1, "log_data"

    const-string v2, "terminate"

    const-string v3, "launch"

    .line 246
    invoke-virtual {p1}, Lcom/bytedance/embedapplog/d/g;->i()Ljava/lang/String;

    move-result-object p1

    .line 247
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 249
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x1

    if-nez p1, :cond_1

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    .line 250
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    double-to-int p3, v7

    add-int/2addr p3, v6

    .line 251
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getSuccRate()I

    move-result v7

    if-le p3, v7, :cond_1

    .line 252
    sget-boolean p1, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz p1, :cond_0

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "drop event,succ rate:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getSuccRate()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",random num:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 254
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-lez p3, :cond_2

    .line 255
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v5, :cond_3

    .line 256
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 257
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_3
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 259
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-lez p3, :cond_4

    .line 260
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_4
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_6

    .line 262
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    move v1, p3

    .line 263
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 264
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "tag"

    .line 265
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "label"

    .line 266
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_5

    move v3, v6

    goto :goto_1

    .line 269
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v6

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const-string p1, "event_v3"

    .line 270
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 271
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 272
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p3, v1, :cond_8

    .line 273
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 274
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_7

    move v2, v6

    goto :goto_3

    .line 276
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v6

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    return-void
.end method

.method private a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 278
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/embedapplog/util/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 279
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 281
    sget-object v4, Lcom/bytedance/embedapplog/d/b;->e:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v8, 0x1

    aput-object p3, v6, v8

    invoke-virtual {p2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 282
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 283
    sget-boolean v9, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz v9, :cond_1

    .line 284
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "i succ:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " r:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " count:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " date:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/embedapplog/util/g;->a()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    .line 286
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 287
    sget-object v10, Lcom/bytedance/embedapplog/d/b;->f:Ljava/lang/String;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v7

    aput-object v3, v11, v8

    aput-object p3, v11, v5

    invoke-virtual {p2, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 288
    :cond_2
    new-instance v5, Lcom/bytedance/embedapplog/d/i;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v3, p3, v6}, Lcom/bytedance/embedapplog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    invoke-virtual {v5}, Lcom/bytedance/embedapplog/d/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2}, Lcom/bytedance/embedapplog/d/a;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p2, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 290
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/embedapplog/d/g;)Z
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/b;->b:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/embedapplog/c/b;->b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 113
    invoke-virtual {p2}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/embedapplog/AppLog;->toEncryptByte(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/embedapplog/d/b;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-static {v1, p1, p2}, Lcom/bytedance/embedapplog/c/a;->a([Ljava/lang/String;[BLcom/bytedance/embedapplog/b/h;)I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method private a(Lcom/bytedance/embedapplog/d/f;Z)Z
    .locals 0

    .line 36
    iget-boolean p1, p1, Lcom/bytedance/embedapplog/d/f;->l:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/d/g;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    sget-object v1, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/d/g;

    const/4 v2, 0x0

    .line 191
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/embedapplog/d/b;->c:Lcom/bytedance/embedapplog/d/b$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM pack ORDER BY local_time_ms DESC,_full DESC LIMIT 2"

    .line 192
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/d/a;->g()Lcom/bytedance/embedapplog/d/a;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/d/g;

    .line 195
    invoke-virtual {v1, v3}, Lcom/bytedance/embedapplog/d/g;->a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/d/a;

    .line 196
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v2

    .line 197
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    .line 198
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryPack, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_2

    .line 200
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 12

    .line 97
    sget v0, Lcom/bytedance/embedapplog/d/b;->d:I

    if-lez v0, :cond_1

    .line 98
    new-instance v0, Lcom/bytedance/embedapplog/d/g;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/g;-><init>()V

    .line 99
    sget v11, Lcom/bytedance/embedapplog/d/b;->d:I

    .line 100
    new-instance v1, Lcom/bytedance/embedapplog/d/i;

    const-string v2, "db_monitor"

    const-string v3, "db_fail"

    invoke-direct {v1, v2, v3, v11}, Lcom/bytedance/embedapplog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    new-instance v2, Lcom/bytedance/embedapplog/d/e;

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "bav2b_monitor"

    invoke-direct {v2, v4, v3, v1}, Lcom/bytedance/embedapplog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->e()Lcom/bytedance/embedapplog/a/k;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->e()Lcom/bytedance/embedapplog/a/k;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 104
    :cond_0
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 105
    invoke-virtual {v2}, Lcom/bytedance/embedapplog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/b;->b:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/embedapplog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/bytedance/embedapplog/d/b;->a(Landroid/content/Context;Lcom/bytedance/embedapplog/d/g;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    sget p1, Lcom/bytedance/embedapplog/d/b;->d:I

    sub-int/2addr p1, v11

    sput p1, Lcom/bytedance/embedapplog/d/b;->d:I

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .line 88
    invoke-static {}, Lcom/bytedance/embedapplog/util/g;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    sget-object v0, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v1, "pack"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/d/g;

    .line 90
    invoke-direct {p0, p2, v0}, Lcom/bytedance/embedapplog/d/b;->a(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/d/g;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/bytedance/embedapplog/d/b;->a(Landroid/content/Context;Lcom/bytedance/embedapplog/d/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0, v1, v2}, Lcom/bytedance/embedapplog/d/b;->a(J)V

    goto :goto_0

    .line 93
    :cond_0
    sget-boolean p1, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string p2, "s succ:fail"

    .line 94
    invoke-static {p2, p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :cond_1
    invoke-static {}, Lcom/bytedance/embedapplog/util/g;->b()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {}, Lcom/bytedance/embedapplog/util/g;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/d/a;",
            ">;)V"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/b;->c:Lcom/bytedance/embedapplog/d/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 294
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/embedapplog/d/a;

    .line 295
    invoke-virtual {v4}, Lcom/bytedance/embedapplog/d/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3}, Lcom/bytedance/embedapplog/d/a;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 297
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 298
    :goto_1
    :try_start_3
    sget v2, Lcom/bytedance/embedapplog/d/b;->d:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr v2, p1

    sput v2, Lcom/bytedance/embedapplog/d/b;->d:I

    .line 299
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_1

    .line 300
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 301
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_2

    .line 302
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    .line 303
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 304
    :cond_2
    :goto_3
    throw p1
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/d/g;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/d/g;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResult, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 203
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 204
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 205
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 206
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    move v11, v10

    .line 208
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 209
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/embedapplog/d/g;

    iget v12, v12, Lcom/bytedance/embedapplog/d/g;->j:I

    if-nez v12, :cond_0

    .line 210
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/embedapplog/d/g;

    invoke-direct {v1, v12, v2, v9}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/g;Ljava/util/HashMap;Z)V

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/embedapplog/d/g;

    invoke-direct {v1, v12, v7, v10}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/g;Ljava/util/HashMap;Z)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 213
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 214
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/embedapplog/d/g;

    .line 215
    iget v13, v12, Lcom/bytedance/embedapplog/d/g;->j:I

    if-nez v13, :cond_3

    .line 216
    iget v13, v12, Lcom/bytedance/embedapplog/d/g;->k:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    if-nez v13, :cond_2

    .line 217
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 218
    iget v14, v12, Lcom/bytedance/embedapplog/d/g;->k:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_2
    invoke-direct {v1, v12, v13, v10}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/g;Ljava/util/HashMap;Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, 0x1

    int-to-long v13, v13

    const-wide/16 v15, 0x5

    cmp-long v13, v13, v15

    if-lez v13, :cond_4

    .line 220
    invoke-direct {v1, v12, v6, v10}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/g;Ljava/util/HashMap;Z)V

    .line 221
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 223
    :cond_4
    invoke-direct {v1, v12, v8, v10}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/g;Ljava/util/HashMap;Z)V

    goto :goto_2

    .line 224
    :cond_5
    :try_start_0
    iget-object v11, v1, Lcom/bytedance/embedapplog/d/b;->c:Lcom/bytedance/embedapplog/d/b$a;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 225
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bytedance/embedapplog/d/g;

    const-string v12, "DELETE FROM pack WHERE local_time_ms=?"

    new-array v13, v9, [Ljava/lang/String;

    .line 227
    iget-wide v14, v11, Lcom/bytedance/embedapplog/d/a;->a:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v10

    invoke-virtual {v4, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 228
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/embedapplog/d/g;

    .line 229
    iget-wide v10, v3, Lcom/bytedance/embedapplog/d/a;->a:J

    iget v12, v3, Lcom/bytedance/embedapplog/d/g;->j:I

    add-int/2addr v12, v9

    iput v12, v3, Lcom/bytedance/embedapplog/d/g;->j:I

    invoke-direct {v1, v10, v11, v12}, Lcom/bytedance/embedapplog/d/b;->a(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_4

    .line 230
    :cond_7
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 232
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 233
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v9, v4, v3}, Lcom/bytedance/embedapplog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const-string v0, "success"

    .line 234
    invoke-direct {v1, v2, v4, v0}, Lcom/bytedance/embedapplog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "retry_success"

    .line 235
    invoke-direct {v1, v7, v4, v0}, Lcom/bytedance/embedapplog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "13"

    .line 236
    invoke-direct {v1, v6, v4, v0}, Lcom/bytedance/embedapplog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "22"

    .line 237
    invoke-direct {v1, v8, v4, v0}, Lcom/bytedance/embedapplog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_9

    .line 239
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 240
    :try_start_2
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_9

    .line 241
    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 242
    invoke-static {v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_a

    .line 243
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 244
    invoke-static {v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 245
    :cond_a
    :goto_7
    throw v2
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 47

    move-object/from16 v7, p0

    .line 37
    sget-object v0, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/d/f;

    .line 38
    sget-object v1, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v2, "terminate"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/bytedance/embedapplog/d/j;

    .line 39
    sget-object v1, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/bytedance/embedapplog/d/h;

    .line 40
    sget-object v1, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v2, "eventv3"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/bytedance/embedapplog/d/e;

    .line 41
    sget-object v1, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/bytedance/embedapplog/d/c;

    .line 42
    sget-object v1, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v2, "event_misc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/bytedance/embedapplog/d/d;

    .line 43
    sget-object v1, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v13, "pack"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/bytedance/embedapplog/d/g;

    .line 44
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v11, 0x0

    const/16 v31, 0x0

    .line 45
    :try_start_0
    iget-object v2, v7, Lcom/bytedance/embedapplog/d/b;->c:Lcom/bytedance/embedapplog/d/b$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 46
    :try_start_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "SELECT * FROM launch ORDER BY local_time_ms DESC LIMIT 5"

    .line 47
    invoke-virtual {v9, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const-wide/high16 v32, -0x8000000000000000L

    const-wide v34, 0x7fffffffffffffffL

    move-object/from16 v5, p1

    move-object v8, v1

    move-wide/from16 v3, v32

    move-wide/from16 v1, v34

    .line 48
    :goto_0
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    move-object/from16 v16, v13

    const/4 v13, 0x1

    if-eqz v6, :cond_b

    .line 49
    invoke-virtual {v0, v10}, Lcom/bytedance/embedapplog/d/f;->a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/d/a;

    .line 50
    iget-object v6, v0, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v13, v16

    const/4 v11, 0x0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v6, v0, Lcom/bytedance/embedapplog/d/f;->j:Ljava/lang/String;

    iget-object v11, v7, Lcom/bytedance/embedapplog/d/b;->b:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v11}, Lcom/bytedance/embedapplog/b/i;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v6, :cond_2

    :try_start_3
    iget v6, v0, Lcom/bytedance/embedapplog/d/f;->i:I

    iget-object v11, v7, Lcom/bytedance/embedapplog/d/b;->b:Lcom/bytedance/embedapplog/b/i;

    .line 52
    invoke-virtual {v11}, Lcom/bytedance/embedapplog/b/i;->c()I

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v6, v11, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v36, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v43, v10

    goto/16 :goto_10

    :catch_0
    move-exception v0

    move-object v11, v10

    goto/16 :goto_e

    .line 53
    :cond_2
    :goto_1
    :try_start_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 54
    invoke-static {v6, v5}, Lcom/bytedance/embedapplog/util/i;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v5, "app_version"

    .line 55
    iget-object v11, v0, Lcom/bytedance/embedapplog/d/f;->j:Ljava/lang/String;

    invoke-virtual {v6, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "version_code"

    .line 56
    iget v11, v0, Lcom/bytedance/embedapplog/d/f;->i:I

    invoke-virtual {v6, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v36, v6

    .line 57
    :goto_2
    iget-wide v5, v0, Lcom/bytedance/embedapplog/d/a;->a:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    cmp-long v5, v5, v1

    if-gez v5, :cond_3

    .line 58
    :try_start_5
    iget-wide v1, v0, Lcom/bytedance/embedapplog/d/a;->a:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    move-wide/from16 v37, v1

    .line 59
    :try_start_6
    iget-wide v1, v0, Lcom/bytedance/embedapplog/d/a;->a:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 60
    :try_start_7
    iget-wide v1, v0, Lcom/bytedance/embedapplog/d/a;->a:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide/from16 v39, v1

    goto :goto_3

    :cond_4
    move-wide/from16 v39, v3

    .line 61
    :goto_3
    :try_start_8
    invoke-direct {v7, v0, v15, v14, v9}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lcom/bytedance/embedapplog/d/h;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v21

    const/4 v1, 0x3

    new-array v11, v1, [Lcom/bytedance/embedapplog/d/a;

    aput-object v19, v11, v31

    aput-object v18, v11, v13

    const/4 v2, 0x2

    aput-object v20, v11, v2

    new-array v6, v1, [Lorg/json/JSONArray;

    const/4 v3, 0x0

    .line 62
    iget-object v5, v0, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v4, v9

    move-object/from16 v41, v6

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embedapplog/d/b;->a([Lcom/bytedance/embedapplog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v1

    .line 63
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-lez v2, :cond_5

    .line 64
    :try_start_9
    iget-wide v2, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    const/4 v4, 0x0

    aget-object v5, v41, v31

    aget-object v6, v41, v13

    const/16 v22, 0x2

    aget-object v23, v41, v22
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v42, v8

    move-object v8, v12

    move-object/from16 v44, v9

    move-object/from16 v43, v10

    move-wide v9, v2

    move-object v3, v11

    const/4 v2, 0x0

    move-object/from16 v11, v36

    move-object/from16 p1, v12

    move-object v12, v4

    move v2, v13

    move-object/from16 v4, v16

    move-object v13, v15

    move-object/from16 v45, v14

    move-object/from16 v14, v21

    move-object/from16 v46, v15

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v23

    :try_start_a
    invoke-virtual/range {v8 .. v17}, Lcom/bytedance/embedapplog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v5, 0x2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v9, v44

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object/from16 v11, v43

    move-object/from16 v9, v44

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    move-object/from16 v44, v9

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v44, v9

    goto/16 :goto_c

    :cond_5
    move-object/from16 v42, v8

    move-object/from16 v44, v9

    move-object/from16 v43, v10

    move-object v3, v11

    move-object/from16 p1, v12

    move v2, v13

    move-object/from16 v45, v14

    move-object/from16 v46, v15

    move-object/from16 v4, v16

    .line 65
    :try_start_b
    iput-boolean v2, v0, Lcom/bytedance/embedapplog/d/f;->k:Z

    .line 66
    iget-wide v9, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v15, v41, v31

    aget-object v16, v41, v2

    const/4 v5, 0x2

    aget-object v17, v41, v5

    move-object/from16 v8, p1

    move-object/from16 v11, v36

    move-object v12, v0

    invoke-virtual/range {v8 .. v17}, Lcom/bytedance/embedapplog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 67
    :goto_4
    sget-boolean v6, Lcom/bytedance/embedapplog/util/h;->a:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v6, :cond_7

    .line 68
    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packer launch, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gtz v8, :cond_6

    move v8, v2

    goto :goto_5

    :cond_6
    move/from16 v8, v31

    :goto_5
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", sid:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_7
    move-object/from16 v8, p1

    move-object/from16 v6, v42

    .line 69
    :try_start_d
    invoke-virtual {v8, v6}, Lcom/bytedance/embedapplog/d/a;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v9, v44

    const/4 v10, 0x0

    :try_start_e
    invoke-virtual {v9, v4, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object v11, v6

    move v6, v1

    .line 70
    :goto_6
    array-length v1, v3

    if-ge v6, v1, :cond_a

    .line 71
    iget-object v12, v0, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move v14, v2

    move-object v13, v10

    move v10, v5

    move-object v2, v3

    move-object v15, v3

    move v3, v6

    move-object v6, v4

    move-object v4, v9

    move-object v5, v12

    move-object v12, v6

    move-object/from16 v6, v41

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embedapplog/d/b;->a([Lcom/bytedance/embedapplog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v6

    .line 72
    aget-object v1, v41, v31

    if-nez v1, :cond_9

    aget-object v1, v41, v14

    if-nez v1, :cond_9

    aget-object v1, v41, v10

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    :goto_7
    move v5, v10

    move-object v4, v12

    move-object v10, v13

    move v2, v14

    move-object v3, v15

    goto :goto_6

    .line 73
    :cond_9
    :goto_8
    iget-wide v1, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v28, v41, v31

    aget-object v29, v41, v14

    aget-object v30, v41, v10

    move-object/from16 v21, v8

    move-wide/from16 v22, v1

    move-object/from16 v24, v36

    invoke-virtual/range {v21 .. v30}, Lcom/bytedance/embedapplog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 74
    invoke-virtual {v8, v11}, Lcom/bytedance/embedapplog/d/a;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v9, v12, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_7

    :cond_a
    move-object v13, v4

    move-object v12, v8

    move-object v8, v11

    move-object/from16 v5, v36

    move-wide/from16 v1, v37

    move-wide/from16 v3, v39

    move-object/from16 v14, v45

    move-object/from16 v15, v46

    move-object v11, v10

    move-object/from16 v10, v43

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v9, v44

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v9, v44

    goto :goto_d

    :cond_b
    move-object/from16 v43, v10

    move v14, v13

    const/4 v10, 0x2

    cmp-long v0, v1, v34

    if-eqz v0, :cond_c

    cmp-long v0, v3, v32

    if-eqz v0, :cond_c

    const-string v0, "DELETE FROM launch WHERE local_time_ms>=? AND local_time_ms<=?"

    new-array v5, v10, [Ljava/lang/String;

    .line 75
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v31

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v14

    invoke-virtual {v9, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_c
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v43, :cond_d

    .line 77
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v9, :cond_e

    .line 78
    :try_start_f
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 79
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_e
    :goto_9
    return v14

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_d

    :catchall_5
    move-exception v0

    :goto_a
    move-object/from16 v43, v10

    :goto_b
    move-object v1, v0

    goto :goto_10

    :catch_6
    move-exception v0

    :goto_c
    move-object/from16 v43, v10

    :goto_d
    move-object/from16 v11, v43

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v13, v11

    move-object v1, v0

    move-object/from16 v43, v13

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v13, v11

    goto :goto_e

    :catchall_7
    move-exception v0

    move-object v13, v11

    move-object v1, v0

    move-object v9, v13

    move-object/from16 v43, v9

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v13, v11

    move-object v9, v13

    move-object v11, v9

    .line 80
    :goto_e
    :try_start_10
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-eqz v11, :cond_f

    .line 81
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v9, :cond_10

    .line 82
    :try_start_11
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 83
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_10
    :goto_f
    return v31

    :catchall_8
    move-exception v0

    move-object v1, v0

    move-object/from16 v43, v11

    :goto_10
    if-eqz v43, :cond_11

    .line 84
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v9, :cond_12

    .line 85
    :try_start_12
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_11

    :catch_a
    move-exception v0

    move-object v2, v0

    .line 86
    invoke-static {v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 87
    :cond_12
    :goto_11
    throw v1
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Z)Z
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 v8, p3

    .line 5
    sget-object v1, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v2, "eventv3"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/d/e;

    .line 6
    sget-object v2, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/embedapplog/d/c;

    .line 7
    sget-object v3, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v4, "event_misc"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/embedapplog/d/d;

    .line 8
    sget-object v4, Lcom/bytedance/embedapplog/d/b;->i:Ljava/util/HashMap;

    const-string v9, "pack"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/bytedance/embedapplog/d/g;

    .line 9
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const/4 v13, 0x0

    const/16 v20, 0x0

    .line 10
    :try_start_0
    iget-object v4, v7, Lcom/bytedance/embedapplog/d/b;->c:Lcom/bytedance/embedapplog/d/b$a;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 11
    :try_start_1
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x3

    new-array v12, v4, [Lcom/bytedance/embedapplog/d/a;

    aput-object v2, v12, v20

    const/4 v10, 0x1

    aput-object v1, v12, v10

    const/16 v21, 0x2

    aput-object v3, v12, v21

    new-array v6, v4, [Lorg/json/JSONArray;

    const/4 v3, 0x0

    .line 12
    iget-object v5, v0, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v11

    move-object/from16 v22, v6

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embedapplog/d/b;->a([Lcom/bytedance/embedapplog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v1

    .line 13
    aget-object v2, v22, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v2, :cond_0

    :try_start_2
    aget-object v2, v22, v20

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v11

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v13, v11

    goto/16 :goto_9

    :cond_0
    :goto_0
    :try_start_3
    aget-object v2, v22, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v2, :cond_1

    :try_start_4
    aget-object v2, v22, v10

    .line 14
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gtz v2, :cond_3

    :cond_1
    :try_start_5
    aget-object v2, v22, v21
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v2, :cond_2

    :try_start_6
    aget-object v2, v22, v21

    .line 15
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-gtz v2, :cond_3

    .line 16
    :cond_2
    :try_start_7
    invoke-direct {v7, v0, v8}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/f;Z)Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v2, :cond_6

    .line 17
    :cond_3
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v7, v0, v8}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/f;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    goto :goto_1

    :cond_4
    move-object v4, v13

    :goto_1
    const/4 v5, 0x0

    const/16 v16, 0x0

    aget-object v17, v22, v20

    aget-object v18, v22, v10

    aget-object v19, v22, v21
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v6, v10

    move-object v10, v15

    move-object v6, v11

    move-object/from16 v23, v12

    move-wide v11, v2

    move-object v3, v13

    move-object/from16 v13, p1

    move-object v2, v14

    move-object v14, v4

    move-object v4, v15

    move-object v15, v5

    :try_start_9
    invoke-virtual/range {v10 .. v19}, Lcom/bytedance/embedapplog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 18
    invoke-virtual {v4, v2}, Lcom/bytedance/embedapplog/d/a;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v14

    invoke-virtual {v6, v9, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 19
    sget-boolean v2, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz v2, :cond_5

    invoke-direct {v7, v0, v8}, Lcom/bytedance/embedapplog/d/b;->a(Lcom/bytedance/embedapplog/d/f;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send launch, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", hadUI:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    const/4 v8, 0x1

    .line 21
    iput-boolean v8, v0, Lcom/bytedance/embedapplog/d/f;->l:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v5, v1

    move-object/from16 v15, v23

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v11

    :goto_2
    move-object v1, v0

    move-object v8, v6

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v6, v11

    :goto_3
    move-object v13, v6

    goto/16 :goto_9

    :cond_6
    move v8, v10

    move-object v6, v11

    move-object v3, v13

    move-object v2, v14

    move-object v4, v15

    move v5, v1

    move-object v15, v12

    .line 22
    :goto_4
    :try_start_a
    array-length v1, v15

    if-ge v5, v1, :cond_a

    .line 23
    iget-object v10, v0, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v13, v3

    move v3, v5

    move-object v11, v4

    move-object v4, v6

    move-object v5, v10

    move/from16 v23, v8

    move-object v8, v6

    move-object/from16 v6, v22

    :try_start_b
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embedapplog/d/b;->a([Lcom/bytedance/embedapplog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v5

    .line 24
    aget-object v1, v22, v20

    if-eqz v1, :cond_7

    aget-object v1, v22, v20

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_8

    :cond_7
    aget-object v1, v22, v23

    if-eqz v1, :cond_9

    aget-object v1, v22, v23

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 25
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    aget-object v17, v22, v20

    aget-object v18, v22, v23

    aget-object v19, v22, v21

    move-object v10, v11

    move-object v6, v11

    move-wide v11, v1

    move-object v1, v13

    move-object/from16 v13, p1

    move-object v2, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    invoke-virtual/range {v10 .. v19}, Lcom/bytedance/embedapplog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Lcom/bytedance/embedapplog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 26
    invoke-virtual {v6, v2}, Lcom/bytedance/embedapplog/d/a;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v14

    invoke-virtual {v8, v9, v1, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_5

    :cond_9
    move-object v6, v11

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object v14, v2

    :goto_5
    move-object v15, v3

    move-object v4, v6

    move-object v6, v8

    move/from16 v8, v23

    move-object v3, v1

    goto :goto_4

    :cond_a
    move/from16 v23, v8

    move-object v8, v6

    .line 27
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v8, :cond_b

    .line 28
    :try_start_c
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 29
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    return v23

    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v8, v6

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v8, v6

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v8, v11

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v8, v11

    :goto_7
    move-object v13, v8

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v1, v13

    move-object v8, v1

    :goto_8
    move-object v1, v0

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v1, v13

    .line 30
    :goto_9
    :try_start_d
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v13, :cond_c

    .line 31
    :try_start_e
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 32
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_c
    :goto_a
    return v20

    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object v8, v13

    :goto_b
    if-eqz v8, :cond_d

    .line 33
    :try_start_f
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_c

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 34
    invoke-static {v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 35
    :cond_d
    :goto_c
    throw v1
.end method
