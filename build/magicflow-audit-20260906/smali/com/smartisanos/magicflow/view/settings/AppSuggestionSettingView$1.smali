.class Lcom/smartisanos/magicflow/view/settings/AppSuggestionSettingView$1;
.super Ljava/lang/Object;
.source "AppSuggestionSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/AppSuggestionSettingView;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/AppSuggestionSettingView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/AppSuggestionSettingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/AppSuggestionSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/AppSuggestionSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/b;->j()Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
