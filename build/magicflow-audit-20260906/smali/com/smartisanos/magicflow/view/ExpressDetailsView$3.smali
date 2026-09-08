.class Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;
.super Ljava/lang/Object;
.source "ExpressDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/ExpressDetailsView;->loadDetailsData(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->val$map:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->p(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d01c3

    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$400(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->val$map:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getExpressDetails(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/h;->c(Ljava/lang/String;)Lcom/smartisanos/magicflow/h/h;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/h;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/h;->d:Lcom/smartisanos/magicflow/h/f;

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00db

    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    new-instance v2, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3$1;

    invoke-direct {v2, p0, v0}, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3$1;-><init>(Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;Lcom/smartisanos/magicflow/h/f;)V

    invoke-static {v2}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    iget-object v2, v2, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->showErrToast(Landroid/content/Context;Lcom/smartisanos/magicflow/h/h;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$400(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Z)V

    return-void
.end method
