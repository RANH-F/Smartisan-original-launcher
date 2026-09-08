.class final Lcom/smartisanos/magicflow/cache/ExpressDataCache$4;
.super Ljava/lang/Object;
.source "ExpressDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/ExpressDataCache;->removeExpressCardItem(Lcom/smartisanos/magicflow/h/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/smartisanos/magicflow/h/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$4;->val$info:Lcom/smartisanos/magicflow/h/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->access$500()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeExpressCardItem info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$4;->val$info:Lcom/smartisanos/magicflow/h/g;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$4;->val$info:Lcom/smartisanos/magicflow/h/g;

    iget v0, v0, Lcom/smartisanos/magicflow/h/m;->a:I

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/c;->a(I)Z

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$4$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$4$1;-><init>(Lcom/smartisanos/magicflow/cache/ExpressDataCache$4;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
