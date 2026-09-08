.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$4;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView;->setEnablePullDownRefresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$4;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$4;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->onRefresh()V

    return-void
.end method

.method public onPullUpToLoad()V
    .locals 0

    return-void
.end method

.method public onPullUpTpRefresh()V
    .locals 0

    return-void
.end method
