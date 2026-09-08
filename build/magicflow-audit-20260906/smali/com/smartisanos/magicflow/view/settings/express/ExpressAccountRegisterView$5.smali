.class Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$5;
.super Ljava/lang/Object;
.source "ExpressAccountRegisterView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->register()V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->access$702(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;I)I

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$5$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$5$1;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$5;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
