.class public Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "ShortcutToolSettingView.java"


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mAdapter:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mTitle:Lsmartisan/widget/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    const p2, 0x7f0b00da

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f080373

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TitleBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f08028c

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mListView:Landroid/widget/ListView;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget p2, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, p2}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->setListViewData()V

    return-void
.end method

.method private getChangedShortcutInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getDisabledInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getDisabledInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getDisabledInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->getData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private setListViewData()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getToolShortcutInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->init(Landroid/content/Context;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;

    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getToolShortcutInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->setData(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onAdd()V

    return-void
.end method

.method public onExit()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    return-void
.end method

.method public onRemove()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onRemove()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->updateShortcutToolList(Ljava/util/List;)V

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;->getChangedShortcutInfoList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/h/v;->c(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->g(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
