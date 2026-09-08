.class Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$2;
.super Ljava/lang/Object;
.source "ExpressAccountAdapter.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

.field final synthetic val$num:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$2;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$2;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$2;->val$num:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$2;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$2;->val$num:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->access$100(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
