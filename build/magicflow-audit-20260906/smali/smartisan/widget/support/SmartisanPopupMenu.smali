.class public abstract Lsmartisan/widget/support/SmartisanPopupMenu;
.super Ljava/lang/Object;
.source "SmartisanPopupMenu.java"


# static fields
.field public static final DIRECTION_BOTTOM:I = 0x1

.field public static final DIRECTION_LEFT:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x3

.field public static final DIRECTION_TOP:I


# instance fields
.field protected mAnchorView:Landroid/view/View;

.field private mArrowHeight:I

.field private mArrowVisible:Z

.field private mArrowWidth:I

.field private mAutoAdjustPopupDirection:Z

.field protected mBgLeftRightShadowWidth:I

.field protected mBgTopBottomShadowHeight:I

.field private mClipToScreen:Z

.field protected mContentAreaWidth:I

.field protected mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mMenuPanelBgRoundCornerRadius:I

.field protected mMenuPanelView:Landroid/view/View;

.field private mMenuPopup:Z

.field private mMinDistance:I

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field private mRequestFocusable:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowAboveAnchor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mRequestFocusable:Z

    .line 3
    iput-boolean v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mArrowVisible:Z

    .line 4
    iput-boolean v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mClipToScreen:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPopup:Z

    .line 6
    iput-boolean v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mAutoAdjustPopupDirection:Z

    .line 7
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    .line 8
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 9
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 10
    sget v1, Lsmartisan/widget/R$dimen;->popup_bg_left_right_shadow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    .line 11
    sget v1, Lsmartisan/widget/R$dimen;->popup_bg_top_bottom_shadow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgTopBottomShadowHeight:I

    .line 12
    sget v1, Lsmartisan/widget/R$dimen;->menu_panel_bg_round_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelBgRoundCornerRadius:I

    .line 13
    sget v1, Lsmartisan/widget/R$dimen;->menu_panel_bg_arrow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mArrowWidth:I

    .line 14
    sget v1, Lsmartisan/widget/R$dimen;->menu_panel_bg_arrow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mArrowHeight:I

    .line 15
    sget v1, Lsmartisan/widget/R$dimen;->menu_panel_bg_min_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMinDistance:I

    const-string v0, "window"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 18
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 19
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mScreenWidth:I

    .line 20
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mScreenHeight:I

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 22
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mScreenWidth:I

    .line 23
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mScreenHeight:I

    :goto_0
    return-void
.end method

.method private getAnimationStyle()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mShowAboveAnchor:Z

    const-string v1, "style"

    if-eqz v0, :cond_0

    const-string v0, "Animation_DropDownUp"

    invoke-static {v1, v0}, Lsmartisan/InvokeApi$c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "Animation_DropDownDown"

    .line 2
    invoke-static {v1, v0}, Lsmartisan/InvokeApi$c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private setArrowLocOnLayout(Landroid/view/View;IIIZ)V
    .locals 0

    .line 1
    sget p2, Lsmartisan/widget/R$id;->arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    .line 2
    new-instance p2, Lsmartisan/widget/support/SmartisanPopupMenu$3;

    invoke-direct {p2, p0, p1}, Lsmartisan/widget/support/SmartisanPopupMenu$3;-><init>(Lsmartisan/widget/support/SmartisanPopupMenu;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method private setArrowVisible(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget v0, Lsmartisan/widget/R$id;->arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createContentViewWithArrow(III)Landroid/view/View;
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    .line 1
    sget v3, Lsmartisan/widget/R$layout;->popup_menu_layout_for_right:I

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown direction value:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    sget v3, Lsmartisan/widget/R$layout;->popup_menu_layout_for_left:I

    goto :goto_0

    .line 4
    :cond_2
    sget v3, Lsmartisan/widget/R$layout;->popup_menu_layout_for_bottom:I

    .line 5
    invoke-virtual {p0, v2}, Lsmartisan/widget/support/SmartisanPopupMenu;->setShowAboveAnchor(Z)V

    goto :goto_0

    .line 6
    :cond_3
    sget v3, Lsmartisan/widget/R$layout;->popup_menu_layout_for_top:I

    .line 7
    :goto_0
    iget-object v4, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 9
    sget v4, Lsmartisan/widget/R$id;->place_holder:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 10
    sget v5, Lsmartisan/widget/R$id;->arrow:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p0, v5}, Lsmartisan/widget/support/SmartisanPopupMenu;->onArrowViewInflated(Landroid/widget/ImageView;)V

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    iget p2, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgTopBottomShadowHeight:I

    add-int/2addr p3, p2

    iget p2, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelBgRoundCornerRadius:I

    add-int/2addr p3, p2

    int-to-float p2, p3

    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_1

    .line 13
    :cond_5
    iget p3, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelBgRoundCornerRadius:I

    add-int/2addr p2, p3

    .line 14
    iget v6, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    sub-int/2addr v6, p3

    iget p3, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mArrowWidth:I

    sub-int/2addr v6, p3

    .line 15
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 16
    iget p3, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setX(F)V

    :goto_1
    if-eqz p1, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 18
    :cond_7
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 19
    :cond_8
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 20
    :cond_9
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 21
    :goto_2
    sget p1, Lsmartisan/widget/R$drawable;->popup_menu_bg_shadow:I

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 22
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    new-instance p2, Lsmartisan/widget/support/SmartisanPopupMenu$1;

    invoke-direct {p2, p0}, Lsmartisan/widget/support/SmartisanPopupMenu$1;-><init>(Lsmartisan/widget/support/SmartisanPopupMenu;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance p1, Lsmartisan/widget/support/SmartisanPopupMenu$2;

    invoke-direct {p1, p0}, Lsmartisan/widget/support/SmartisanPopupMenu$2;-><init>(Lsmartisan/widget/support/SmartisanPopupMenu;)V

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getLeftRightShadowWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    return v0
.end method

.method public getMenuPanelBgRoundCornerRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelBgRoundCornerRadius:I

    return v0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getPopupWindowWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    iget v1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onArrowViewInflated(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method protected abstract prepareShow()V
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setArrowInvisible()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mArrowVisible:Z

    return-void
.end method

.method public setAutoAdjustPopupDirection(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mAutoAdjustPopupDirection:Z

    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mClipToScreen:Z

    return-void
.end method

.method public setContentAreaWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mRequestFocusable:Z

    return-void
.end method

.method public setMenuPopup(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPopup:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowAboveAnchor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mShowAboveAnchor:Z

    return-void
.end method

.method public show(IIIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lsmartisan/widget/support/SmartisanPopupMenu;->show(IIIIIZ)V

    return-void
.end method

.method public show(IIIIIZ)V
    .locals 14

    move-object v6, p0

    move v2, p1

    move/from16 v0, p4

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->prepareShow()V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getPopupWindowWidth()I

    move-result v1

    .line 4
    iget-object v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-static {v1, v7}, Lsmartisan/InvokeApi$i;->a(Landroid/widget/PopupWindow;Z)V

    .line 7
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-boolean v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mRequestFocusable:Z

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 11
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 12
    iget-object v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13
    iget-object v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getAnimationStyle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    move/from16 v4, p5

    .line 14
    invoke-virtual {p0, p1, v0, v4}, Lsmartisan/widget/support/SmartisanPopupMenu;->createContentViewWithArrow(III)Landroid/view/View;

    move-result-object v8

    .line 15
    iget-boolean v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mArrowVisible:Z

    const/4 v9, 0x0

    if-nez v3, :cond_0

    .line 16
    invoke-direct {p0, v8, v9}, Lsmartisan/widget/support/SmartisanPopupMenu;->setArrowVisible(Landroid/view/View;Z)V

    .line 17
    :cond_0
    aget v3, v1, v9

    add-int v3, v3, p2

    .line 18
    aget v1, v1, v7

    add-int v10, v1, p3

    .line 19
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_1

    if-eq v2, v7, :cond_1

    move v1, v0

    move v0, v9

    goto :goto_1

    .line 20
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iget-object v5, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mAnchorView:Landroid/view/View;

    invoke-static {v5, v1}, Lsmartisan/InvokeApi$p;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 22
    iget-object v5, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lsmartisan/InvokeApi$f;->a(Landroid/content/Context;)I

    move-result v5

    .line 23
    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    add-int/lit8 v11, v1, 0x0

    .line 24
    iget v12, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    add-int/2addr v11, v12

    if-gez v11, :cond_2

    sub-int/2addr v3, v11

    add-int/2addr v0, v11

    goto :goto_0

    .line 25
    :cond_2
    iget-object v11, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v11

    add-int/2addr v1, v11

    sub-int/2addr v1, v5

    iget v5, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    sub-int/2addr v1, v5

    if-lez v1, :cond_3

    sub-int/2addr v3, v1

    add-int/2addr v0, v1

    :cond_3
    :goto_0
    move v1, v0

    move v0, v7

    :goto_1
    move v11, v3

    move v3, v1

    goto :goto_2

    :cond_4
    move v11, v3

    move v3, v0

    move v0, v7

    :goto_2
    if-eqz v0, :cond_f

    move-object v0, p0

    move-object v1, v8

    move v2, p1

    move/from16 v4, p5

    move/from16 v5, p6

    .line 26
    invoke-direct/range {v0 .. v5}, Lsmartisan/widget/support/SmartisanPopupMenu;->setArrowLocOnLayout(Landroid/view/View;IIIZ)V

    .line 27
    iget-object v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 28
    iget-boolean v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPopup:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_6

    .line 29
    iget v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mScreenHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 30
    iget-object v2, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    invoke-virtual {v2, v9, v0}, Landroid/view/View;->measure(II)V

    .line 31
    iget-object v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-boolean v2, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mArrowVisible:Z

    if-eqz v2, :cond_5

    iget v2, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mArrowHeight:I

    goto :goto_3

    :cond_5
    move v2, v9

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v10, v0

    .line 32
    :cond_6
    iget-boolean v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mClipToScreen:Z

    if-nez v0, :cond_e

    .line 33
    iget v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mScreenHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 34
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    invoke-virtual {v1, v9, v0}, Landroid/view/View;->measure(II)V

    .line 35
    iget v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mMinDistance:I

    .line 36
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lsmartisan/util/NavigationBarHelper;->isNavigationBarShown(Landroid/content/Context;)Z

    move-result v1

    .line 37
    iget-object v2, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_7

    move v9, v7

    :cond_7
    if-eqz v1, :cond_9

    if-eqz v9, :cond_8

    .line 38
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lsmartisan/util/NavigationBarHelper;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_4

    .line 39
    :cond_8
    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lsmartisan/util/NavigationBarHelper;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v0

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_4

    :cond_9
    move v1, v0

    .line 40
    :goto_4
    iget v2, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    add-int/2addr v2, v11

    iget v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mScreenWidth:I

    sub-int/2addr v2, v0

    .line 41
    iget v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgTopBottomShadowHeight:I

    add-int/2addr v0, v10

    iget-object v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    iget v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mScreenHeight:I

    sub-int/2addr v0, v1

    .line 42
    iget-boolean v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mAutoAdjustPopupDirection:Z

    if-eqz v1, :cond_c

    if-lez v2, :cond_a

    .line 43
    iget v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    sub-int/2addr v11, v1

    .line 44
    iget v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgLeftRightShadowWidth:I

    iget v2, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mMinDistance:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v11, v1

    :cond_a
    const-string v1, "dimen"

    const-string v2, "status_bar_height"

    .line 45
    invoke-static {v1, v2}, Lsmartisan/InvokeApi$c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 46
    iget-object v2, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 47
    iget-object v2, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v10, v2

    iget v3, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mBgTopBottomShadowHeight:I

    add-int/2addr v2, v3

    iget v4, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mMinDistance:I

    sub-int/2addr v2, v4

    if-ge v2, v1, :cond_b

    if-lez v0, :cond_e

    goto :goto_5

    :cond_b
    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    move v10, v2

    goto :goto_6

    :cond_c
    if-lez v2, :cond_d

    sub-int/2addr v11, v2

    :cond_d
    if-lez v0, :cond_e

    :goto_5
    sub-int/2addr v10, v0

    .line 48
    :cond_e
    :goto_6
    iget-object v0, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, v6, Lsmartisan/widget/support/SmartisanPopupMenu;->mAnchorView:Landroid/view/View;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v11, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_f
    return-void
.end method

.method public showCenter()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lsmartisan/widget/support/SmartisanPopupMenu;->showCenter(II)V

    return-void
.end method

.method public showCenter(II)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getPopupWindowWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v4, v0, v1

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getPopupWindowWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getLeftRightShadowWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getMenuPanelBgRoundCornerRadius()I

    move-result v1

    sub-int v6, v0, v1

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move v5, p1

    move v7, p2

    .line 5
    invoke-virtual/range {v2 .. v8}, Lsmartisan/widget/support/SmartisanPopupMenu;->show(IIIIIZ)V

    return-void
.end method
