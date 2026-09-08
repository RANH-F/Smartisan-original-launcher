.class public Lcom/smartisanos/magicflow/view/DetailsContentView;
.super Landroid/widget/FrameLayout;
.source "DetailsContentView.java"


# static fields
.field public static final EXTRA_FROM_SEARCH:Ljava/lang/String; = "from_search"

.field public static final EXTRA_FROM_SETTINGS:Ljava/lang/String; = "from_settings"

.field public static final EXTRA_NEWS_SOURCE_TYPE:Ljava/lang/String; = "extra_news_source_type"

.field public static final EXTRA_VIEW_DATA:Ljava/lang/String; = "extra_view_data"

.field public static final EXTRA_VIEW_TYPE:Ljava/lang/String; = "extra_view_type"

.field public static sBaseViewType:Ljava/lang/String;


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

.field private mSwitchAnimation:Lcom/smartisanos/magicflow/view/UpDownAnimation;

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/view/BaseView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    const-class p1, Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/DetailsContentView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private saveViewListData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->onRemove()V

    :cond_0
    return-void
.end method

.method private showAddViewAnim()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "showAddViewAnim when onGlobalLayout"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/g/a;

    new-instance v7, Lcom/smartisanos/magicflow/g/c0;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v7, v2, v1, v2}, Lcom/smartisanos/magicflow/g/c0;-><init>(III)V

    new-instance v8, Lcom/smartisanos/magicflow/g/c0;

    invoke-direct {v8}, Lcom/smartisanos/magicflow/g/c0;-><init>()V

    const/16 v4, 0x3ed

    const/16 v5, 0xc8

    const/16 v6, 0x8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/magicflow/g/a;-><init>(Landroid/view/View;IIILcom/smartisanos/magicflow/g/c0;Lcom/smartisanos/magicflow/g/c0;)V

    .line 4
    new-instance v1, Lcom/smartisanos/magicflow/view/DetailsContentView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/DetailsContentView$1;-><init>(Lcom/smartisanos/magicflow/view/DetailsContentView;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/g/a;->a(Lcom/smartisanos/magicflow/g/b0;)V

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/g/a;->c()Z

    return-void
.end method


# virtual methods
.method public canBack()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/BaseView;

    .line 3
    instance-of v1, v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->canBack()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 5
    :cond_0
    instance-of v1, v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->canBack()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->onBackKeyEvent()Z

    return v2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    instance-of v3, v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    if-eqz v3, :cond_3

    .line 9
    check-cast v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->canBack()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public enterView(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 2
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/BaseView;->onAdd()V

    .line 5
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mSwitchAnimation:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/smartisanos/magicflow/view/DetailsContentView$3;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/DetailsContentView$3;-><init>(Lcom/smartisanos/magicflow/view/DetailsContentView;)V

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->init(Landroid/view/View;Landroid/view/View;ZLcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mSwitchAnimation:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->startAnimation()V

    return-void
.end method

.method public exitView(Lcom/smartisanos/magicflow/view/BaseView;)V
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-static {v1, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/BaseView;->onRemove()V

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/BaseView;->onAdd()V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/BaseView;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->onAdd()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mSwitchAnimation:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/smartisanos/magicflow/view/DetailsContentView$4;

    invoke-direct {v4, p0, p1}, Lcom/smartisanos/magicflow/view/DetailsContentView$4;-><init>(Lcom/smartisanos/magicflow/view/DetailsContentView;Lcom/smartisanos/magicflow/view/BaseView;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->init(Landroid/view/View;Landroid/view/View;ZLcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mSwitchAnimation:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->startAnimation()V

    return-void
.end method

.method public finish()V
    .locals 8

    .line 1
    new-instance v7, Lcom/smartisanos/magicflow/g/a;

    new-instance v5, Lcom/smartisanos/magicflow/g/c0;

    invoke-direct {v5}, Lcom/smartisanos/magicflow/g/c0;-><init>()V

    new-instance v6, Lcom/smartisanos/magicflow/g/c0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {v6, v1, v0}, Lcom/smartisanos/magicflow/g/c0;-><init>(II)V

    const/16 v2, 0x3ed

    const/16 v3, 0xc8

    const/16 v4, 0x8

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/magicflow/g/a;-><init>(Landroid/view/View;IIILcom/smartisanos/magicflow/g/c0;Lcom/smartisanos/magicflow/g/c0;)V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/DetailsContentView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/DetailsContentView$2;-><init>(Lcom/smartisanos/magicflow/view/DetailsContentView;)V

    invoke-virtual {v7, v0}, Lcom/smartisanos/magicflow/g/a;->a(Lcom/smartisanos/magicflow/g/b0;)V

    .line 3
    invoke-virtual {v7}, Lcom/smartisanos/magicflow/g/a;->c()Z

    return-void
.end method

.method public getBaseView()Lcom/smartisanos/magicflow/view/BaseView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    return-object v0
.end method

.method public getFirstView()Lcom/smartisanos/magicflow/view/BaseView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/BaseView;

    return-object v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    return-object v0
.end method

.method public hasPictureView()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/magicflow/view/PictureView;

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackKeyEvent()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "onBackKeyEvent !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/DetailsContentView;->exitView(Lcom/smartisanos/magicflow/view/BaseView;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->canBack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "onDestroy !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/magicflow/view/DetailsContentView;->sBaseViewType:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/BaseView;

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    .line 11
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mSwitchAnimation:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->destroy()V

    .line 14
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mSwitchAnimation:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    :cond_3
    return-void
.end method

.method public onLocationPermissionStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->checkLocationPermission()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/BaseView;

    if-eqz v0, :cond_1

    .line 5
    instance-of v0, v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    check-cast v0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->checkLocationPermission()V

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/DetailsContentView;->showContent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->onAdd()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/BaseView;

    if-eqz v0, :cond_2

    .line 5
    instance-of v1, v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/smartisanos/magicflow/view/ToolWebView;

    if-eqz v1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->onAdd()V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->onAdd()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/BaseView;

    if-eqz v0, :cond_2

    .line 5
    instance-of v1, v0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    if-eqz v1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->onAdd()V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->saveViewListData()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->onRemove()V

    :cond_0
    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    return-void
.end method

.method public showContent(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v3, "showContent !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "showContent return by intent is null"

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v2, 0x40

    const/4 v3, 0x1

    .line 3
    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    new-instance v4, Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/magicflow/view/UpDownAnimation;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mSwitchAnimation:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    const-string v4, "extra_view_type"

    .line 7
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    sput-object v4, Lcom/smartisanos/magicflow/view/DetailsContentView;->sBaseViewType:Ljava/lang/String;

    const-string v5, "from_settings"

    .line 9
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "from_search"

    .line 10
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "back_text"

    .line 11
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TouTiao"

    .line 12
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 13
    new-instance v0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 14
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 15
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->newsChannelIsOpened()Z

    move-result v0

    if-nez v0, :cond_16

    .line 16
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3, v2}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;-><init>(Landroid/content/Context;ZZ)V

    .line 17
    iget-object v2, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->onAdd()V

    .line 19
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_1
    const-string v8, "CollectionNews"

    .line 20
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 21
    new-instance v0, Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/smartisanos/magicflow/view/CollectionStreamView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 22
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_2
    const-string v8, "Movie"

    .line 23
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "extra_view_data"

    if-eqz v8, :cond_4

    .line 24
    new-instance v2, Lcom/smartisanos/magicflow/view/MovieDetailsView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/magicflow/view/MovieDetailsView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_3

    .line 26
    new-instance v3, Lcom/smartisanos/magicflow/h/n;

    invoke-direct {v3}, Lcom/smartisanos/magicflow/h/n;-><init>()V

    .line 27
    invoke-virtual {v3, v0}, Lcom/smartisanos/magicflow/h/n;->a(Landroid/content/ContentValues;)V

    .line 28
    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->updateView(Lcom/smartisanos/magicflow/h/n;)V

    .line 29
    :cond_3
    iput-object v2, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 30
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_4
    const-string v8, "Hotel"

    .line 31
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 32
    new-instance v2, Lcom/smartisanos/magicflow/view/HotelDetailsView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/magicflow/view/HotelDetailsView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_5

    .line 34
    new-instance v3, Lcom/smartisanos/magicflow/h/k;

    invoke-direct {v3}, Lcom/smartisanos/magicflow/h/k;-><init>()V

    .line 35
    invoke-virtual {v3, v0}, Lcom/smartisanos/magicflow/h/k;->a(Landroid/content/ContentValues;)V

    .line 36
    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/view/HotelDetailsView;->updateView(Lcom/smartisanos/magicflow/h/k;)V

    .line 37
    :cond_5
    iput-object v2, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 38
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_6
    const-string v8, "Express"

    .line 39
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_8

    .line 40
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_7

    .line 41
    new-instance v10, Lcom/smartisanos/magicflow/h/g;

    invoke-direct {v10}, Lcom/smartisanos/magicflow/h/g;-><init>()V

    .line 42
    invoke-virtual {v10, v0}, Lcom/smartisanos/magicflow/h/g;->a(Landroid/content/ContentValues;)V

    .line 43
    :cond_7
    new-instance v0, Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v10}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/g;)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 44
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_8
    const-string v8, "MainSetting"

    .line 45
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 46
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v5, :cond_9

    if-eqz v6, :cond_a

    :cond_9
    move v2, v3

    :cond_a
    invoke-direct {v0, v4, v2, v7}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 47
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_b
    const-string v5, "Webview"

    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 49
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    const-string v5, "extra_news_source_type"

    .line 50
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v2, :cond_c

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/l;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/l;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_0
    move-object v13, v10

    if-eqz v13, :cond_16

    if-eq v5, v4, :cond_16

    if-nez v5, :cond_d

    .line 54
    new-instance v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/smartisanos/magicflow/view/NewsWebView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;IZZ)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    goto :goto_1

    :cond_d
    if-ne v5, v3, :cond_e

    .line 55
    new-instance v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/smartisanos/magicflow/view/NewsWebView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;IZZ)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    goto :goto_1

    :cond_e
    const/4 v0, 0x2

    if-ne v5, v0, :cond_f

    .line 56
    new-instance v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/smartisanos/magicflow/view/NewsWebView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;IZZ)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 57
    :cond_f
    :goto_1
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    check-cast v0, Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-virtual {v0, v5}, Lcom/smartisanos/magicflow/view/NewsWebView;->setNewsSourceType(I)V

    .line 58
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    if-eqz v0, :cond_16

    .line 59
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_10
    const-string v3, "LifeInfoSetting"

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 61
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "LifeInfo"

    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->cardIsEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, v2, v6, v3}, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 62
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_11
    const-string v3, "MusicPaymentSetting"

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 64
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "MusicFastPayment"

    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->cardIsEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, v2, v6, v3}, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 65
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_12
    const-string v3, "NewsSetting"

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 67
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "News"

    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->cardIsEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, v2, v6, v3}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 68
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_13
    const-string v3, "NewsChannelSetting"

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 70
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2, v6}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 71
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_14
    const-string v3, "ToolWebView"

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "tool_web_url_type"

    .line 73
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 74
    new-instance v2, Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/smartisanos/magicflow/view/ToolWebView;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 75
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_15
    const-string v0, "ExpressSetting"

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 77
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    .line 78
    iget-object v0, v1, Lcom/smartisanos/magicflow/view/DetailsContentView;->mBaseView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_16
    :goto_2
    return-void
.end method
