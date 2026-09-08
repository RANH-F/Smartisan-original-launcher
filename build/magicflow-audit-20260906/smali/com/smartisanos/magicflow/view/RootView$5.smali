.class Lcom/smartisanos/magicflow/view/RootView$5;
.super Ljava/lang/Object;
.source "RootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/RootView;->prepareShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/RootView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/RootView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$5;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView$5;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView$5;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/view/View;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView$5;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/RootView;->access$300(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestViewTouchFocus result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView$5;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/RootView;->access$600(Lcom/smartisanos/magicflow/view/RootView;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView$5;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/RootView;->access$300(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    const-string v1, "startScrollContentView RootView is Gone"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
