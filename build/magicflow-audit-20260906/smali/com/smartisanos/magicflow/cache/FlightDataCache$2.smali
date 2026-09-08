.class final Lcom/smartisanos/magicflow/cache/FlightDataCache$2;
.super Ljava/lang/Object;
.source "FlightDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/FlightDataCache;->removeFlightCardItem(Lcom/smartisanos/magicflow/h/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/smartisanos/magicflow/h/m;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/FlightDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/FlightDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/m;

    iget v0, v0, Lcom/smartisanos/magicflow/h/m;->a:I

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/c;->a(I)Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/FlightDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/m;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "CombineUtil.deleteByComposeId resultCount = "

    if-nez v0, :cond_0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/cache/FlightDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/m;

    iget-object v2, v2, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lb/a/a/a/a/a/a/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 4
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/FlightDataCache;->access$000()Lcom/smartisanos/magicflow/LOG;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " info.combineKeyInfo = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/FlightDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/m;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/cache/FlightDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/m;

    iget-object v2, v2, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lb/a/a/a/a/a/a/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 7
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/cache/FlightDataCache;->access$000()Lcom/smartisanos/magicflow/LOG;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " info.parentKeyInfo = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/FlightDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/m;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Lcom/smartisanos/magicflow/cache/FlightDataCache$2$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/cache/FlightDataCache$2$1;-><init>(Lcom/smartisanos/magicflow/cache/FlightDataCache$2;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
