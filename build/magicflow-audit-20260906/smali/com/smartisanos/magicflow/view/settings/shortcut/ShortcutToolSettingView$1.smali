.class Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView$1;
.super Ljava/lang/Object;
.source "ShortcutToolSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;

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
