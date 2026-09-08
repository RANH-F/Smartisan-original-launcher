.class Lcom/smartisanos/magicflow/view/settings/MainSettingView$3;
.super Ljava/lang/Object;
.source "MainSettingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/MainSettingView;-><init>(Landroid/content/Context;ZLjava/lang/String;)V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$3;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$3;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$100(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/j;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$3;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$200(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->a(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->init()V

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$3$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView$3$1;-><init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView$3;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
