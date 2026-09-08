.class Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$1;
.super Ljava/lang/Object;
.source "ExpressSettingView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->access$000(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;)V

    return-void
.end method
