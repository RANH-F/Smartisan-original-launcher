.class final Lcom/smartisanos/magicflow/cache/ExpressDataCache$2;
.super Ljava/lang/Object;
.source "ExpressDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/ExpressDataCache;->updateExpressAccountCloud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getRegisterAccountList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->access$100(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->setAccountInfoSimMark(Ljava/util/List;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/h/e;

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/h/e;->a()Landroid/content/ContentValues;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/z/g;->a(Ljava/util/List;)I

    .line 8
    new-instance v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache$2$1;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$2$1;-><init>(Lcom/smartisanos/magicflow/cache/ExpressDataCache$2;Ljava/util/List;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
