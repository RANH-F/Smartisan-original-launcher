.class Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$5;
.super Ljava/lang/Object;
.source "ExpressSettingView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$5;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$5;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->access$100(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
