.class public Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "NewsPagerAdapter.java"


# instance fields
.field private mNewsCategorys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;->mNewsCategorys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;->mNewsCategorys:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;->mNewsCategorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;->mNewsCategorys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/q;

    const-string v0, "https://api-screen.smartisan.com/news/list"

    .line 2
    iput-object v0, p1, Lcom/smartisanos/magicflow/h/q;->c:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    const-string v1, "news_local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->h:Ljava/lang/String;

    iput-object v0, p1, Lcom/smartisanos/magicflow/h/q;->d:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newInstance(Lcom/smartisanos/magicflow/h/q;)Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;

    move-result-object p1

    return-object p1
.end method

.method public setCategory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/q;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;->mNewsCategorys:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
