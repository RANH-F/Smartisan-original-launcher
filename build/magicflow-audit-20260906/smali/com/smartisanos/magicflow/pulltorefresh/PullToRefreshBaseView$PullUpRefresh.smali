.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;
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
    name = "PullUpRefresh"
.end annotation


# instance fields
.field private activated:Z

.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->activated:Z

    return-void
.end method

.method static synthetic access$2100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->activated:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->activated:Z

    return p1
.end method

.method private predicate(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1400(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->canPredicateWhenPullUpRefresh()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->activated:Z

    return p1
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->predicate(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1500(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->getFooterBottom()I

    move-result p1

    if-gtz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$102(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)I

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$102(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)I

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$700(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;II)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    .line 8
    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$800(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;F)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1700(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-virtual {p1, v2, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->showRefreshing(ZI)V

    goto :goto_1

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)I

    move-result p1

    if-nez p1, :cond_8

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    goto :goto_1

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$500(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;F)V

    :cond_8
    :goto_1
    return v2
.end method
