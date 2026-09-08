.class public Lcom/smartisanos/magicflow/view/NoNetworkView;
.super Landroid/widget/LinearLayout;
.source "NoNetworkView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final NO_LOCATION_PERMISSION_STATE:I = 0x4

.field public static final NO_NETWORK_PERMISSION_STATE:I = 0x2

.field public static final NO_NETWORK_STATE:I = 0x1

.field public static final NO_PHONE_STATE_PERMISSION_STATE:I = 0x3


# instance fields
.field private mCurrentState:I

.field private mListener:Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;

.field private mNoNetworkViewContent:Landroid/widget/TextView;

.field private mRefreshBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mCurrentState:I

    return-void
.end method

.method private setViewText(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const v1, 0x7f0d01f6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mRefreshBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mNoNetworkViewContent:Landroid/widget/TextView;

    const v0, 0x7f0d01a9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mRefreshBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mNoNetworkViewContent:Landroid/widget/TextView;

    const v0, 0x7f0d01f9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mRefreshBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mNoNetworkViewContent:Landroid/widget/TextView;

    const v0, 0x7f0d01c4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mRefreshBtn:Landroid/widget/TextView;

    const v0, 0x7f0d0225

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mNoNetworkViewContent:Landroid/widget/TextView;

    const v0, 0x7f0d00e6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mListener:Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mCurrentState:I

    invoke-interface {v0, p1, v1}, Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;->onButtonClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f08005d

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mRefreshBtn:Landroid/widget/TextView;

    const v0, 0x7f0801ef

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mNoNetworkViewContent:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mRefreshBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mListener:Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;

    return-void
.end method

.method public setNoNetworkState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mCurrentState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mCurrentState:I

    .line 3
    iget p1, p0, Lcom/smartisanos/magicflow/view/NoNetworkView;->mCurrentState:I

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setViewText(I)V

    return-void
.end method
