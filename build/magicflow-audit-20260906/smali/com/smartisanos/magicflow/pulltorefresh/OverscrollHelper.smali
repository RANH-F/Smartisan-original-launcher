.class public final Lcom/smartisanos/magicflow/pulltorefresh/OverscrollHelper;
.super Ljava/lang/Object;
.source "OverscrollHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field static final DEFAULT_OVERSCROLL_SCALE:F = 1.0f

.field static final LOG_TAG:Ljava/lang/String; = "OverscrollHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAndroidOverScrollEnabled(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static overScrollBy(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;IIIIIIFZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase<",
            "*>;IIIIIIFZ)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/OverscrollHelper$1;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    move p2, p4

    move v2, p3

    move p3, p1

    move p1, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p3

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isPullToRefreshOverScrollEnabled()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result p4

    if-nez p4, :cond_7

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getMode()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object p4

    .line 8
    invoke-virtual {p4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p8, :cond_6

    if-eqz p1, :cond_6

    add-int/2addr p1, p2

    rsub-int/lit8 p2, p6, 0x0

    if-ge p1, p2, :cond_2

    .line 9
    invoke-virtual {p4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p3, :cond_1

    .line 10
    sget-object p2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    new-array p4, v1, [Z

    invoke-virtual {p0, p2, p4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_1
    add-int/2addr p3, p1

    int-to-float p1, p3

    mul-float/2addr p7, p1

    float-to-int p1, p7

    .line 11
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_1

    :cond_2
    add-int p2, p5, p6

    if-le p1, p2, :cond_4

    .line 12
    invoke-virtual {p4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p3, :cond_3

    .line 13
    sget-object p2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    new-array p4, v1, [Z

    invoke-virtual {p0, p2, p4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_3
    add-int/2addr p3, p1

    sub-int/2addr p3, p5

    int-to-float p1, p3

    mul-float/2addr p7, p1

    float-to-int p1, p7

    .line 14
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p2, p6, :cond_5

    sub-int/2addr p1, p5

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, p6, :cond_7

    .line 17
    :cond_5
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    new-array p2, v1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_1

    :cond_6
    if-eqz p8, :cond_7

    .line 18
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getState()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    move-result-object p2

    if-ne p1, p2, :cond_7

    .line 19
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    new-array p2, v1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static overScrollBy(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;IIIIIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase<",
            "*>;IIIIIZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    .line 2
    invoke-static/range {v0 .. v8}, Lcom/smartisanos/magicflow/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;IIIIIIFZ)V

    return-void
.end method

.method public static overScrollBy(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase<",
            "*>;IIIIZ)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/smartisanos/magicflow/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;IIIIIZ)V

    return-void
.end method
