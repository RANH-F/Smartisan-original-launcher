.class final Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;
.super Ljava/lang/Object;
.source "PullToRefreshWebView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JsValueCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReadyForPullDownResponse(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isReadyForPullUpResponse(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2$JsValueCallback;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;->access$000(Lcom/smartisanos/magicflow/pulltorefresh/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
