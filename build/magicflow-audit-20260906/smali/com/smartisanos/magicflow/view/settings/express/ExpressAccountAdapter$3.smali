.class Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$3;
.super Ljava/lang/Object;
.source "ExpressAccountAdapter.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->registerAccount(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$3;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Z)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$3;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->access$000(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
