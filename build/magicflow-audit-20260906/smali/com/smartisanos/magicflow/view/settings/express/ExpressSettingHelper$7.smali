.class final Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$7;
.super Landroid/text/style/ClickableSpan;
.source "ExpressSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getClickableSpan(Landroid/content/Context;Landroid/app/AlertDialog;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$spannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$7;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$7;->val$spannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$7;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$7;->val$spannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;->onSpannableClickListener(Landroid/view/View;)V

    :cond_1
    return-void
.end method
