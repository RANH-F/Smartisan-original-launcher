.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$Gesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PullUpLoadMore"
.end annotation


# instance fields
.field private activated:Z

.field private isAnimating:Z

.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->activated:Z

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->isAnimating:Z

    return-void
.end method

.method static synthetic access$2000(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->activated:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->activated:Z

    return p1
.end method

.method private predicate(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1800(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1800(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->isShowFooter()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->isAnimating:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->canPredicateWhenPullUpLoad()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 5
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->activated:Z

    return p1
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->predicate(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$500(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;F)V

    :cond_3
    :goto_0
    return v1
.end method
