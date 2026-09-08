.class public Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsCardDataReceiver.java"


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "05008"

    .line 2
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->b:Ljava/lang/String;

    const-string v0, "05014"

    .line 3
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->c:Ljava/lang/String;

    const-string v0, "05037"

    .line 4
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->d:Ljava/lang/String;

    const-string v0, "05010"

    .line 5
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->e:Ljava/lang/String;

    const-string v0, "05052"

    .line 6
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->f:Ljava/lang/String;

    const-string v0, "05001"

    .line 7
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->g:Ljava/lang/String;

    const-string v0, "05042"

    .line 8
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->h:Ljava/lang/String;

    const-string v0, "05043"

    .line 9
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->i:Ljava/lang/String;

    const-string v0, "05007"

    .line 10
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->j:Ljava/lang/String;

    const-string v0, "05031"

    .line 11
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->k:Ljava/lang/String;

    const-string v0, "05048"

    .line 12
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->l:Ljava/lang/String;

    const-string v0, "05015"

    .line 13
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->m:Ljava/lang/String;

    const-string v0, "05021"

    .line 14
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->n:Ljava/lang/String;

    const-string v0, "14010"

    .line 15
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->o:Ljava/lang/String;

    const-string v0, "15002"

    .line 16
    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->p:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    .line 18
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->g:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->m:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->o:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method private static a(Landroid/content/Context;ILjava/util/List;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;

    invoke-direct {v0, p2, p1, p0}, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;-><init>(Ljava/util/List;ILandroid/content/Context;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    :try_start_0
    const-string v0, "com.smartisanos.xysdk.query_parsed_card_msg"

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "parsed_card_info"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 3
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "abandon action [com.smartisanos.xysdk.query_parsed_card_msg] by valueMap is null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "title_num"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 5
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "lose title_num, abandon data"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 6
    :cond_3
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_4

    .line 7
    sget-object v2, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v3, "debug value map !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    sget-object v5, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], value < "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " >"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_4
    sget-object v2, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    sget-object v2, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->q:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_7

    .line 13
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown scene num ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 14
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-eq v2, v0, :cond_c

    const/16 v0, 0x8

    if-eq v2, v0, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v0, "parsed_movie_data"

    .line 16
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 17
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_9

    .line 18
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movieData = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_9
    if-nez p2, :cond_b

    .line 19
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_a

    sget-object p1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "lose parsed_movie_data !"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_a
    return-void

    .line 20
    :cond_b
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    const-string v0, "parsed_train_station_list"

    .line 21
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 22
    sget-object v0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_d

    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_f

    .line 24
    :cond_d
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_e

    sget-object p1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "lose parsed_train_station_list !"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_e
    return-void

    :cond_f
    if-nez v0, :cond_10

    .line 25
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_10

    .line 26
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trainStationList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_10
    if-eqz v0, :cond_11

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    :cond_11
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_2
    invoke-static {p1, v2, v3}, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a(Landroid/content/Context;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_3
    return-void
.end method
