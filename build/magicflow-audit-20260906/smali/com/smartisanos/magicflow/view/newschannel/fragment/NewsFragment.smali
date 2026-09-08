.class public Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;
.super Landroid/support/v4/app/Fragment;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static NEWS_CATEGORY:Ljava/lang/String; = "news_category"


# instance fields
.field private mNewsListInfo:Lcom/smartisanos/magicflow/h/q;

.field private newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/smartisanos/magicflow/h/q;)Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    sget-object v2, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->NEWS_CATEGORY:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/NewsStreamView;->onRemove()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/NewsStreamView;->onExit()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->NEWS_CATEGORY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/q;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->mNewsListInfo:Lcom/smartisanos/magicflow/h/q;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b009b

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 2
    new-instance p2, Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->mNewsListInfo:Lcom/smartisanos/magicflow/h/q;

    invoke-direct {p2, p3, v0}, Lcom/smartisanos/magicflow/view/NewsStreamView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    .line 3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-boolean p2, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->visible:Z

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/NewsStreamView;->bindListView()V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->destroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/NewsStreamView;->onDestroyView()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->visible:Z

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public refreshListView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->visible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->mNewsListInfo:Lcom/smartisanos/magicflow/h/q;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    const-string v1, "news_local"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->mNewsListInfo:Lcom/smartisanos/magicflow/h/q;

    sget-object v1, Lcom/smartisanos/magicflow/h/d;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/magicflow/h/q;->d:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/NewsStreamView;->bindListView()V

    :cond_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->visible:Z

    .line 3
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->visible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->newsStreamView:Lcom/smartisanos/magicflow/view/NewsStreamView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->bindListView()V

    :cond_0
    return-void
.end method
