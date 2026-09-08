.class public Lcom/smartisanos/magicflow/pulltorefresh/extras/viewpager/PullToRefreshViewPager;
.super Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshViewPager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase<",
        "Landroid/support/v4/view/ViewPager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .line 2
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f080121

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setId(I)V

    return-object v0
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/extras/viewpager/PullToRefreshViewPager;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    return-object p1
.end method

.method public final getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method protected isReadyForPullStart()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
