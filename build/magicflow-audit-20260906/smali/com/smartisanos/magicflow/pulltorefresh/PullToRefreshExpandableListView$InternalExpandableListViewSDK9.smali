.class final Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;
.super Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;
.source "PullToRefreshExpandableListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalExpandableListViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 6

    .line 1
    invoke-super/range {p0 .. p9}, Landroid/widget/ExpandableListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p5

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshExpandableListView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p9

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/magicflow/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;IIIIZ)V

    return p5
.end method
