.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$2;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;->onPullDownToRefresh()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;->onPullUpTpRefresh()V

    :cond_1
    :goto_0
    return-void
.end method
