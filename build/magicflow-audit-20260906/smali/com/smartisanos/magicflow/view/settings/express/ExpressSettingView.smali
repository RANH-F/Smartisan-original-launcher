.class public Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "ExpressSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAddAccountView:Landroid/widget/LinearLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRegisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

.field private mRegisterListView:Landroid/widget/ListView;

.field private mRegisterTips:Lsmartisan/widget/TipsView;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private mUnregisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

.field private mUnregisterListView:Landroid/widget/ListView;

.field private observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

.field private spannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;

.field private statementTips:Lsmartisan/widget/TipsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    const p2, 0x7f0b0050

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$2;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->spannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f080373

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TitleBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f080111

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TipsView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterTips:Lsmartisan/widget/TipsView;

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f080110

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterListView:Landroid/widget/ListView;

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f08011b

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterListView:Landroid/widget/ListView;

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f080100

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mAddAccountView:Landroid/widget/LinearLayout;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f080208

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f0802bc

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TipsView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->statementTips:Lsmartisan/widget/TipsView;

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget p2, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, p2}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$3;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$3;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mAddAccountView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance p1, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    new-instance p1, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->spannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->setSpannableClickListener(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->setTipsText()V

    .line 21
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->setData()V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->registerAccountObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->setData()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->toRegisterAccountView(Landroid/content/Context;)V

    return-void
.end method

.method private setData()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->getExpressAccountInfoList()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->setData(Ljava/util/List;)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->unRegisterAllAccount()V

    .line 9
    :goto_1
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getUnRegisterPhoneNumInSystem(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 10
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    invoke-virtual {v3, v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;->setData(Ljava/util/List;)V

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_3

    .line 13
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private setTipsText()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getSettingTipsProtocolIndex(ZI)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getSettingTipsProtocolIndex(ZI)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050123

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 5
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$4;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;)V

    const/16 v5, 0x21

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->statementTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->statementTips:Lsmartisan/widget/TipsView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private toRegisterAccountView(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-direct {v0, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isAgreedExpressProtocol()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$5;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView$5;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;Landroid/view/View;)V

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->spannableClickListener:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;

    invoke-static {v0, v1, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->showProtocolDialog(Landroid/content/Context;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)V

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->getExpressAccountInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d013a

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->toRegisterAccountView(Landroid/content/Context;)V

    return-void
.end method

.method public onExit()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->unregisterAccountObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mUnregisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    .line 8
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;->mRegisterAdapter:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    return-void
.end method

.method public onRemove()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onRemove()V

    return-void
.end method
