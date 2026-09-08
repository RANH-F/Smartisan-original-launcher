.class public Lsmartisan/widget/tabswitcher/TabSwitcher;
.super Landroid/widget/RelativeLayout;
.source "TabSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TabSwitcher"


# instance fields
.field private mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

.field private mCheckedRadioButtonId:I

.field private mCheckedRadioButtonIndex:I

.field private final mContext:Landroid/content/Context;

.field private mDrawableTopOffset:F

.field private final mEditBarShadowView:Landroid/view/View;

.field private mEditable:Z

.field private final mEditableLeftBtnView:Landroid/widget/Button;

.field private final mEditableRightBtnView:Landroid/widget/Button;

.field private final mEditableTabBarContainer:Landroid/view/ViewGroup;

.field private mEditableTabBarContainerHeight:I

.field private final mEditableTabbarRadioGroup:Landroid/widget/RadioGroup;

.field private final mEditableTitleView:Landroid/widget/TextView;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMoreTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/tabswitcher/model/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

.field private mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

.field private mTabbarPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

.field private final mTabbarRadioGroup:Landroid/widget/RadioGroup;

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/tabswitcher/model/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lsmartisan/widget/tabswitcher/TabSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/tabswitcher/TabSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditable:Z

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonIndex:I

    .line 6
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 8
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lsmartisan/widget/R$layout;->sb_switch_bar:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    sget p1, Lsmartisan/widget/R$id;->sb_edit:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabBarContainer:Landroid/view/ViewGroup;

    .line 10
    sget p1, Lsmartisan/widget/R$id;->sb_editableTabContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabbarRadioGroup:Landroid/widget/RadioGroup;

    .line 11
    sget p1, Lsmartisan/widget/R$id;->smartisan_sb_txt_title:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTitleView:Landroid/widget/TextView;

    .line 12
    sget p1, Lsmartisan/widget/R$id;->sb_btn_cancel:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableLeftBtnView:Landroid/widget/Button;

    .line 13
    sget p1, Lsmartisan/widget/R$id;->sb_btn_submit:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableRightBtnView:Landroid/widget/Button;

    .line 14
    sget p1, Lsmartisan/widget/R$id;->sb_rg_tabwidget:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    .line 15
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 16
    sget p1, Lsmartisan/widget/R$id;->sb_btn_cancel:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget p1, Lsmartisan/widget/R$id;->sb_btn_submit:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget p1, Lsmartisan/widget/R$id;->sb_edit_layout_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditBarShadowView:Landroid/view/View;

    .line 19
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lsmartisan/widget/tabswitcher/TabSwitcher$1;

    invoke-direct {p2, p0}, Lsmartisan/widget/tabswitcher/TabSwitcher$1;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/tabswitcher/TabSwitcher;)Landroid/widget/RadioGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabbarRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/tabswitcher/TabSwitcher;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabBarContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$202(Lsmartisan/widget/tabswitcher/TabSwitcher;I)I
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabBarContainerHeight:I

    return p1
.end method

.method static synthetic access$300(Lsmartisan/widget/tabswitcher/TabSwitcher;)Lsmartisan/widget/tabswitcher/model/ITabManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

    return-object p0
.end method

.method static synthetic access$402(Lsmartisan/widget/tabswitcher/TabSwitcher;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lsmartisan/widget/tabswitcher/TabSwitcher;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mMoreTabs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lsmartisan/widget/tabswitcher/TabSwitcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->restoreTabs()V

    return-void
.end method

.method private hideEditableBar(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabBarContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->makeShrinkAmimator(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private makeExtendAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 2
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3
    new-instance v2, Lsmartisan/widget/tabswitcher/TabSwitcher$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lsmartisan/widget/tabswitcher/TabSwitcher$2;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    new-instance p2, Lsmartisan/widget/tabswitcher/TabSwitcher$3;

    invoke-direct {p2, p0, v0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher$3;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1
.end method

.method private makeShrinkAmimator(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 9

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->endAnimationPanelAnimation()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v5, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 5
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 6
    new-instance v8, Lsmartisan/widget/tabswitcher/TabSwitcher$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lsmartisan/widget/tabswitcher/TabSwitcher$4;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;IZ)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    new-instance p2, Lsmartisan/widget/tabswitcher/TabSwitcher$5;

    invoke-direct {p2, p0, v0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher$5;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v7, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v7
.end method

.method private prepareAnimPanel()V
    .locals 5

    .line 1
    new-instance v0, Lsmartisan/widget/tabswitcher/AnimationPanel;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

    iget-object v3, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

    iget v4, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mDrawableTopOffset:F

    invoke-direct {v0, v1, v2, v3, v4}, Lsmartisan/widget/tabswitcher/AnimationPanel;-><init>(Landroid/content/Context;Lsmartisan/widget/tabswitcher/PickPutBehavior;Lsmartisan/widget/tabswitcher/PickPutBehavior;F)V

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabbarRadioGroup:Landroid/widget/RadioGroup;

    .line 3
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private restoreTabs()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lsmartisan/widget/tabswitcher/TabSwitcher;->setupRadioGroup(Landroid/widget/RadioGroup;Ljava/util/List;Z)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonId:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mMoreTabs:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3}, Lsmartisan/widget/tabswitcher/TabSwitcher;->setupRadioGroup(Landroid/widget/RadioGroup;Ljava/util/List;Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->sb_tab_bar_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mDrawableTopOffset:F

    .line 5
    new-instance v0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

    invoke-direct {v0, v1, v4, v3}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;-><init>(Landroid/view/ViewGroup;Lsmartisan/widget/tabswitcher/model/ITabManager;Z)V

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

    .line 6
    new-instance v0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

    invoke-direct {v0, v1, v3, v2}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;-><init>(Landroid/view/ViewGroup;Lsmartisan/widget/tabswitcher/model/ITabManager;Z)V

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

    return-void
.end method

.method private setupRadioGroup(Landroid/widget/RadioGroup;Ljava/util/List;Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RadioGroup;",
            "Ljava/util/List<",
            "Lsmartisan/widget/tabswitcher/model/Tab;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->removeAllViews()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setWeightSum(F)V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/tabswitcher/model/Tab;

    .line 4
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lsmartisan/widget/R$layout;->sb_tab_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 5
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    if-eqz p3, :cond_0

    .line 6
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getMoreTabDrawableResId()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getDrawableResId()I

    move-result v2

    .line 7
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 9
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 10
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getTextColorResId()I

    move-result v2

    if-nez v2, :cond_1

    .line 13
    sget v2, Lsmartisan/widget/R$color;->tab_bar_text_color:I

    :cond_1
    if-eqz p3, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$dimen;->smartisan_switch_bar_top_drawablePadding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$drawable;->sb_tabbar_item_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 16
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$dimen;->smartisan_switch_bar_drawablePadding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$drawable;->smartisan_tab_bar_rb_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 19
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x31

    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 22
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 23
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 24
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 25
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private showEditTabbar()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabBarContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabBarContainerHeight:I

    invoke-direct {p0, v0, v1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->makeExtendAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabBarContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public attachAnimPanel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->prepareAnimPanel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

    invoke-virtual {v0}, Lsmartisan/widget/tabswitcher/PickPutBehavior;->reset()V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

    invoke-virtual {v0}, Lsmartisan/widget/tabswitcher/PickPutBehavior;->reset()V

    .line 9
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    return-void
.end method

.method public check(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public detachAnimPanel(Landroid/view/View;IZ)V
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 6
    iget-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mAnimPanel:Lsmartisan/widget/tabswitcher/AnimationPanel;

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->setEditBarShadowVisibility(Z)V

    .line 9
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p3, :cond_5

    .line 10
    iget p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonIndex:I

    if-ltz p1, :cond_5

    iget-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    if-lt p1, p2, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 12
    iget p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonId:I

    if-eq p1, p2, :cond_3

    .line 13
    iput p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonId:I

    .line 14
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonId:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonId:I

    .line 16
    :cond_4
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonId:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    nop

    :cond_5
    :goto_0
    return-void
.end method

.method public isEditBarShown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 1
    iget v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonId:I

    if-eq v0, p2, :cond_5

    if-gez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iput p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonId:I

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p2, :cond_3

    .line 9
    iput v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mCheckedRadioButtonIndex:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_5

    .line 11
    invoke-interface {v0, p1, p2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lsmartisan/widget/R$id;->sb_btn_cancel:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->hideEditableBar(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lsmartisan/widget/R$id;->sb_btn_submit:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->hideEditableBar(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditable:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->showEditTabbar()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEditBarShadowVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditBarShadowView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditBarShadowView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditable:Z

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->isEditBarShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->hideEditableBar(Z)V

    :cond_0
    return-void
.end method

.method public setLeftButtonText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableLeftBtnView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setRightButtonText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableRightBtnView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setTitleText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setup(Lsmartisan/widget/tabswitcher/model/ITabManager;I)V
    .locals 3

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

    .line 2
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/ITabManager;->getTabs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabs:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/ITabManager;->getMoreTabs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mMoreTabs:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lsmartisan/widget/tabswitcher/TabSwitcher;->setupRadioGroup(Landroid/widget/RadioGroup;Ljava/util/List;Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 6
    iget-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabbarRadioGroup:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mMoreTabs:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->setupRadioGroup(Landroid/widget/RadioGroup;Ljava/util/List;Z)V

    .line 7
    iget-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$dimen;->sb_tab_bar_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mDrawableTopOffset:F

    .line 8
    new-instance p2, Lsmartisan/widget/tabswitcher/EditableBarBehavior;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mEditableTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p2, v0, p1, v1}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;-><init>(Landroid/view/ViewGroup;Lsmartisan/widget/tabswitcher/model/ITabManager;Z)V

    iput-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

    .line 9
    new-instance p2, Lsmartisan/widget/tabswitcher/EditableBarBehavior;

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p2, v0, p1, v2}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;-><init>(Landroid/view/ViewGroup;Lsmartisan/widget/tabswitcher/model/ITabManager;Z)V

    iput-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->mTabbarPickPutBehavior:Lsmartisan/widget/tabswitcher/PickPutBehavior;

    return-void
.end method
