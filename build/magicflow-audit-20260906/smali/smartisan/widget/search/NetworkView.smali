.class public Lsmartisan/widget/search/NetworkView;
.super Landroid/widget/RelativeLayout;
.source "NetworkView.java"


# static fields
.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_REFRESH:I


# instance fields
.field private mProgressView:Landroid/view/View;

.field private mRefreshBtn:Landroid/view/View;

.field private mRefreshLayout:Landroid/view/View;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lsmartisan/widget/search/NetworkView;->mStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lsmartisan/widget/search/NetworkView;->mStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lsmartisan/widget/search/NetworkView;->mStatus:I

    return-void
.end method


# virtual methods
.method public getProgressView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/NetworkView;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method public getRefreshBtn()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/NetworkView;->mRefreshBtn:Landroid/view/View;

    return-object v0
.end method

.method public getRefreshLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/NetworkView;->mRefreshLayout:Landroid/view/View;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/search/NetworkView;->mStatus:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    sget v0, Lsmartisan/widget/R$id;->refresh_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/NetworkView;->mRefreshBtn:Landroid/view/View;

    .line 3
    sget v0, Lsmartisan/widget/R$id;->refresh_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/NetworkView;->mRefreshLayout:Landroid/view/View;

    .line 4
    sget v0, Lsmartisan/widget/R$id;->progress_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/NetworkView;->mProgressView:Landroid/view/View;

    return-void
.end method

.method public setStatus(I)V
    .locals 3

    .line 1
    iput p1, p0, Lsmartisan/widget/search/NetworkView;->mStatus:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/NetworkView;->mRefreshLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/search/NetworkView;->mProgressView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/search/NetworkView;->mRefreshLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/search/NetworkView;->mProgressView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
