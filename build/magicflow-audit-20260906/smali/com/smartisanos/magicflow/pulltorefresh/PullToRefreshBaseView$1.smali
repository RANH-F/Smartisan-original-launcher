.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$1;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView$RefreshFooterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->initViews(Landroid/util/AttributeSet;)V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public footerClipBottomChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$000(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;->setClipTop(I)V

    :cond_1
    :goto_0
    return-void
.end method
