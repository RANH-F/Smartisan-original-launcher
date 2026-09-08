.class Lcom/smartisanos/magicflow/view/settings/MainSettingView$6;
.super Ljava/lang/Object;
.source "MainSettingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/MainSettingView;->showMainSetting(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$6;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    iput-boolean p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$6;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$6;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$6;->val$show:Z

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$900(Lcom/smartisanos/magicflow/view/settings/MainSettingView;Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$6;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$1000(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$6;->val$show:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
