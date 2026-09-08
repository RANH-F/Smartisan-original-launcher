.class final Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;
.super Ljava/lang/Object;
.source "MmsCardDataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a(Landroid/content/Context;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/List;ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->a:Ljava/util/List;

    iput p2, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->b:I

    iput-object p3, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2
    iget v2, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    .line 4
    invoke-static {v1, v7}, Lcom/smartisanos/magicflow/h/n;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/h/m;

    .line 7
    invoke-virtual {v4}, Lcom/smartisanos/magicflow/h/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lb/a/a/a/a/a/a/e;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    iget v3, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/smartisanos/magicflow/o/a;->a(Landroid/content/Context;ILjava/util/List;Ljava/util/List;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    goto/16 :goto_3

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/k;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/h/m;

    .line 14
    invoke-virtual {v4}, Lcom/smartisanos/magicflow/h/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lb/a/a/a/a/a/a/e;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    .line 16
    iget-object v4, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    iget v5, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/smartisanos/magicflow/o/a;->a(Landroid/content/Context;ILjava/util/List;Ljava/util/List;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_3

    .line 18
    :cond_4
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/j;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/h/m;

    .line 21
    invoke-virtual {v4}, Lcom/smartisanos/magicflow/h/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_5
    iget-object v3, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lb/a/a/a/a/a/a/e;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    .line 23
    iget-object v4, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    iget v5, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/smartisanos/magicflow/o/a;->a(Landroid/content/Context;ILjava/util/List;Ljava/util/List;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    :goto_3
    move-object v0, v1

    goto :goto_6

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 26
    iget-object v2, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 27
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_7

    goto :goto_4

    .line 30
    :cond_7
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 31
    :cond_8
    invoke-static {v1, v6, v7}, Lcom/smartisanos/magicflow/h/y;->a(Ljava/util/HashMap;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/h/m;

    .line 34
    invoke-virtual {v4}, Lcom/smartisanos/magicflow/h/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 35
    :cond_9
    iget-object v3, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lb/a/a/a/a/a/a/e;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 36
    iget-object v3, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->c:Landroid/content/Context;

    iget v4, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->b:I

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/smartisanos/magicflow/o/a;->a(Landroid/content/Context;ILjava/util/List;Ljava/util/List;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_3

    :cond_a
    :goto_6
    if-nez v0, :cond_c

    .line 38
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return by lose card type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_b
    return-void

    .line 39
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/h/m;

    .line 40
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/smartisanos/magicflow/receiver/MmsCardDataReceiver;->a()Lcom/smartisanos/magicflow/LOG;

    move-result-object v2

    const-string v3, "receiver call updateCardItem !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 41
    :cond_d
    invoke-static {v1}, Lcom/smartisanos/magicflow/cache/LifeInfoDataCache;->updateLifeItem(Lcom/smartisanos/magicflow/h/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    return-void
.end method
