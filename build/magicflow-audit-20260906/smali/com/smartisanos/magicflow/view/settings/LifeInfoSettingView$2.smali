.class Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$2;
.super Ljava/lang/Object;
.source "LifeInfoSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$2;->this$0:Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350076"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;-><init>(Landroid/content/Context;Z)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$2;->this$0:Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    return-void
.end method
