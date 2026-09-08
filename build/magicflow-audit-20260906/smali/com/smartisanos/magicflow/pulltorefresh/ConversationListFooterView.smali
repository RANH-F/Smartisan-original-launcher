.class public final Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;
.super Landroid/widget/RelativeLayout;
.source "ConversationListFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LONG_DELAY:I = 0xdac

.field private static final SHORT_DELAY:I = 0x7d0

.field public static final STATE_GONE:I = 0x0

.field public static final STATE_LOADING:I = 0x3

.field public static final STATE_PULL_LOAD_MORE:I = 0x1

.field public static final STATE_RELEASE_LOAD_MORE:I = 0x2

.field public static final STATE_SEARCH_SERVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ConvFooterView"

.field private static mLastToastMillis:J

.field private static sNormalBackground:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mClickListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

.field private mCurrentState:I

.field private mLoadMore:Landroid/view/View;

.field private mLoadMoreTx:Landroid/widget/TextView;

.field private mLoadMoreUri:Landroid/net/Uri;

.field private mLoading:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mCurrentState:I

    return-void
.end method

.method private getBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mCurrentState:I

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowFooter()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mCurrentState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801ac

    if-ne p1, v0, :cond_1

    const-string p1, "onClick R.id.load_more"

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->log(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mClickListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;->onFooterViewLoadMoreClick()V

    :cond_0
    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->setState(I)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0801ae

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    const v0, 0x7f0801ac

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801ad

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMoreTx:Landroid/widget/TextView;

    return-void
.end method

.method public performLoading()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performLoading mCurrentState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mShowFooter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->isShowFooter()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->log(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->isShowFooter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mClickListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

    return-void
.end method

.method public setState(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mCurrentState:I

    if-eq v0, p1, :cond_5

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mCurrentState:I

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    const v2, 0x7f0d0219

    const/4 v3, 0x0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMoreTx:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMoreTx:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method
