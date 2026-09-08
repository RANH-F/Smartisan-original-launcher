.class Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$4;
.super Landroid/text/style/ClickableSpan;
.source "ExpressSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->setTipsText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$4;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/smartisanos/magicflow/view/ToolWebView;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$4;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    return-void
.end method
