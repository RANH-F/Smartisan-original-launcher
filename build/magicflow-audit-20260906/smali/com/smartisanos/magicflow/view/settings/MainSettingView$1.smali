.class Lcom/smartisanos/magicflow/view/settings/MainSettingView$1;
.super Ljava/lang/Object;
.source "MainSettingView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/settings/MainSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Lcom/smartisanos/magicflow/h/u;Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$000(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V

    return-void
.end method

.method public onSettingSaveFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
