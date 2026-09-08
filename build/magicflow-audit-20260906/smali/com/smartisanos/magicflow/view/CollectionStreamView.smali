.class public Lcom/smartisanos/magicflow/view/CollectionStreamView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "CollectionStreamView.java"


# instance fields
.field private mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

.field private mEditMode:I

.field private mEditorStatus:Z

.field private mIndex:I

.field private mIsItemClicked:Z

.field private mItemInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftImage:Landroid/widget/ImageView;

.field private mListView:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

.field private mNewsLayout:Landroid/widget/LinearLayout;

.field private mNoArticleView:Landroid/widget/TextView;

.field private mRightImage:Landroid/widget/ImageView;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f0b007e

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditMode:I

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditorStatus:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mItemInfoList:Ljava/util/List;

    .line 5
    iput p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    .line 6
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIsItemClicked:Z

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNewsLayout:Landroid/widget/LinearLayout;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801ee

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNoArticleView:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mListView:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080373

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/TitleBar;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v1, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartisanos/magicflow/view/CollectionStreamView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/CollectionStreamView$1;-><init>(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/l/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNoArticleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mTitle:Lsmartisan/widget/TitleBar;

    const v2, 0x7f070425

    invoke-virtual {v0, v2}, Lsmartisan/widget/TitleBar;->addRightImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mRightImage:Landroid/widget/ImageView;

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNoArticleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mRightImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/smartisanos/magicflow/view/CollectionStreamView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/CollectionStreamView$2;-><init>(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance p1, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    .line 21
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->setUseListDivider(Z)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mListView:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/l/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mListView:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    new-instance v0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;-><init>(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditMode:I

    return p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIsItemClicked:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Lcom/smartisanos/magicflow/view/NewsWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/smartisanos/magicflow/view/CollectionStreamView;Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/view/NewsWebView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->deleteItemClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->updateEditMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditorStatus:Z

    return p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mItemInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    return p0
.end method

.method static synthetic access$708(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    return v0
.end method

.method static synthetic access$710(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/CollectionStreamView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->setBtnBackground(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    return-object p0
.end method

.method private deleteItemClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->getListItemInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->getListItemInfo()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/l;

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/l;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-virtual {v3}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->getListItemInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget v3, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    .line 6
    invoke-static {v2, v4}, Lcom/smartisanos/magicflow/l/a;->a(Lcom/smartisanos/magicflow/h/l;Z)V

    .line 7
    :cond_0
    iput v1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    .line 8
    iget v1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIndex:I

    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->setBtnBackground(I)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->getListItemInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNoArticleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNoArticleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setBtnBackground(I)V
    .locals 1

    const v0, 0x7f07040b

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIsItemClicked:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mIsItemClicked:Z

    :goto_0
    return-void
.end method

.method private updateEditMode()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditMode:I

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditMode:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    const v3, 0x7f07040b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mRightImage:Landroid/widget/ImageView;

    const v3, 0x7f0703db

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mListView:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setSlideEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mListView:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    .line 7
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditorStatus:Z

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->resetItemSelect()V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    sget v3, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mRightImage:Landroid/widget/ImageView;

    const v3, 0x7f070425

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->getListItemInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mRightImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mListView:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setSlideEnabled(Z)V

    .line 16
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditorStatus:Z

    .line 17
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    iget v1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mEditMode:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->setEditMode(I)V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350041"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onExit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->destroyWebview()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->resetItemSelect()V

    .line 4
    :goto_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350041"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public resetItemSelect()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mItemInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mItemInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/l;

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/h/l;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateListView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mListView:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->getListItemInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNoArticleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNoArticleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView;->mNewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
