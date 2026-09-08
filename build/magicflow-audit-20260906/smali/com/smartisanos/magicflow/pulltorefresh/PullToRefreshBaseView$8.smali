.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$8;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->finishRefreshing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

.field final synthetic val$refreshMethod:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$8;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$8;->val$refreshMethod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$8;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$8;->val$refreshMethod:I

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    return-void
.end method
