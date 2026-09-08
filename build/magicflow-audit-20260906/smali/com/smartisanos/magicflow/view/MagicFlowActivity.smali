.class public Lcom/smartisanos/magicflow/view/MagicFlowActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MagicFlowActivity.java"


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

.field private mFromSearch:Z

.field private mFromSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method


# virtual methods
.method public enterView(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/magicflow/view/DetailsContentView;->enterView(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->canBack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 4
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mFromSetting:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const v1, 0x7f01000c

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f010018

    const v1, 0x7f010019

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "onCreate !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 4
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "MagicFlowActivity by intent == null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_1
    const-string v0, "extra_view_type"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "MagicFlowActivity by no EXTRA_VIEW_TYPE"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomSettings"

    .line 12
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "MagicFlowActivity by no CustomSettings"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_4
    const v0, 0x7f0b007f

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const/4 v0, 0x0

    const-string v1, "from_search"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mFromSearch:Z

    const-string v1, "from_settings"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mFromSetting:Z

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/MagicFlowActivity;I)V

    const v0, 0x7f08018e

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/DetailsContentView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    .line 20
    invoke-static {}, Lcom/smartisanos/magicflow/b;->k()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    invoke-static {}, Lcom/smartisanos/magicflow/b;->k()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/view/RootView;->setDetailsContentView(Lcom/smartisanos/magicflow/view/DetailsContentView;I)V

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/DetailsContentView;->showContent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/MagicFlowActivity;I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->onDestroy()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/b;->k()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/b;->k()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 8
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/view/RootView;->setDetailsContentView(Lcom/smartisanos/magicflow/view/DetailsContentView;I)V

    :cond_2
    return-void
.end method

.method public onHomeKeyEvent()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f01000e

    const v1, 0x7f01000c

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onLocationPermissionStateChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->onLocationPermissionStateChanged()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mFromSearch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mFromSetting:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->onDestroy()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/DetailsContentView;->showContent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->onStop()V

    :cond_0
    const/high16 v0, 0x100000

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 4
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->onResume()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->onStart()V

    :cond_0
    return-void
.end method
