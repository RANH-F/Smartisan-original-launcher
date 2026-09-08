.class Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$7;
.super Ljava/lang/Object;
.source "ExpressAccountRegisterView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->sendVerificationCode()V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$7;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->cancelTimer()V

    :cond_0
    return-void
.end method
