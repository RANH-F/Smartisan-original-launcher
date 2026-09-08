.class public Lcom/smartisanos/magicflow/view/card/news/CardItemListView;
.super Landroid/widget/LinearLayout;
.source "CardItemListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;
    }
.end annotation


# instance fields
.field private mAddedScrollChangedListener:Z

.field private volatile mAttachedToWindow:Z

.field private mBindAdapterReady:Z

.field private final mCalculateRectDelay:I

.field private mDataSetObserver:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;

.field private mItemCount:I

.field private mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

.field private mItemViewGlobalVisibleRect:Landroid/graphics/Rect;

.field private mItemViewVisibilityListener:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;

.field private mOldItemCount:I

.field private mRunnable:Ljava/lang/Runnable;

.field private onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAttachedToWindow:Z

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewGlobalVisibleRect:Landroid/graphics/Rect;

    const/16 p1, 0x3e8

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mCalculateRectDelay:I

    .line 5
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 6
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;-><init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAttachedToWindow:Z

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewGlobalVisibleRect:Landroid/graphics/Rect;

    const/16 p1, 0x3e8

    .line 10
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mCalculateRectDelay:I

    .line 11
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 12
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;-><init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAttachedToWindow:Z

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewGlobalVisibleRect:Landroid/graphics/Rect;

    const/16 p1, 0x3e8

    .line 16
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mCalculateRectDelay:I

    .line 17
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 18
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;-><init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAddedScrollChangedListener:Z

    return p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAttachedToWindow:Z

    return p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewGlobalVisibleRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewVisibilityListener:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->addItemView()V

    return-void
.end method

.method private addItemView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemCount:I

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemCount:I

    if-ge v1, v2, :cond_3

    .line 4
    iget v2, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mOldItemCount:I

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v3, v0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;->getView(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    .line 7
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    invoke-virtual {v4, v2, v1}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;->setItemViewData(Landroid/view/View;I)V

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    iget-boolean v3, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAddedScrollChangedListener:Z

    if-eqz v3, :cond_2

    .line 10
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewVisibilityListener:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-interface {v3, v4, v2, v1}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;->onItemViewVisibilityChanged(Landroid/graphics/Rect;Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iput v2, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mOldItemCount:I

    :cond_4
    return-void
.end method

.method private addScrollChangedListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAddedScrollChangedListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewVisibilityListener:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAddedScrollChangedListener:Z

    :cond_0
    return-void
.end method

.method private removeScrollChangedListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAddedScrollChangedListener:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewVisibilityListener:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;

    return-void
.end method

.method private setAdapterDataToListView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mBindAdapterReady:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mDataSetObserver:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;-><init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mDataSetObserver:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mDataSetObserver:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->addItemView()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mBindAdapterReady:Z

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->addScrollChangedListener()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAttachedToWindow:Z

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->setAdapterDataToListView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mAttachedToWindow:Z

    .line 3
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mBindAdapterReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mDataSetObserver:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mDataSetObserver:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mBindAdapterReady:Z

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->removeScrollChangedListener()V

    return-void
.end method

.method public setAdapter(Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemListAdapter:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->setAdapterDataToListView()V

    return-void
.end method

.method public setItemViewVisibleListener(Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewVisibilityListener:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->mItemViewVisibilityListener:Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->removeScrollChangedListener()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->addScrollChangedListener()V

    :goto_0
    return-void
.end method
