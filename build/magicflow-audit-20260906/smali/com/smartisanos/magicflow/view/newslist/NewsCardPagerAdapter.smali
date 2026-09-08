.class public Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "NewsCardPagerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNewsCategorys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;->mNewsCategorys:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p3}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;->mNewsCategorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;->mNewsCategorys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x2

    :cond_0
    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;->mNewsCategorys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;->mNewsCategorys:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->getContentView()Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCategory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;->mNewsCategorys:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
