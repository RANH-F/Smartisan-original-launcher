.class public Lsmartisan/widget/BHM;
.super Ljava/lang/Object;
.source "BHM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/BHM$BHMDialog;,
        Lsmartisan/widget/BHM$BHMDialogListener;,
        Lsmartisan/widget/BHM$OnTitleButtonClickListener;,
        Lsmartisan/widget/BHM$OnBHMListItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BHM"


# instance fields
.field private dialogContentView:Landroid/view/View;

.field private isSingleOnly:Z

.field private mCombinedAdapter:Lsmartisan/widget/BHMListAdapter;

.field private mCombinedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/BHMDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCombinedListItemClickListener:Lsmartisan/widget/BHM$OnBHMListItemClickListener;

.field private mCombinedListView:Landroid/widget/ListView;

.field private mContentLayout:Lsmartisan/widget/BHMContentLayout;

.field private mCustomCombinedAdapter:Lsmartisan/widget/BHMListAdapter;

.field private mCustomSingleAdapter:Lsmartisan/widget/BHMListAdapter;

.field private mDialog:Lsmartisan/widget/BHM$BHMDialog;

.field private mDialogListener:Lsmartisan/widget/BHM$BHMDialogListener;

.field private mLeftLitener:Lsmartisan/widget/BHM$OnTitleButtonClickListener;

.field private mRightLitener:Lsmartisan/widget/BHM$OnTitleButtonClickListener;

.field private mSingleAdapter:Lsmartisan/widget/BHMListAdapter;

.field private mSingleItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/BHMDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleListItemClickListener:Lsmartisan/widget/BHM$OnBHMListItemClickListener;

.field private mSingleListView:Landroid/widget/ListView;

.field private mSlideInFromLeft:Landroid/view/animation/Animation;

.field private mSlideInFromRight:Landroid/view/animation/Animation;

.field private mSlideOutToLeft:Landroid/view/animation/Animation;

.field private mSlideOutToRight:Landroid/view/animation/Animation;

.field private mTitle:Ljava/lang/String;

.field private mWindow:Landroid/view/Window;

.field private titleBar:Lsmartisan/widget/MenuDialogTitleBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$OnBHMListItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BHM;->mSingleListItemClickListener:Lsmartisan/widget/BHM$OnBHMListItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$OnBHMListItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BHM;->mCombinedListItemClickListener:Lsmartisan/widget/BHM$OnBHMListItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/BHM;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lsmartisan/widget/BHM;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$OnTitleButtonClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BHM;->mLeftLitener:Lsmartisan/widget/BHM$OnTitleButtonClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$OnTitleButtonClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BHM;->mRightLitener:Lsmartisan/widget/BHM$OnTitleButtonClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$BHMDialogListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BHM;->mDialogListener:Lsmartisan/widget/BHM$BHMDialogListener;

    return-object p0
.end method

.method private getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const-string v0, "window"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private initAnim(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lsmartisan/widget/R$anim;->bhm_slide_in_from_right:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BHM;->mSlideInFromRight:Landroid/view/animation/Animation;

    .line 2
    sget v0, Lsmartisan/widget/R$anim;->bhm_slide_out_to_left:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BHM;->mSlideOutToLeft:Landroid/view/animation/Animation;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/BHM;->mSlideOutToLeft:Landroid/view/animation/Animation;

    new-instance v1, Lsmartisan/widget/BHM$3;

    invoke-direct {v1, p0}, Lsmartisan/widget/BHM$3;-><init>(Lsmartisan/widget/BHM;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    sget v0, Lsmartisan/widget/R$anim;->bhm_slide_in_from_left:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BHM;->mSlideInFromLeft:Landroid/view/animation/Animation;

    .line 5
    sget v0, Lsmartisan/widget/R$anim;->bhm_slide_out_to_right:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/BHM;->mSlideOutToRight:Landroid/view/animation/Animation;

    .line 6
    iget-object p1, p0, Lsmartisan/widget/BHM;->mSlideOutToRight:Landroid/view/animation/Animation;

    new-instance v0, Lsmartisan/widget/BHM$4;

    invoke-direct {v0, p0}, Lsmartisan/widget/BHM$4;-><init>(Lsmartisan/widget/BHM;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private onViewCreated(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$id;->menu_dialog_title_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/MenuDialogTitleBar;

    iput-object p1, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    .line 2
    iget-boolean p1, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p1}, Lsmartisan/widget/MenuDialogTitleBar;->getLeftImageView()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_back_selector:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    new-instance v0, Lsmartisan/widget/BHM$5;

    invoke-direct {v0, p0}, Lsmartisan/widget/BHM$5;-><init>(Lsmartisan/widget/BHM;)V

    invoke-virtual {p1, v0}, Lsmartisan/widget/MenuDialogTitleBar;->setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsmartisan/widget/MenuDialogTitleBar;->setTitleSingleLine(Z)V

    .line 6
    iget-object p1, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsmartisan/widget/MenuDialogTitleBar;->addCancelImage(Z)V

    .line 7
    iget-object p1, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    new-instance v0, Lsmartisan/widget/BHM$6;

    invoke-direct {v0, p0}, Lsmartisan/widget/BHM$6;-><init>(Lsmartisan/widget/BHM;)V

    invoke-virtual {p1, v0}, Lsmartisan/widget/MenuDialogTitleBar;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static setMaxTextSize(Landroid/view/View;I)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    .line 3
    invoke-static {v0, p0}, Lsmartisan/InvokeApi$m;->a(Landroid/widget/TextView;F)V

    return-void
.end method


# virtual methods
.method public dismissBHM()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public enterCombinedList(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/BHM;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsmartisan/widget/BHM;->setTitle(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    iget-object v0, p0, Lsmartisan/widget/BHM;->mSlideInFromLeft:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    iget-object v0, p0, Lsmartisan/widget/BHM;->mSlideOutToRight:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lsmartisan/widget/BHM;->showCombinedList()V

    :goto_0
    return-void
.end method

.method public enterSingleList(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mSingleAdapter:Lsmartisan/widget/BHMListAdapter;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BHM;->dialogContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/BHM;->dialogContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/BHM;->setTitle(Ljava/lang/String;)V

    if-nez p3, :cond_2

    .line 4
    iget-boolean p1, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    iget-object p2, p0, Lsmartisan/widget/BHM;->mSlideOutToLeft:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    iget-object p1, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    iget-object p2, p0, Lsmartisan/widget/BHM;->mSlideInFromRight:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lsmartisan/widget/BHM;->showSingleList()V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lsmartisan/widget/BHM;->showSingleList()V

    goto :goto_1

    .line 11
    :cond_3
    sget-object p1, Lsmartisan/widget/BHM;->TAG:Ljava/lang/String;

    const-string p2, "mSingleAdapter is null, can not enter single list."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getCombinedListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getDialog()Lsmartisan/widget/BHM$BHMDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    return-object v0
.end method

.method public getDialogWindow()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getSingleListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getTitleBarTopShadowHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0}, Lsmartisan/widget/MenuDialogTitleBar;->getTopShadowHeight()I

    move-result v0

    return v0
.end method

.method public initBottomFolderListDialog(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lsmartisan/widget/BHM;->initBottomFolderListDialog(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public initBottomFolderListDialog(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lsmartisan/widget/BHMDrawerItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lsmartisan/widget/BHMDrawerItem;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p2, p0, Lsmartisan/widget/BHM;->mCombinedItems:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lsmartisan/widget/BHM;->mSingleItems:Ljava/util/List;

    .line 4
    new-instance p2, Lsmartisan/widget/BHM$BHMDialog;

    sget p3, Lsmartisan/widget/R$style;->BHMDialog:I

    invoke-direct {p2, p0, p1, p3}, Lsmartisan/widget/BHM$BHMDialog;-><init>(Lsmartisan/widget/BHM;Landroid/content/Context;I)V

    iput-object p2, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    .line 5
    iget-object p2, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/BHM;->mWindow:Landroid/view/Window;

    .line 6
    iget-object p2, p0, Lsmartisan/widget/BHM;->mWindow:Landroid/view/Window;

    if-eqz p2, :cond_1

    .line 7
    invoke-static {p1}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p0, Lsmartisan/widget/BHM;->mWindow:Landroid/view/Window;

    const/16 p3, 0x11

    invoke-virtual {p2, p3}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lsmartisan/widget/BHM;->mWindow:Landroid/view/Window;

    const/16 p3, 0x50

    invoke-virtual {p2, p3}, Landroid/view/Window;->setGravity(I)V

    .line 10
    :cond_1
    :goto_0
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$layout;->bhm_content_layout:I

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/BHM;->dialogContentView:Landroid/view/View;

    .line 12
    iget-object p3, p0, Lsmartisan/widget/BHM;->dialogContentView:Landroid/view/View;

    sget v0, Lsmartisan/widget/R$id;->single_list_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    .line 13
    iget-object p3, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    const v0, 0x106000d

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 14
    iget-object p3, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 15
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    sget v3, Lsmartisan/widget/R$layout;->bhm_list_header_separator:I

    iget-object v4, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    invoke-virtual {p3, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 16
    iget-object v3, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    invoke-virtual {v3, p3, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 17
    iget-boolean p3, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    if-eqz p3, :cond_2

    .line 18
    invoke-virtual {p0}, Lsmartisan/widget/BHM;->showSingleList()V

    .line 19
    :cond_2
    iget-object p3, p0, Lsmartisan/widget/BHM;->mCustomSingleAdapter:Lsmartisan/widget/BHMListAdapter;

    if-eqz p3, :cond_3

    .line 20
    iput-object p3, p0, Lsmartisan/widget/BHM;->mSingleAdapter:Lsmartisan/widget/BHMListAdapter;

    goto :goto_1

    .line 21
    :cond_3
    iget-object p3, p0, Lsmartisan/widget/BHM;->mSingleItems:Ljava/util/List;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_4

    .line 22
    new-instance p3, Lsmartisan/widget/BHMListAdapter;

    iget-object v3, p0, Lsmartisan/widget/BHM;->mSingleItems:Ljava/util/List;

    invoke-direct {p3, v3}, Lsmartisan/widget/BHMListAdapter;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lsmartisan/widget/BHM;->mSingleAdapter:Lsmartisan/widget/BHMListAdapter;

    .line 23
    :cond_4
    :goto_1
    iget-object p3, p0, Lsmartisan/widget/BHM;->mSingleAdapter:Lsmartisan/widget/BHMListAdapter;

    if-eqz p3, :cond_5

    .line 24
    iget-object v3, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    :cond_5
    iget-object p3, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    new-instance v3, Lsmartisan/widget/BHM$1;

    invoke-direct {v3, p0}, Lsmartisan/widget/BHM$1;-><init>(Lsmartisan/widget/BHM;)V

    invoke-virtual {p3, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 26
    iget-boolean p3, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    if-nez p3, :cond_a

    .line 27
    iget-object p3, p0, Lsmartisan/widget/BHM;->dialogContentView:Landroid/view/View;

    sget v3, Lsmartisan/widget/R$id;->combined_list_view_view_stub:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewStub;

    if-eqz p3, :cond_6

    .line 28
    invoke-virtual {p3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 29
    :cond_6
    iget-object p3, p0, Lsmartisan/widget/BHM;->dialogContentView:Landroid/view/View;

    sget v3, Lsmartisan/widget/R$id;->combined_list_view:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    .line 30
    iget-object p3, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 31
    iget-object p3, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    invoke-virtual {p3, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 32
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$layout;->bhm_list_header_separator:I

    iget-object v0, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    invoke-virtual {p2, p3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 33
    iget-object p3, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    invoke-virtual {p3, p2, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 34
    iget-object p2, p0, Lsmartisan/widget/BHM;->mCustomCombinedAdapter:Lsmartisan/widget/BHMListAdapter;

    if-eqz p2, :cond_7

    .line 35
    iput-object p2, p0, Lsmartisan/widget/BHM;->mCombinedAdapter:Lsmartisan/widget/BHMListAdapter;

    goto :goto_2

    .line 36
    :cond_7
    iget-object p2, p0, Lsmartisan/widget/BHM;->mCombinedItems:Ljava/util/List;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 37
    new-instance p2, Lsmartisan/widget/BHMListAdapter;

    iget-object p3, p0, Lsmartisan/widget/BHM;->mCombinedItems:Ljava/util/List;

    invoke-direct {p2, p3}, Lsmartisan/widget/BHMListAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lsmartisan/widget/BHM;->mCombinedAdapter:Lsmartisan/widget/BHMListAdapter;

    .line 38
    :cond_8
    :goto_2
    iget-object p2, p0, Lsmartisan/widget/BHM;->mCombinedAdapter:Lsmartisan/widget/BHMListAdapter;

    if-eqz p2, :cond_9

    .line 39
    iget-object p3, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    :cond_9
    iget-object p2, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    new-instance p3, Lsmartisan/widget/BHM$2;

    invoke-direct {p3, p0}, Lsmartisan/widget/BHM$2;-><init>(Lsmartisan/widget/BHM;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    :cond_a
    invoke-direct {p0, p1}, Lsmartisan/widget/BHM;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    .line 42
    iget p3, p2, Landroid/graphics/Point;->y:I

    .line 43
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 44
    iget-object v0, p0, Lsmartisan/widget/BHM;->dialogContentView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->bhm_content_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/BHMContentLayout;

    iput-object v0, p0, Lsmartisan/widget/BHM;->mContentLayout:Lsmartisan/widget/BHMContentLayout;

    .line 45
    iget-object v0, p0, Lsmartisan/widget/BHM;->mContentLayout:Lsmartisan/widget/BHMContentLayout;

    mul-int/lit8 p3, p3, 0x2

    div-int/lit8 p3, p3, 0x3

    invoke-virtual {v0, p3}, Lsmartisan/widget/BHMContentLayout;->setMaxHeight(I)V

    .line 46
    iget-object p3, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    iget-object v0, p0, Lsmartisan/widget/BHM;->dialogContentView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, p2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object p2, p0, Lsmartisan/widget/BHM;->dialogContentView:Landroid/view/View;

    invoke-direct {p0, p2}, Lsmartisan/widget/BHM;->onViewCreated(Landroid/view/View;)V

    .line 48
    iget-boolean p2, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    if-nez p2, :cond_b

    .line 49
    invoke-direct {p0, p1}, Lsmartisan/widget/BHM;->initAnim(Landroid/content/Context;)V

    :cond_b
    return-void
.end method

.method public isBHMShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setCustomCombinedAdapter(Lsmartisan/widget/BHMListAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM;->mCustomCombinedAdapter:Lsmartisan/widget/BHMListAdapter;

    iput-object p1, p0, Lsmartisan/widget/BHM;->mCombinedAdapter:Lsmartisan/widget/BHMListAdapter;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setCustomSingleAdapter(Lsmartisan/widget/BHMListAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM;->mCustomSingleAdapter:Lsmartisan/widget/BHMListAdapter;

    iput-object p1, p0, Lsmartisan/widget/BHM;->mSingleAdapter:Lsmartisan/widget/BHMListAdapter;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lsmartisan/widget/BHMDrawerItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lsmartisan/widget/BHMDrawerItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lsmartisan/widget/BHM;->mCombinedItems:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lsmartisan/widget/BHM;->mCombinedAdapter:Lsmartisan/widget/BHMListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iput-object p2, p0, Lsmartisan/widget/BHM;->mSingleItems:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lsmartisan/widget/BHM;->mSingleAdapter:Lsmartisan/widget/BHMListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDialogListener(Lsmartisan/widget/BHM$BHMDialogListener;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/BHM;->mDialogListener:Lsmartisan/widget/BHM$BHMDialogListener;

    .line 2
    iget-object p1, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    new-instance v0, Lsmartisan/widget/BHM$7;

    invoke-direct {v0, p0}, Lsmartisan/widget/BHM$7;-><init>(Lsmartisan/widget/BHM;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    new-instance v0, Lsmartisan/widget/BHM$8;

    invoke-direct {v0, p0}, Lsmartisan/widget/BHM$8;-><init>(Lsmartisan/widget/BHM;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftImageViewRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftImageViewRes(I)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mContentLayout:Lsmartisan/widget/BHMContentLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/BHMContentLayout;->setMaxHeight(I)V

    :cond_0
    return-void
.end method

.method public setOnCombinedListItemClickListener(Lsmartisan/widget/BHM$OnBHMListItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM;->mCombinedListItemClickListener:Lsmartisan/widget/BHM$OnBHMListItemClickListener;

    return-void
.end method

.method public setOnLeftButtonClickListener(Lsmartisan/widget/BHM$OnTitleButtonClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM;->mLeftLitener:Lsmartisan/widget/BHM$OnTitleButtonClickListener;

    return-void
.end method

.method public setOnRightButtonClickListener(Lsmartisan/widget/BHM$OnTitleButtonClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM;->mRightLitener:Lsmartisan/widget/BHM$OnTitleButtonClickListener;

    return-void
.end method

.method public setOnSingleListItemClickListener(Lsmartisan/widget/BHM$OnBHMListItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM;->mSingleListItemClickListener:Lsmartisan/widget/BHM$OnBHMListItemClickListener;

    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setRightImageViewRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightImageRes(I)V

    return-void
.end method

.method public setSingleOnlyMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM;->mTitle:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleBarTopShadowVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->titleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->showTopShadow(Z)V

    return-void
.end method

.method public showBHM()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mDialog:Lsmartisan/widget/BHM$BHMDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showCombinedList()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public showSingleList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM;->mSingleListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/BHM;->isSingleOnly:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/BHM;->mCombinedListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method
