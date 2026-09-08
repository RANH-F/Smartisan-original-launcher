.class Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickBarEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/letters/QuickBarEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphabetsAdapter"
.end annotation


# instance fields
.field private mAlphabets:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mNumRows:F

.field private mTotalVerticalSpacing:I

.field final synthetic this$0:Lsmartisan/widget/letters/QuickBarEx;


# direct methods
.method public constructor <init>(Lsmartisan/widget/letters/QuickBarEx;Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mCurrentLanguage:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mCurrentLanguage:Ljava/lang/String;

    invoke-static {p2}, Lsmartisan/widget/letters/AlphabetsConfig;->numRowsByLanguage(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    .line 5
    iget p2, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$2000(Lsmartisan/widget/letters/QuickBarEx;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mTotalVerticalSpacing:I

    return-void
.end method

.method private getSingleCellHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisan/widget/letters/QuickBarEx;->access$2100(Lsmartisan/widget/letters/QuickBarEx;)I

    move-result v0

    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mTotalVerticalSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isNeedIncreaseHeight()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisan/widget/letters/QuickBarEx;->access$2100(Lsmartisan/widget/letters/QuickBarEx;)I

    move-result v0

    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mTotalVerticalSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    rem-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNeedInsreaseHeightPosition(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    aget-object p2, p2, p1

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->getSingleCellHeight()I

    move-result p3

    .line 3
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisan/widget/letters/QuickBarEx;->access$2100(Lsmartisan/widget/letters/QuickBarEx;)I

    move-result v0

    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mTotalVerticalSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, p3

    iget v2, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->isNeedIncreaseHeight()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->isNeedInsreaseHeightPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr p3, v0

    .line 5
    :cond_0
    invoke-static {p2}, Lsmartisan/widget/letters/AlphabetsConfig;->isSymbol(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    sget v0, Lsmartisan/widget/R$drawable;->letter_bar_unfold_button:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lsmartisan/widget/letters/AlphabetView;

    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsmartisan/widget/letters/AlphabetView;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setHeight(I)V

    .line 12
    invoke-static {p2}, Lsmartisan/widget/letters/AlphabetsConfig;->isDisabled(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "#80000000"

    .line 13
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p3, 0x1

    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 15
    :cond_2
    invoke-static {p2}, Lsmartisan/widget/letters/AlphabetsConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 16
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_3
    invoke-static {p2}, Lsmartisan/widget/letters/AlphabetsConfig;->isRussianAlphabet(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 18
    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    move-object p2, v0

    .line 19
    :goto_0
    div-int/lit8 p1, p1, 0x3

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lsmartisan/widget/R$drawable;->quickbar_ex_alphabet_text_light_colorlist:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lsmartisan/widget/R$drawable;->quickbar_ex_alphabet_text_dark_colorlist:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 22
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Lsmartisan/widget/letters/AlphabetsConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lsmartisan/widget/letters/AlphabetsConfig;->isDisabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAlphabets([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    return-void
.end method
