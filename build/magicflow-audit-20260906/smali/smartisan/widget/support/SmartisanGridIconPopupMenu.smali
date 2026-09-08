.class public Lsmartisan/widget/support/SmartisanGridIconPopupMenu;
.super Lsmartisan/widget/support/SmartisanPopupMenu;
.source "SmartisanGridIconPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/support/SmartisanGridIconPopupMenu$MenuPageAdapter;,
        Lsmartisan/widget/support/SmartisanGridIconPopupMenu$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final MAX_ROW_NUM:I = 0x3


# instance fields
.field private mColumnNum:I

.field private mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private mOnMenuItemClickListener:Lsmartisan/widget/support/SmartisanGridIconPopupMenu$OnMenuItemClickListener;

.field private mPageIndicator:Lsmartisan/app/IndicatorView;

.field private mPageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPager:Lsmartisan/view/ViewPager;

.field private mPagerAdapter:Lsmartisan/view/PagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/support/SmartisanPopupMenu;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mIconSize:I

    if-lez p2, :cond_0

    .line 3
    iput p2, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mColumnNum:I

    .line 4
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->popup_grid_menu_default_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->initMenuPanel()V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid args, the numColumn should be positive integer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Lsmartisan/view/PagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPagerAdapter:Lsmartisan/view/PagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Lsmartisan/app/IndicatorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPageIndicator:Lsmartisan/app/IndicatorView;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Lsmartisan/widget/support/SmartisanGridIconPopupMenu$OnMenuItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mOnMenuItemClickListener:Lsmartisan/widget/support/SmartisanGridIconPopupMenu$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Lsmartisan/view/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPager:Lsmartisan/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$400(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPageViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->getPageCount()I

    move-result p0

    return p0
.end method

.method private createPageViews()V
    .locals 8

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPageViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->getPageCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPageViews:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mColumnNum:I

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    mul-int v2, v1, v0

    add-int v3, v2, v0

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 7
    iget v3, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mIconSize:I

    .line 8
    :cond_1
    iget-object v4, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$layout;->icons_gridview_layout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    .line 9
    iget v5, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mColumnNum:I

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 10
    new-instance v5, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$2;

    invoke-direct {v5, p0, v0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$2;-><init>(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;I)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11
    new-instance v5, Lsmartisan/widget/support/IconGridAdapter;

    iget-object v6, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lsmartisan/widget/support/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object v2, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPagerAdapter:Lsmartisan/view/PagerAdapter;

    invoke-virtual {v2}, Lsmartisan/view/PagerAdapter;->notifyDataSetChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPageIndicator:Lsmartisan/app/IndicatorView;

    iget-object v1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPagerAdapter:Lsmartisan/view/PagerAdapter;

    invoke-virtual {v1}, Lsmartisan/view/PagerAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPager:Lsmartisan/view/ViewPager;

    invoke-virtual {v2}, Lsmartisan/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsmartisan/app/IndicatorView;->setState(II)V

    return-void
.end method

.method private getPageCount()I
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mIconSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mColumnNum:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private initMenuPanel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$layout;->grid_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/view/ViewPager;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPager:Lsmartisan/view/ViewPager;

    .line 3
    new-instance v0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$MenuPageAdapter;

    invoke-direct {v0, p0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$MenuPageAdapter;-><init>(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)V

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPagerAdapter:Lsmartisan/view/PagerAdapter;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPager:Lsmartisan/view/ViewPager;

    iget-object v1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPagerAdapter:Lsmartisan/view/PagerAdapter;

    invoke-virtual {v0, v1}, Lsmartisan/view/ViewPager;->setAdapter(Lsmartisan/view/PagerAdapter;)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/app/IndicatorView;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPageIndicator:Lsmartisan/app/IndicatorView;

    .line 6
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPager:Lsmartisan/view/ViewPager;

    new-instance v1, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$1;-><init>(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)V

    invoke-virtual {v0, v1}, Lsmartisan/view/ViewPager;->setOnPageChangeListener(Lsmartisan/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->dismiss()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected prepareShow()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->createPageViews()V

    return-void
.end method

.method public setIcons(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mIconSize:I

    .line 2
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mDrawables:Ljava/util/ArrayList;

    return-void
.end method

.method public setIcons([I)V
    .locals 4

    .line 3
    array-length v0, p1

    iput v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mIconSize:I

    .line 4
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mDrawables:Ljava/util/ArrayList;

    .line 6
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mDrawables:Ljava/util/ArrayList;

    iget-object v2, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnMenuItemClickListener(Lsmartisan/widget/support/SmartisanGridIconPopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->mOnMenuItemClickListener:Lsmartisan/widget/support/SmartisanGridIconPopupMenu$OnMenuItemClickListener;

    return-void
.end method
