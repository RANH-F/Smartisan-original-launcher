.class public Lsmartisan/widget/BottomMenuPopupAdapter;
.super Landroid/widget/BaseAdapter;
.source "BottomMenuPopupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;,
        Lsmartisan/widget/BottomMenuPopupAdapter$ItemPressStateListener;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x6

.field public static final MIDLE_BOTTOM_ITEM:I = 0x2

.field private static final ORIGINAL_TEXTSIZE_SP:I = 0xc

.field public static final RIGHT_BOTTOTM_ITEM:I = 0x1

.field public static final TOP_ITEM:I


# instance fields
.field private mChildHeight:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mType:I

    const-string v0, "layout_inflater"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4
    iput-object p2, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mItems:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindView(Landroid/view/View;I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lsmartisan/widget/BottomMenuPopupAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;

    .line 3
    invoke-virtual {p0, p2}, Lsmartisan/widget/BottomMenuPopupAdapter;->isEnabled(I)Z

    move-result v1

    .line 4
    sget v2, Lsmartisan/widget/R$color;->menu_text_color:I

    .line 5
    iget-object v3, p1, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 7
    iget-object v3, p1, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;->mTvTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    invoke-static {v4, v5, v6}, Lsmartisan/util/Utils;->dipTopx(Landroid/content/Context;D)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lsmartisan/util/Utils;->setMaxTextSizeForTextView(Landroid/widget/TextView;F)V

    .line 8
    :cond_0
    iget-object v3, p1, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;->mTvTitle:Landroid/widget/TextView;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p1, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;->mTvTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v0, p1, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 11
    iget-object v0, p1, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object p1, p1, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1, p2}, Lsmartisan/widget/BottomMenuPopupAdapter;->bindViewCustom(Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    return-void
.end method

.method private createHolder(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;

    invoke-direct {v0, p1, p0}, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;-><init>(Landroid/view/View;Lsmartisan/widget/BottomMenuPopupAdapter;)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;D)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p0, p1

    return p0
.end method

.method public static getCompatibilityStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected bindViewCustom(Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/BottomMenuPopupAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItems()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lsmartisan/widget/R$layout;->menu_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    iget p3, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mChildHeight:I

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget v0, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mChildHeight:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lsmartisan/widget/BottomMenuPopupAdapter;->createHolder(Landroid/view/View;)V

    .line 5
    :cond_1
    invoke-direct {p0, p2, p1}, Lsmartisan/widget/BottomMenuPopupAdapter;->bindView(Landroid/view/View;I)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public isItemCheck(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    return p1
.end method

.method public setChildHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BottomMenuPopupAdapter;->mChildHeight:I

    return-void
.end method
