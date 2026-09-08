.class final Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;
.super Ljava/lang/Object;
.source "ExpressDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/ExpressDataCache;->registerAccount(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$map:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/h/e;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/e;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/n;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$context:Landroid/content/Context;

    const v2, 0x7f0d01c3

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$map:Ljava/util/HashMap;

    const-string v2, "status"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$map:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->registerAccount(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/h;->d(Ljava/lang/String;)Lcom/smartisanos/magicflow/h/h;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/h;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v3, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$map:Ljava/util/HashMap;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    .line 11
    iget-wide v3, v1, Lcom/smartisanos/magicflow/h/h;->b:J

    iput-wide v3, v0, Lcom/smartisanos/magicflow/h/e;->a:J

    .line 12
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->addAccount(Lcom/smartisanos/magicflow/h/e;)Z

    .line 13
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$context:Landroid/content/Context;

    const v3, 0x7f0d0227

    invoke-static {v1, v3}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->showErrToast(Landroid/content/Context;Lcom/smartisanos/magicflow/h/h;)V

    :goto_1
    move v1, v2

    .line 15
    :goto_2
    new-instance v2, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;-><init>(Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;ZLcom/smartisanos/magicflow/h/e;)V

    invoke-static {v2}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
