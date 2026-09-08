.class public Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpressAccountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSpannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->infoList:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->registerAccount(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private registerAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 3
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p2, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$3;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$3;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;)V

    invoke-static {p1, v0, p2}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->registerAccount(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/smartisanos/magicflow/h/e;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->infoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/e;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->getItem(I)Lcom/smartisanos/magicflow/h/e;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0049

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;)V

    const v0, 0x7f0800ff

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f080101

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->account:Landroid/widget/TextView;

    const v0, 0x7f080294

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->mark:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->getItem(I)Lcom/smartisanos/magicflow/h/e;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->bindData(Lcom/smartisanos/magicflow/h/e;)V

    .line 9
    iget-object p1, p3, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/magicflow/h/e;

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/e;

    .line 6
    iget-object v1, v0, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    .line 7
    iget-wide v2, v0, Lcom/smartisanos/magicflow/h/e;->a:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "phone"

    .line 9
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-wide v0, v0, Lcom/smartisanos/magicflow/h/e;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;)V

    invoke-static {p1, v2, v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->unRegisterAccount(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isAgreedExpressProtocol()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$2;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->mSpannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;

    invoke-static {v0, v2, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->showProtocolDialog(Landroid/content/Context;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)V

    return-void

    .line 15
    :cond_3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->getExpressAccountInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_4

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d013a

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    return-void

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->registerAccount(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->infoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public setSpannableClickListener(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->mSpannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;

    return-void
.end method
