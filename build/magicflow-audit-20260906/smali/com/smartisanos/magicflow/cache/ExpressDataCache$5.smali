.class final Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;
.super Ljava/lang/Object;
.source "ExpressDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/ExpressDataCache;->unRegisterAccount(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$map:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$context:Landroid/content/Context;

    const v1, 0x7f0d01c3

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    :goto_0
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    goto :goto_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$map:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$map:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->unRegisterAccount(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/h;->e(Ljava/lang/String;)Lcom/smartisanos/magicflow/h/h;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/h;->b()Z

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$map:Ljava/util/HashMap;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    if-eqz v1, :cond_2

    .line 10
    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/h/z/g;->a(J)Z

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$context:Landroid/content/Context;

    const v4, 0x7f0d02ad

    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->showErrToast(Landroid/content/Context;Lcom/smartisanos/magicflow/h/h;)V

    :goto_1
    move v0, v1

    move-wide v1, v2

    .line 13
    :goto_2
    new-instance v3, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;-><init>(Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;ZJ)V

    invoke-static {v3}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
