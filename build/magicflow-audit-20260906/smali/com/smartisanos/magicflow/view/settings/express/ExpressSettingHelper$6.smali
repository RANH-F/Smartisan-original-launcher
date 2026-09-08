.class final Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$6;
.super Ljava/lang/Object;
.source "ExpressSettingHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->showProtocolDialog(Landroid/content/Context;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$6;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->i()V

    .line 2
    new-instance p2, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$6$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$6$1;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$6;)V

    invoke-static {p2}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/c;->m(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$6;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;->onCallback(Z)V

    :cond_0
    return-void
.end method
