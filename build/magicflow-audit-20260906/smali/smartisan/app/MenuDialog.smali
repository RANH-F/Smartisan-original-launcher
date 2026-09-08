.class public Lsmartisan/app/MenuDialog;
.super Landroid/app/Dialog;
.source "MenuDialog.java"

# interfaces
.implements Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/app/MenuDialog$DialogLocation;
    }
.end annotation


# static fields
.field public static final LOCATION_APP_BOTTOM:I = 0x0

.field public static final LOCATION_APP_CENTER:I = 0x1

.field public static final LOCATION_DISPLAY_CENTER:I = 0x2


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field protected final mIsExtDisplay:Z

.field private mListView:Landroid/widget/ListView;

.field private mMarginEdge:I

.field private mMarginView:I

.field private mOkBtn:Lsmartisan/widget/ShadowButton;

.field private mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$style;->MenuDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    .line 3
    new-instance v0, Lsmartisan/app/MenuDialog$1;

    invoke-direct {v0, p0}, Lsmartisan/app/MenuDialog$1;-><init>(Lsmartisan/app/MenuDialog;)V

    iput-object v0, p0, Lsmartisan/app/MenuDialog;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 4
    iput-object p1, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    .line 5
    iget-object p1, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lsmartisan/app/MenuDialog;->mIsExtDisplay:Z

    .line 6
    invoke-direct {p0}, Lsmartisan/app/MenuDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Lsmartisan/app/MenuDialog$DialogLocation;
        .end annotation
    .end param

    .line 7
    sget v0, Lsmartisan/widget/R$style;->MenuDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    .line 9
    new-instance v0, Lsmartisan/app/MenuDialog$1;

    invoke-direct {v0, p0}, Lsmartisan/app/MenuDialog$1;-><init>(Lsmartisan/app/MenuDialog;)V

    iput-object v0, p0, Lsmartisan/app/MenuDialog;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 10
    iput-object p1, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    .line 11
    iget-object p1, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lsmartisan/app/MenuDialog;->mIsExtDisplay:Z

    .line 12
    invoke-direct {p0}, Lsmartisan/app/MenuDialog;->init()V

    .line 13
    invoke-direct {p0, p2}, Lsmartisan/app/MenuDialog;->locateDialog(I)V

    return-void
.end method

.method private adjustLayoutParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget v2, p0, Lsmartisan/app/MenuDialog;->mMarginView:I

    :goto_1
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 4
    iget-object v2, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_2

    .line 5
    iget v0, p0, Lsmartisan/app/MenuDialog;->mMarginView:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lsmartisan/app/MenuDialog;->mMarginEdge:I

    .line 6
    :goto_2
    iget-object v1, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method private getMostAvailableButton()Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lsmartisan/app/MenuDialog;->getButtons()[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-direct {p0, v3}, Lsmartisan/app/MenuDialog;->isButtonAvailable(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/app/MenuDialog;->mIsExtDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lsmartisan/widget/R$layout;->revone_menu_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsmartisan/widget/R$dimen;->revone_dialog_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    sget v0, Lsmartisan/widget/R$id;->menu_dialog_title_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/MenuDialogTitleBar;

    .line 8
    sget v2, Lsmartisan/widget/R$id;->menu_dialog_title_bar_container:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    sget v2, Lsmartisan/widget/R$id;->shadow_divider:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_0
    sget v2, Lsmartisan/widget/R$drawable;->revone_dialog_bg_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 12
    :cond_1
    sget v0, Lsmartisan/widget/R$layout;->menu_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    :goto_0
    sget v0, Lsmartisan/widget/R$id;->menu_dialog_title_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/MenuDialogTitleBar;

    iput-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    .line 14
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->forceRequestAccessibilityFocusWhenAttached(Z)V

    .line 15
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    iget-object v2, p0, Lsmartisan/app/MenuDialog;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lsmartisan/widget/MenuDialogTitleBar;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    iget-object v2, p0, Lsmartisan/app/MenuDialog;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lsmartisan/widget/MenuDialogTitleBar;->setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->setShadowVisible(Z)V

    .line 18
    invoke-direct {p0}, Lsmartisan/app/MenuDialog;->initLeftRightHands()V

    .line 19
    sget v0, Lsmartisan/widget/R$id;->btn_ok:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ShadowButton;

    iput-object v0, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    .line 20
    sget v0, Lsmartisan/widget/R$id;->content_list:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    .line 21
    iget-boolean v0, p0, Lsmartisan/app/MenuDialog;->mIsExtDisplay:Z

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 25
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "PRIVATE_FLAG_NO_MOVE_ANIMATION"

    invoke-static {v0, v1}, Lsmartisan/InvokeApi$r;->a(Landroid/view/Window;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->menu_dialog_btn_margin_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/app/MenuDialog;->mMarginView:I

    .line 29
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->menu_dialog_btn_margin_edge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/app/MenuDialog;->mMarginEdge:I

    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lsmartisan/util/NavigationBarHelper;->setAutoAdapterNavigationBarEnabled(Landroid/view/View;Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;Z)V

    return-void
.end method

.method private initLeftRightHands()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v2}, Lsmartisan/widget/MenuDialogTitleBar;->setRightButtonVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v2}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    .line 5
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightButtonVisibility(I)V

    :goto_0
    return-void
.end method

.method private isButtonAvailable(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private locateDialog(I)V
    .locals 2
    .param p1    # I
        .annotation build Lsmartisan/app/MenuDialog$DialogLocation;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 2
    iget-boolean p1, p0, Lsmartisan/app/MenuDialog;->mIsExtDisplay:Z

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x7fa

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected getButtons()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 1
    iget-object v1, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v1}, Lsmartisan/widget/MenuDialogTitleBar;->getLeftImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v1}, Lsmartisan/widget/MenuDialogTitleBar;->getRightImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onApplyNavigationBarStatusChange(Z)V
    .locals 4

    .line 1
    sget v0, Lsmartisan/widget/R$id;->contentPanel:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lsmartisan/widget/R$dimen;->bar_and_bottom_sheet_extra_space:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 5
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lsmartisan/app/MenuDialog;->mIsExtDisplay:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Lsmartisan/app/MenuDialog;->onApplyNavigationBarStatusChange(Z)V

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->menu_dialog_horizontal_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 5
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    .line 6
    iget-object v1, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    .line 7
    iget-object v2, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1, v0, p1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 8
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 11
    iget-object p1, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lsmartisan/InvokeApi$e;->a(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_2

    .line 2
    :cond_0
    invoke-direct {p0}, Lsmartisan/app/MenuDialog;->getMostAvailableButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsmartisan/app/MenuDialog;->getButtons()[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3
    invoke-direct {p0, v3}, Lsmartisan/app/MenuDialog;->isButtonAvailable(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lsmartisan/app/MenuDialog;->initLeftRightHands()V

    :cond_0
    return-void
.end method

.method public setAdaper(Lsmartisan/app/MenuDialogMultiAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    invoke-direct {p0}, Lsmartisan/app/MenuDialog;->adjustLayoutParams()V

    .line 3
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iget-object p1, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5
    iget-object p1, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$dimen;->menu_dialog_multi_list_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object p1, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    sget p2, Lsmartisan/widget/R$drawable;->menu_dialog_multi_list_bg:I

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    return-void
.end method

.method public setAdapter(Lsmartisan/app/MenuDialogListAdapter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    invoke-direct {p0}, Lsmartisan/app/MenuDialog;->adjustLayoutParams()V

    .line 3
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    invoke-virtual {p1}, Lsmartisan/app/MenuDialogListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->multi_menu_dialog_list_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p1, p0}, Lsmartisan/app/MenuDialogListAdapter;->setDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lsmartisan/app/MenuDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeButton(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightButtonText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0, p2}, Lsmartisan/app/MenuDialog;->setNegativeButton(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeImage(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightImageRes(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftImageViewRes(I)V

    .line 3
    invoke-virtual {p0, p2}, Lsmartisan/app/MenuDialog;->setNegativeButton(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveBgStyle(Lsmartisan/widget/ShadowButton$LongButtonStyle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowButton;->updateBackgroundStyle(Lsmartisan/widget/ShadowButton$LongButtonStyle;)V

    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lsmartisan/app/MenuDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lsmartisan/app/MenuDialog;->adjustLayoutParams()V

    .line 4
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    new-instance v0, Lsmartisan/app/MenuDialog$2;

    invoke-direct {v0, p0, p2}, Lsmartisan/app/MenuDialog$2;-><init>(Lsmartisan/app/MenuDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButtonGone()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mOkBtn:Lsmartisan/widget/ShadowButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lsmartisan/app/MenuDialog;->adjustLayoutParams()V

    return-void
.end method

.method public setPositiveRedBg(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lsmartisan/widget/ShadowButton$LongButtonStyle;->RED:Lsmartisan/widget/ShadowButton$LongButtonStyle;

    invoke-virtual {p0, p1}, Lsmartisan/app/MenuDialog;->setPositiveBgStyle(Lsmartisan/widget/ShadowButton$LongButtonStyle;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lsmartisan/widget/ShadowButton$LongButtonStyle;->GRAY:Lsmartisan/widget/ShadowButton$LongButtonStyle;

    invoke-virtual {p0, p1}, Lsmartisan/app/MenuDialog;->setPositiveBgStyle(Lsmartisan/widget/ShadowButton$LongButtonStyle;)V

    :goto_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    iget-object v1, p0, Lsmartisan/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleSinleLine(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialog;->mTitleBar:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitleSingleLine(Z)V

    return-void
.end method
