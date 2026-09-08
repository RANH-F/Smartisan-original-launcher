.class public Lcom/smartisanos/magicflow/h/s;
.super Ljava/lang/Object;
.source "PackingData.java"


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/s;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/s;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "storeCollectionNews"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/h/s$b;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/h/s$b;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_2

    .line 7
    sget-object p0, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "storeCollectionNews return by bundle no data"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 20

    const-string v1, "NewsChannelOpened"

    const-string v2, "Movie"

    const-string v3, "Hotel"

    const-string v4, "Train"

    const-string v5, "Flight"

    const-string v6, "TouTiao"

    const-string v7, "SmartisanReader"

    const-string v8, "AlipayScan"

    const-string v9, "AlipayQRCode"

    const-string v10, "DisabledNewsChannelOrder"

    const-string v11, "EnabledNewsChannelOrder"

    const-string v12, "packing DataCache init"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/n;->b()I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-lez v13, :cond_1

    .line 2
    :try_start_1
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingInfoDB has data count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :cond_0
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v1, v12}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/magicflow/cache/DataCache;->initLocalData(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v12

    goto/16 :goto_18

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v12

    goto/16 :goto_16

    .line 5
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "content://com.smartisanos.launcher.provider.call_method"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "packing_magic_flow_data"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v16, v12

    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v13, v14, v15, v12, v12}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_2a

    .line 6
    invoke-virtual {v13}, Landroid/os/Bundle;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    goto/16 :goto_13

    .line 7
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v15, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v15}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    const-string v12, "EnabledCategoryOrder"

    .line 9
    iput-object v12, v15, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    .line 10
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    const/4 v1, 0x0

    .line 11
    :goto_1
    sget-object v2, Lcom/smartisanos/magicflow/h/v;->b:[Ljava/lang/String;

    array-length v2, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v19, v3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 12
    :try_start_4
    sget-object v2, Lcom/smartisanos/magicflow/h/v;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    sget-object v2, Lcom/smartisanos/magicflow/h/v;->b:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    const-string v2, ";"

    .line 14
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v19

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_18

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_16

    .line 15
    :cond_4
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v15}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    const-string v2, "DisabledCategoryOrder"

    .line 18
    iput-object v2, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 19
    iput-object v2, v1, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    .line 20
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v13, v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v13, v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    sget-object v12, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enabledNewsChannelOrder = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 24
    sget-object v3, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "disabledNewsChannelOrder = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 25
    invoke-static {v11}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v3, :cond_7

    .line 26
    :try_start_6
    new-instance v3, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v3}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 27
    iput-object v11, v3, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 30
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v3, "initNewsList"

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->f()V

    goto :goto_3

    .line 32
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v1, "__all__"

    goto :goto_2

    .line 33
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "__all__;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_2
    iput-object v1, v3, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 36
    :cond_7
    :goto_3
    :try_start_7
    invoke-static {v10}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v1, :cond_8

    .line 37
    :try_start_8
    new-instance v1, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 38
    iput-object v10, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    .line 39
    iput-object v2, v1, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 41
    :cond_8
    :try_start_9
    invoke-static {v9}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v1, :cond_a

    const/4 v1, 0x1

    .line 42
    :try_start_a
    invoke-virtual {v13, v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    new-instance v1, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 44
    iput-object v9, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    .line 45
    :goto_4
    iput v3, v1, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 46
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AlipayQRCode = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 48
    :cond_a
    :try_start_b
    invoke-static {v8}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v1, :cond_c

    const/4 v1, 0x1

    .line 49
    :try_start_c
    invoke-virtual {v13, v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 50
    new-instance v1, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 51
    iput-object v8, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    if-eqz v2, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 52
    :goto_5
    iput v3, v1, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 53
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AlipayScan = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 55
    :cond_c
    :try_start_d
    invoke-static {v7}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v1, :cond_e

    const/4 v1, 0x1

    .line 56
    :try_start_e
    invoke-virtual {v13, v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 57
    new-instance v1, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 58
    iput-object v7, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    if-eqz v2, :cond_d

    const/4 v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    .line 59
    :goto_6
    iput v3, v1, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 60
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartisanReader = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 62
    :cond_e
    :try_start_f
    invoke-static {v6}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-nez v1, :cond_10

    const/4 v1, 0x1

    .line 63
    :try_start_10
    invoke-virtual {v13, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 64
    new-instance v1, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 65
    iput-object v6, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    if-eqz v2, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    .line 66
    :goto_7
    iput v3, v1, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 67
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouTiao = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 69
    :cond_10
    :try_start_11
    invoke-static {v5}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-nez v1, :cond_12

    const/4 v1, 0x1

    .line 70
    :try_start_12
    invoke-virtual {v13, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 71
    new-instance v1, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 72
    iput-object v5, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    .line 73
    :goto_8
    iput v3, v1, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 74
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flight = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 76
    :cond_12
    :try_start_13
    invoke-static {v4}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-nez v1, :cond_14

    const/4 v1, 0x1

    .line 77
    :try_start_14
    invoke-virtual {v13, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 78
    new-instance v1, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 79
    iput-object v4, v1, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    if-eqz v2, :cond_13

    const/4 v3, 0x1

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    .line 80
    :goto_9
    iput v3, v1, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 81
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Train = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 83
    :cond_14
    :try_start_15
    invoke-static/range {v19 .. v19}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-nez v1, :cond_16

    move-object/from16 v1, v19

    const/4 v2, 0x1

    .line 84
    :try_start_16
    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 85
    new-instance v2, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v2}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 86
    iput-object v1, v2, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    if-eqz v3, :cond_15

    const/4 v1, 0x1

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    .line 87
    :goto_a
    iput v1, v2, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 88
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hotel = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 90
    :cond_16
    :try_start_17
    invoke-static/range {v18 .. v18}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-nez v1, :cond_18

    move-object/from16 v1, v18

    const/4 v2, 0x1

    .line 91
    :try_start_18
    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 92
    new-instance v4, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v4}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 93
    iput-object v1, v4, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    if-eqz v3, :cond_17

    move v1, v2

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    .line 94
    :goto_b
    iput v1, v4, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 95
    invoke-virtual {v4}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Movie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_c

    :cond_18
    const/4 v2, 0x1

    .line 97
    :goto_c
    :try_start_19
    invoke-static/range {v17 .. v17}, Lcom/smartisanos/magicflow/h/z/n;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    if-nez v1, :cond_1a

    move-object/from16 v1, v17

    const/4 v3, 0x0

    .line 98
    :try_start_1a
    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 99
    new-instance v5, Lcom/smartisanos/magicflow/h/u;

    invoke-direct {v5}, Lcom/smartisanos/magicflow/h/u;-><init>()V

    .line 100
    iput-object v1, v5, Lcom/smartisanos/magicflow/h/u;->b:Ljava/lang/String;

    if-eqz v4, :cond_19

    goto :goto_d

    :cond_19
    move v2, v3

    .line 101
    :goto_d
    iput v2, v5, Lcom/smartisanos/magicflow/h/u;->d:I

    .line 102
    invoke-virtual {v5}, Lcom/smartisanos/magicflow/h/u;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewsChannelOpened = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 104
    :cond_1a
    :try_start_1b
    invoke-static {v14}, Lcom/smartisanos/magicflow/h/z/n;->a(Ljava/util/List;)V

    const-string v1, "Flight_Card"

    .line 105
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    if-eqz v1, :cond_1d

    .line 106
    :try_start_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 108
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {v4}, Lcom/smartisanos/magicflow/h/j;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/j;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/magicflow/h/z/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 111
    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/LifeInfoDataCache;->updateLifeItem(Lcom/smartisanos/magicflow/h/m;)V

    goto :goto_e

    .line 112
    :cond_1c
    sget-object v2, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :cond_1d
    :try_start_1d
    const-string v1, "Train_Card"

    .line 113
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-eqz v1, :cond_20

    .line 114
    :try_start_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 117
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {v4}, Lcom/smartisanos/magicflow/h/y;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/y;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/y;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/magicflow/h/z/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 120
    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/LifeInfoDataCache;->updateLifeItem(Lcom/smartisanos/magicflow/h/m;)V

    goto :goto_f

    .line 121
    :cond_1f
    sget-object v2, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Train = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :cond_20
    :try_start_1f
    const-string v1, "Hotel_Card"

    .line 122
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    if-eqz v1, :cond_23

    .line 123
    :try_start_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 125
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {v4}, Lcom/smartisanos/magicflow/h/k;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/k;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/magicflow/h/z/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 128
    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/LifeInfoDataCache;->updateLifeItem(Lcom/smartisanos/magicflow/h/m;)V

    goto :goto_10

    .line 129
    :cond_22
    sget-object v2, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hotel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    :cond_23
    :try_start_21
    const-string v1, "Movie_Card"

    .line 130
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_3
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    if-eqz v1, :cond_26

    .line 131
    :try_start_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 133
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {v4}, Lcom/smartisanos/magicflow/h/n;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/n;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/magicflow/h/z/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 136
    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/LifeInfoDataCache;->updateLifeItem(Lcom/smartisanos/magicflow/h/m;)V

    goto :goto_11

    .line 137
    :cond_25
    sget-object v2, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Movie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :cond_26
    :try_start_23
    const-string v1, "XiaoYuan"

    .line 138
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_3
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    if-eqz v1, :cond_29

    .line 139
    :try_start_24
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/magicflow/h/z/o/c;->a(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 141
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 142
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {v4}, Lcom/smartisanos/magicflow/h/z/o/d;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/z/o/d;

    move-result-object v3

    .line 144
    iget-object v4, v3, Lcom/smartisanos/magicflow/h/z/o/d;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisanos/magicflow/h/z/o/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 145
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/z/o/d;->a()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/magicflow/h/z/o/b;->a(Landroid/content/ContentValues;)I

    goto :goto_12

    .line 146
    :cond_28
    sget-object v2, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xiaoYuans = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 147
    :cond_29
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    move-object/from16 v2, v16

    goto :goto_17

    :cond_2a
    :goto_13
    move-object/from16 v2, v16

    .line 148
    :try_start_25
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v3, "return by bundle no data"

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    .line 149
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_15

    :catchall_2
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_14

    :catch_3
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_15

    :catchall_3
    move-exception v0

    move-object v2, v12

    :goto_14
    move-object v1, v0

    goto :goto_18

    :catch_4
    move-exception v0

    move-object v2, v12

    :goto_15
    move-object v1, v0

    .line 150
    :goto_16
    :try_start_26
    sget-boolean v3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v3, :cond_2b

    .line 151
    sget-object v3, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 152
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    .line 153
    sget-object v1, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    :goto_17
    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 154
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/magicflow/cache/DataCache;->initLocalData(Landroid/content/Context;)V

    return-void

    :catchall_4
    move-exception v0

    goto :goto_14

    .line 155
    :goto_18
    sget-object v3, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v3, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/magicflow/cache/DataCache;->initLocalData(Landroid/content/Context;)V

    .line 157
    throw v1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/s;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "packingDataFromLauncher !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/h/s$a;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/h/s$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
