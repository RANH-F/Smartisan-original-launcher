.class public Lcom/smartisanos/magicflow/view/ExpressDetailsView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "ExpressDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ServiceProvider_JD:I

.field private ServiceProvider_TB:I

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mAdapter:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;

.field private mCopyButton:Landroid/widget/ImageView;

.field private final mDataProvider:Landroid/widget/TextView;

.field private mDetailsContentView:Landroid/widget/LinearLayout;

.field private mExpressCompany:Landroid/widget/TextView;

.field private mExpressIcon:Landroid/widget/ImageView;

.field private mExpressLastStatus:Ljava/lang/String;

.field private mExpressListItemInfo:Lcom/smartisanos/magicflow/h/g;

.field private mExpressOrderNum:Landroid/widget/TextView;

.field private mExpressStatus:Landroid/widget/TextView;

.field private final mLine:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mNoNetWork:Lcom/smartisanos/magicflow/view/NoNetworkView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mServiceProvider:I

.field private mTaoBao:Landroid/widget/LinearLayout;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private orderNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/g;)V
    .locals 1

    const v0, 0x7f0b004d

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->ServiceProvider_TB:I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->ServiceProvider_JD:I

    .line 5
    iget p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->ServiceProvider_TB:I

    iput p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mServiceProvider:I

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f08010a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mDetailsContentView:Landroid/widget/LinearLayout;

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f0801da

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/NoNetworkView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mNoNetWork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TitleBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080208

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f08010b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressIcon:Landroid/widget/ImageView;

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080104

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressCompany:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080114

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressStatus:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f08010f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressOrderNum:Landroid/widget/TextView;

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f0800c7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mCopyButton:Landroid/widget/ImageView;

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080115

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mTaoBao:Landroid/widget/LinearLayout;

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080283

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mProviderIcon:Landroid/widget/ImageView;

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080282

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mDataProvider:Landroid/widget/TextView;

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080118

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mLine:Landroid/view/View;

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080109

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mListView:Landroid/widget/ListView;

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v0, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, v0}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/ExpressDetailsView$1;-><init>(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mAdapter:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;

    .line 22
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mAdapter:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mNoNetWork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    new-instance v0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/ExpressDetailsView$2;-><init>(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mCopyButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mTaoBao:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mDetailsContentView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressListItemInfo:Lcom/smartisanos/magicflow/h/g;

    .line 28
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressListItemInfo:Lcom/smartisanos/magicflow/h/g;

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->updateView(Lcom/smartisanos/magicflow/h/g;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Lcom/smartisanos/magicflow/view/NoNetworkView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mNoNetWork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Lcom/smartisanos/magicflow/h/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressListItemInfo:Lcom/smartisanos/magicflow/h/g;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Lcom/smartisanos/magicflow/h/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->updateView(Lcom/smartisanos/magicflow/h/g;)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->hideProgressBar(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Lcom/smartisanos/magicflow/h/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->setData(Lcom/smartisanos/magicflow/h/f;)V

    return-void
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mDetailsContentView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private copyExpressNum(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350068"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    const-string v0, "clipboard"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    const-string v1, "express_order_num"

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressOrderNum:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v0, 0x7f0d0102

    .line 5
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private enterToolWebView(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mServiceProvider:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->ServiceProvider_TB:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/smartisanos/magicflow/h/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.taobao.taobao"

    .line 3
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/n;->k(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mServiceProvider:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->ServiceProvider_JD:I

    if-ne v0, v1, :cond_3

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/h/d;->a()Z

    move-result v0

    const-string v1, "com.jingdong.app.mall"

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1, v1}, Lcom/smartisanos/magicflow/o/n;->k(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openApp.jdMobile://virtual?params={\"category\":\"jump\",\"sourceValue\":\"win_Wuliu\",\"sourceType\":\"win_Search\",\"des\":\"orderDetail\",\"msf_type\":\"click\",\"M_sourceFrom\":\"chuizi\",\"orderId\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->orderNum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f01000d

    const v1, 0x7f01000e

    .line 11
    invoke-static {p1, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 12
    invoke-static {v2, p1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z

    :goto_0
    return-void

    .line 13
    :cond_3
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/smartisanos/magicflow/view/ToolWebView;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/smartisanos/magicflow/view/ToolWebView;-><init>(Landroid/content/Context;I)V

    .line 15
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    return-void
.end method

.method private hideProgressBar(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;-><init>(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Z)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadDetailsData(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mNoNetWork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mNoNetWork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mDetailsContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;-><init>(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Ljava/util/HashMap;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setData(Lcom/smartisanos/magicflow/h/f;)V
    .locals 6

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2
    :cond_0
    iget-object v1, p1, Lcom/smartisanos/magicflow/h/f;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressLastStatus:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object v1, p1, Lcom/smartisanos/magicflow/h/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressIcon:Landroid/widget/ImageView;

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressOrderNum:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/smartisanos/magicflow/h/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressCompany:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/smartisanos/magicflow/h/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressStatus:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/smartisanos/magicflow/h/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/f;->a()F

    move-result v3

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060141

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v4, v3

    .line 10
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const/16 v4, 0x1e

    .line 11
    :goto_0
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 12
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mLine:Landroid/view/View;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mAdapter:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;

    if-eqz v0, :cond_3

    .line 15
    iget-object v1, p1, Lcom/smartisanos/magicflow/h/f;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/f;->e:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->updateTraceList(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private updateView(Lcom/smartisanos/magicflow/h/g;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "updateView ExpressListItemInfo is null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->hideProgressBar(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/g;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->orderNum:Ljava/lang/String;

    .line 4
    iget v0, p1, Lcom/smartisanos/magicflow/h/g;->t:I

    iput v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mServiceProvider:I

    .line 5
    iget v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mServiceProvider:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->ServiceProvider_JD:I

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mProviderIcon:Landroid/widget/ImageView;

    const v1, 0x7f0701eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mDataProvider:Landroid/widget/TextView;

    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mProviderIcon:Landroid/widget/ImageView;

    const v1, 0x7f07046a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mDataProvider:Landroid/widget/TextView;

    const v1, 0x7f0d0147

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    :goto_0
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/g;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressIcon:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    iget-object v1, p1, Lcom/smartisanos/magicflow/h/g;->o:Ljava/lang/String;

    const-string v2, "mailNo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p1, Lcom/smartisanos/magicflow/h/g;->p:Ljava/lang/String;

    const-string v2, "cpCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mServiceProvider:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/g;->v:Ljava/lang/String;

    const-string v1, "orderNo"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->loadDetailsData(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mNoNetWork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mExpressListItemInfo:Lcom/smartisanos/magicflow/h/g;

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->updateView(Lcom/smartisanos/magicflow/h/g;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800c7

    if-eq v0, v1, :cond_1

    const v1, 0x7f080115

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->enterToolWebView(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->copyExpressNum(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onExit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mAdapter:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->mNoNetWork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    :cond_1
    return-void
.end method
