.class public Lcom/smartisanos/magicflow/o/a;
.super Ljava/lang/Object;
.source "CardCombineUtil.java"


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/o/a;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/o/a;->a:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/util/HashMap;Ljava/util/List;ZLjava/util/HashMap;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    invoke-static {p2, p5}, Lcom/smartisanos/magicflow/h/n;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    invoke-static {p0, p2}, Lcom/smartisanos/magicflow/h/k;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 25
    :cond_2
    invoke-static {p2}, Lcom/smartisanos/magicflow/h/j;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 26
    :cond_3
    invoke-static {p2, p3, p4}, Lcom/smartisanos/magicflow/h/y;->a(Ljava/util/HashMap;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/util/List;Ljava/util/List;ZLjava/util/HashMap;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/a/a/a/d;

    .line 3
    sget-boolean v3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    const-string v4, ""

    if-eqz v3, :cond_1

    .line 4
    sget-object v3, Lcom/smartisanos/magicflow/o/a;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getTrainCombineResult"

    invoke-virtual {v3, v6, v5}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {v2}, Lb/a/a/a/a/a/a/d;->c()I

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lb/a/a/a/a/a/a/d;->d()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lb/a/a/a/a/a/a/d;->a()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v2}, Lb/a/a/a/a/a/a/d;->e()Ljava/util/Map;

    move-result-object v6

    .line 9
    move-object v9, v6

    check-cast v9, Ljava/util/HashMap;

    move-object v7, p0

    move v8, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static/range {v7 .. v12}, Lcom/smartisanos/magicflow/o/a;->a(Landroid/content/Context;ILjava/util/HashMap;Ljava/util/List;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 10
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/magicflow/h/m;

    .line 11
    iput-object v3, v6, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    .line 12
    iput-object v5, v6, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Lb/a/a/a/a/a/a/d;->b()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 14
    iput v5, v6, Lcom/smartisanos/magicflow/h/m;->f:I

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v2}, Lb/a/a/a/a/a/a/d;->b()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 16
    iput v5, v6, Lcom/smartisanos/magicflow/h/m;->f:I

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v2}, Lb/a/a/a/a/a/a/d;->b()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 18
    iput v3, v6, Lcom/smartisanos/magicflow/h/m;->f:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x4

    .line 19
    iput v2, v6, Lcom/smartisanos/magicflow/h/m;->f:I

    .line 20
    :goto_1
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_6

    .line 21
    sget-object v2, Lcom/smartisanos/magicflow/o/a;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cardItemInfo"

    invoke-virtual {v2, v4, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_6
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    :cond_8
    return-object v0
.end method
