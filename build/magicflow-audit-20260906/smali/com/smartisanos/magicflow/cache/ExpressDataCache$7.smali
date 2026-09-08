.class final Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;
.super Ljava/lang/Object;
.source "ExpressDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/ExpressDataCache;->sendVerificationCode(Landroid/content/Context;Ljava/lang/String;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$phoneNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    iput-object p3, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$phoneNum:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/n;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$context:Landroid/content/Context;

    const v2, 0x7f0d01c3

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    invoke-interface {v1, v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;->onCallback(Z)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$phoneNum:Ljava/lang/String;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->sendVerificationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/h;->f(Ljava/lang/String;)Lcom/smartisanos/magicflow/h/h;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/h;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$context:Landroid/content/Context;

    const v3, 0x7f0d02b5

    invoke-static {v1, v3}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->showErrToast(Landroid/content/Context;Lcom/smartisanos/magicflow/h/h;)V

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    invoke-interface {v1, v2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;->onCallback(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->access$500()Lcom/smartisanos/magicflow/LOG;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendVerificationCode err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$7;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    if-eqz v1, :cond_4

    .line 17
    invoke-interface {v1, v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;->onCallback(Z)V

    :cond_4
    :goto_1
    return-void
.end method
