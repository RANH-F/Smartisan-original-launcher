.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$3;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;


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
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$3;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFooterViewLoadMoreClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$3;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$3;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;->onPullUpToLoad()V

    :cond_0
    return-void
.end method
