.class public Lsmartisan/widget/support/SmartisanListPopupMenu;
.super Lsmartisan/widget/support/SmartisanPopupMenu;
.source "SmartisanListPopupMenu.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartisanListPopMenu"


# instance fields
.field private mActionText:Landroid/widget/TextView;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBottomActionBar:Landroid/view/View;

.field private mBottomDivider:Landroid/view/View;

.field private mIsGroupMenuAdapter:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLeftBtn:Landroid/widget/Button;

.field private mLeftBtnListener:Landroid/view/View$OnClickListener;

.field private mLeftImageView:Landroid/widget/ImageView;

.field private mListVerticalPadding:I

.field private mListView:Landroid/widget/ListView;

.field private mMenuListTitle:Landroid/widget/TextView;

.field private mRightBtn:Landroid/widget/Button;

.field private mRightBtnListener:Landroid/view/View$OnClickListener;

.field private mRightImageView:Landroid/widget/ImageView;

.field private mShowBottomActionBar:Z

.field private mShowDivider:Z

.field private mShowMenuListTitle:Z

.field private mShowPadding:Z

.field private mTitleContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/support/SmartisanPopupMenu;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowDivider:Z

    .line 3
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->popup_list_menu_default_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanListPopupMenu;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lsmartisan/widget/support/SmartisanPopupMenu;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowDivider:Z

    .line 7
    iget p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    .line 8
    iput p2, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    .line 9
    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanListPopupMenu;->initViews()V

    return-void
.end method

.method private buildList()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowDivider:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    sget v3, Lsmartisan/widget/R$drawable;->revone_smartisan_list_popup_menu_separator:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    sget v2, Lsmartisan/widget/R$drawable;->revone_menu_list_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowDivider:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    sget v3, Lsmartisan/widget/R$drawable;->list_divider_drawable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_2
    iget-boolean v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mIsGroupMenuAdapter:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    sget v2, Lsmartisan/widget/R$drawable;->menu_list_group_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    sget v2, Lsmartisan/widget/R$drawable;->menu_list_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 14
    :goto_0
    iget-boolean v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowPadding:Z

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    .line 16
    iget-object v2, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    .line 17
    iget v3, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListVerticalPadding:I

    .line 18
    iget-object v4, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0, v3, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 19
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 20
    :cond_4
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->popup_list_menu_padding_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListVerticalPadding:I

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$layout;->menu_popupwindow_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->menu_title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->menu_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->menu_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mMenuListTitle:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->bottom_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mBottomActionBar:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->menu_list_bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mBottomDivider:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->left_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftImageView:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->right_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightImageView:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->left_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftBtn:Landroid/widget/Button;

    .line 11
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->right_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightBtn:Landroid/widget/Button;

    .line 12
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->action_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mActionText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getBottomActionBarHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mBottomActionBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mBottomActionBar:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mBottomActionBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getLeftActionView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getListViewHeight()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    iget-object v3, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    invoke-interface {v3, v1, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 4
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 5
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 7
    iget-boolean v3, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowDivider:Z

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowPadding:Z

    if-eqz v0, :cond_2

    .line 10
    iget v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListVerticalPadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    :cond_2
    return v2
.end method

.method public getMenuListTitleHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mMenuListTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->popup_list_menu_title_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getRightActionView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public isShowPadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowPadding:Z

    return v0
.end method

.method public isShowingDividers()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowDivider:Z

    return v0
.end method

.method protected prepareShow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    :cond_0
    iget-boolean v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowBottomActionBar:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowMenuListTitle:Z

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->revone_smartisan_list_popup_menu_top_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 7
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mBottomActionBar:Landroid/view/View;

    iget-boolean v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowBottomActionBar:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mBottomDivider:Landroid/view/View;

    iget-boolean v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowBottomActionBar:Z

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mTitleContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowMenuListTitle:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftBtn:Landroid/widget/Button;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftImageView:Landroid/widget/ImageView;

    .line 11
    :goto_3
    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightBtn:Landroid/widget/Button;

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightImageView:Landroid/widget/ImageView;

    .line 12
    :goto_4
    iget-object v2, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanListPopupMenu;->buildList()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    :cond_0
    instance-of p1, p1, Lsmartisan/widget/support/GroupMenuAdapter;

    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mIsGroupMenuAdapter:Z

    return-void
.end method

.method public setBottomActionBarVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowBottomActionBar:Z

    return-void
.end method

.method public setBottomText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mActionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftButtonVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setLeftImageViewRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setMenuListTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mMenuListTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMenuListTitleVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowMenuListTitle:Z

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setRightButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightButtonVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setRightImageViewRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setShowPadding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowPadding:Z

    return-void
.end method

.method public setShowingDividers(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mShowDivider:Z

    return-void
.end method

.method public setTextOrIconViewVisibility(ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightBtn:Landroid/widget/Button;

    .line 2
    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mRightImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftBtn:Landroid/widget/Button;

    .line 4
    iget-object v1, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mLeftImageView:Landroid/widget/ImageView;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 5
    :goto_0
    iget-object v3, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mActionText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x8

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    return-void
.end method

.method public show(IIIII)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mIsGroupMenuAdapter:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->popup_list_menu_long_press_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanListPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lsmartisan/widget/support/SmartisanListPopupMenu;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lsmartisan/widget/support/SmartisanListPopupMenu;->setShowPadding(Z)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Lsmartisan/widget/support/SmartisanListPopupMenu;->setShowingDividers(Z)V

    .line 6
    invoke-virtual {p0, v1}, Lsmartisan/widget/support/SmartisanPopupMenu;->setClipToScreenEnabled(Z)V

    .line 7
    invoke-virtual {p0, v0}, Lsmartisan/widget/support/SmartisanPopupMenu;->setAutoAdjustPopupDirection(Z)V

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->setArrowInvisible()V

    .line 9
    iget v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgTopBottomShadowHeight:I

    sub-int/2addr p3, v0

    .line 10
    iget v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    sub-int/2addr p2, v0

    :cond_0
    move v2, p2

    move v3, p3

    move-object v0, p0

    move v1, p1

    move v4, p4

    move v5, p5

    .line 11
    invoke-super/range {v0 .. v5}, Lsmartisan/widget/support/SmartisanPopupMenu;->show(IIIII)V

    return-void
.end method
