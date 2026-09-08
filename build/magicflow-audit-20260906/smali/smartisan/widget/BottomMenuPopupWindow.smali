.class public Lsmartisan/widget/BottomMenuPopupWindow;
.super Landroid/widget/PopupWindow;
.source "BottomMenuPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MENU_ITEM_COLUMN:I = 0x4

.field public static final MENU_ITEM_COLUMN_LAND:I = 0x3


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mBackground:Landroid/graphics/drawable/ColorDrawable;

.field private mBrowserMenuPopupAdapter:Lsmartisan/widget/BottomMenuPopupAdapter;

.field private mContext:Landroid/content/Context;

.field private mCustomNumColumn:I

.field protected mGridView:Landroid/widget/GridView;

.field mIsLand:Z

.field private mParentPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/BottomMenuPopupWindow;->initLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lsmartisan/widget/BottomMenuPopupWindow;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$101(Lsmartisan/widget/BottomMenuPopupWindow;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private dismissWithAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lsmartisan/widget/R$anim;->popup_exit:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lsmartisan/widget/BottomMenuPopupWindow$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/BottomMenuPopupWindow$1;-><init>(Lsmartisan/widget/BottomMenuPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mParentPanel:Landroid/view/View;

    iget-object v1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method protected initLayout(Landroid/content/Context;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$color;->add_nav_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8
    sget v1, Lsmartisan/widget/R$layout;->menu_resolver_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 9
    sget v1, Lsmartisan/widget/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 10
    sget v2, Lsmartisan/widget/R$id;->parentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mParentPanel:Landroid/view/View;

    .line 11
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget v1, Lsmartisan/widget/R$id;->gridview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mGridView:Landroid/widget/GridView;

    .line 13
    iget-object v1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mGridView:Landroid/widget/GridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 14
    sget v1, Lsmartisan/widget/R$id;->menu_dialog_title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/MenuDialogTitleBar;

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1, p0}, Lsmartisan/widget/MenuDialogTitleBar;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "chooseActivity"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/16 p1, 0x400

    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/BottomMenuPopupWindow;->dismissWithAnimation()V

    return-void
.end method

.method public setAdapter(Lsmartisan/widget/BottomMenuPopupAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mIsLand:Z

    .line 2
    iget v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mCustomNumColumn:I

    if-lez v0, :cond_1

    .line 3
    iget-object v1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mGridView:Landroid/widget/GridView;

    iget-boolean v1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mIsLand:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 5
    :goto_2
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mCustomNumColumn:I

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mContext:Landroid/content/Context;

    sget p2, Lsmartisan/widget/R$anim;->popup_enter:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    .line 4
    iget-object p1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mParentPanel:Landroid/view/View;

    iget-object p2, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mAnimation:Landroid/view/animation/Animation;

    new-instance p2, Lsmartisan/widget/BottomMenuPopupWindow$2;

    invoke-direct {p2, p0}, Lsmartisan/widget/BottomMenuPopupWindow$2;-><init>(Lsmartisan/widget/BottomMenuPopupWindow;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public showBrowserMenu(Landroid/view/View;Landroid/view/Menu;III)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Lsmartisan/widget/BottomMenuPopupWindow;->showBrowserMenu(Landroid/view/View;Landroid/view/Menu;IIIII)V

    return-void
.end method

.method public showBrowserMenu(Landroid/view/View;Landroid/view/Menu;IIIII)V
    .locals 6

    .line 1
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 3
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Lsmartisan/widget/BottomMenuPopupAdapter;

    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lsmartisan/widget/BottomMenuPopupAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mBrowserMenuPopupAdapter:Lsmartisan/widget/BottomMenuPopupAdapter;

    .line 7
    iget-object p2, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mBrowserMenuPopupAdapter:Lsmartisan/widget/BottomMenuPopupAdapter;

    invoke-virtual {p0, p2}, Lsmartisan/widget/BottomMenuPopupWindow;->setAdapter(Lsmartisan/widget/BottomMenuPopupAdapter;)V

    .line 8
    iget-object p2, p0, Lsmartisan/widget/BottomMenuPopupWindow;->mBrowserMenuPopupAdapter:Lsmartisan/widget/BottomMenuPopupAdapter;

    invoke-virtual {p2, p3}, Lsmartisan/widget/BottomMenuPopupAdapter;->setChildHeight(I)V

    .line 9
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 10
    invoke-virtual {p0, p5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 11
    invoke-virtual {p0, p1, v2, p6, p7}, Lsmartisan/widget/BottomMenuPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
