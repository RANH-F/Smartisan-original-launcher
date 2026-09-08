.class Lcom/smartisanos/magicflow/c$i;
.super Lcom/smartisanos/magicflow/o/d;
.source "MagicflowTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartisanos/magicflow/c;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/o/d;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "A350024"

    const-string v2, "num"

    .line 1
    :try_start_0
    sget-boolean v3, Lcom/smartisanos/magicflow/h/d;->k:Z

    if-eqz v3, :cond_1

    .line 2
    sget-boolean v3, Lcom/smartisanos/magicflow/h/d;->l:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v6

    const-string v7, "A352011"

    const-string v8, "open"

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v6, v7, v3}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/l/a;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 8
    :goto_1
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v6

    const-string v7, "A350042"

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v6, v7, v3}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledCategoryList()Ljava/util/List;

    move-result-object v3

    const-string v6, "MusicFastPayment"

    .line 12
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 13
    iget-object v7, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v8, "A351001"

    invoke-static {v7, v8, v6}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    const-string v6, "ShortcutButton"

    .line 14
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 15
    iget-object v7, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v8, "A351002"

    invoke-static {v7, v8, v6}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    const-string v6, "AppSuggestion"

    .line 16
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 17
    iget-object v7, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v8, "A351003"

    invoke-static {v7, v8, v6}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    const-string v6, "AppRecommend"

    .line 18
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 19
    iget-object v7, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v8, "A351008"

    invoke-static {v7, v8, v6}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    const-string v6, "Calendar"

    .line 20
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 21
    iget-object v7, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v8, "A351005"

    invoke-static {v7, v8, v6}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    .line 22
    sget-object v8, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->CALENDAR_INFO_LIST:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v7

    .line 23
    :goto_2
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v9

    const-string v10, "A352008"

    const-string v11, "show_days"

    if-eqz v6, :cond_4

    .line 24
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getCalendarTimeRange()I

    move-result v6

    goto :goto_3

    :cond_4
    move v6, v7

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v9, v10, v6}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "LifeInfo"

    .line 26
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 27
    iget-object v9, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v10, "A351006"

    invoke-static {v9, v10, v6}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    if-eqz v6, :cond_a

    const-string v6, "Movie"

    .line 28
    invoke-static {v6}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 29
    sget-object v9, Lcom/smartisanos/magicflow/cache/MovieDataCache;->MOVIE_INFO_LIST:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_4

    :cond_5
    move v9, v7

    :goto_4
    const-string v10, "Flight"

    .line 30
    invoke-static {v10}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 31
    sget-object v11, Lcom/smartisanos/magicflow/cache/FlightDataCache;->FLIGHT_INFO_LIST:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_5

    :cond_6
    move v11, v7

    :goto_5
    const-string v12, "Train"

    .line 32
    invoke-static {v12}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 33
    sget-object v13, Lcom/smartisanos/magicflow/cache/TrainDataCache;->TRAIN_INFO_LIST:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_6

    :cond_7
    move v13, v7

    :goto_6
    const-string v14, "Hotel"

    .line 34
    invoke-static {v14}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 35
    sget-object v15, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    goto :goto_7

    :cond_8
    move v15, v7

    :goto_7
    const-string v16, "Express"

    .line 36
    invoke-static/range {v16 .. v16}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 37
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isAgreedExpressProtocol()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 38
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->getExpressExpressItemList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    .line 39
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->getExpressAccountInfoList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    goto :goto_8

    :cond_9
    move/from16 v17, v7

    move/from16 v18, v17

    :goto_8
    move/from16 v19, v11

    move v11, v9

    move/from16 v9, v16

    move/from16 v16, v15

    move v15, v13

    move/from16 v13, v19

    goto :goto_9

    :cond_a
    move v11, v7

    move v13, v11

    move v15, v13

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 40
    :goto_9
    iget-object v5, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v4, "A352001"

    invoke-static {v5, v4, v6}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    .line 41
    iget-object v4, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v5, "A352002"

    invoke-static {v4, v5, v10}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    .line 42
    iget-object v4, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v5, "A352003"

    invoke-static {v4, v5, v12}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    .line 43
    iget-object v4, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v5, "A352004"

    invoke-static {v4, v5, v14}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    .line 44
    iget-object v4, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v5, "A352005"

    invoke-static {v4, v5, v9}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    .line 45
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v4

    const-string v5, "A352009"

    .line 46
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-virtual {v4, v5, v6}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v4

    const-string v5, "A352010"

    .line 49
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual {v4, v5, v6}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "calendar_num"

    .line 52
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "cinema_ticket_num"

    .line 53
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "flight_num"

    .line 54
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "train_tickets"

    .line 55
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "hotel_num"

    .line 56
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v5

    const-string v6, "A350015"

    invoke-static {v4}, Lcom/smartisanos/magicflow/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "News"

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 59
    iget-object v5, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v6, "A351007"

    invoke-static {v5, v6, v4}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    if-eqz v4, :cond_b

    .line 60
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->getCurrentCheckedType()I

    move-result v4

    const-string v5, "TouTiao"

    .line 61
    invoke-static {v5}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "SmartisanReader"

    .line 62
    invoke-static {v6}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v6

    goto :goto_a

    :cond_b
    move v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 63
    :goto_a
    iget-object v8, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v9, "A352006"

    invoke-static {v8, v9, v5}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    .line 64
    iget-object v5, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v8, "A352007"

    invoke-static {v5, v8, v6}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eq v4, v7, :cond_c

    .line 65
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v6, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    invoke-static {v6}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/smartisanos/magicflow/h/t;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x2932e00

    cmp-long v6, v8, v10

    if-lez v6, :cond_c

    .line 66
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v6

    const-string v8, "page"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v8, v4}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v6, v0, v4}, Lsmartisanos/app/tracker/Agent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v4, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    invoke-static {v4}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v4, v0, v8, v9}, Lcom/smartisanos/magicflow/h/t;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 70
    :cond_c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 71
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledNewsChannelList()Ljava/util/List;

    move-result-object v4

    .line 72
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 73
    invoke-static {}, Lcom/smartisanos/magicflow/h/p;->b()Lcom/smartisanos/magicflow/h/p;

    move-result-object v8

    .line 74
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "__all__"

    .line 75
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 76
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    .line 77
    invoke-static {v11}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v8, v11, v9}, Lcom/smartisanos/magicflow/h/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 78
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    .line 79
    :cond_e
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "interests_num"

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    .line 80
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "added_interests"

    .line 81
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v0

    const-string v5, "A350030"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Contacts"

    .line 83
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    iget-object v3, v1, Lcom/smartisanos/magicflow/c$i;->a:Lcom/smartisanos/magicflow/c;

    const-string v4, "A351004"

    invoke-static {v3, v4, v0}, Lcom/smartisanos/magicflow/c;->a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V

    if-eqz v0, :cond_f

    .line 85
    sget-object v0, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->FAVORITE_CONTACT_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 86
    :cond_f
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v0

    const-string v3, "A350057"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lsmartisanos/app/tracker/Agent;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 88
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_10

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 90
    :cond_10
    invoke-static {}, Lcom/smartisanos/magicflow/c;->g()Lcom/smartisanos/magicflow/LOG;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_c
    return-void
.end method
