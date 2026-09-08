.class Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$4;
.super Ljava/lang/Object;
.source "ExpressAccountRegisterView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$4;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$4;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    .line 2
    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->access$600(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$4;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->access$500(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Lsmartisan/widget/ShadowButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsmartisan/widget/ShadowButton;->setEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$4;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->access$500(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Lsmartisan/widget/ShadowButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsmartisan/widget/ShadowButton;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
