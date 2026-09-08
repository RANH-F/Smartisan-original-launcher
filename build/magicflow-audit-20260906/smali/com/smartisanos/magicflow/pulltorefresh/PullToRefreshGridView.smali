.class public Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView;
.super Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView$InternalGridView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object p1

    return-object p1
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView$InternalGridView;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    const p1, 0x7f080147

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setId(I)V

    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method
