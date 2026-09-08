.class final Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$3;
.super Ljava/lang/Object;
.source "ExpressSettingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->delPush(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mailNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$3;->val$mailNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$3;->val$mailNo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$3;->val$mailNo:Ljava/lang/String;

    const-string v2, "mail_no"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "https://api-screen.smartisan.com/express/delPush"

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getBaseHeader()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/h;->b(Ljava/lang/String;)Lcom/smartisanos/magicflow/h/h;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/h;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->access$000()Lcom/smartisanos/magicflow/LOG;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delPush code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/smartisanos/magicflow/h/h;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/h;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mail_no="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$3;->val$mailNo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->access$100()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$3;->val$mailNo:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->access$100()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/t;->a(Landroid/content/Context;Ljava/util/Set;)V

    :cond_1
    return-void
.end method
