.class public Lsmartisan/widget/letters/LettersBar;
.super Landroid/view/View;
.source "LettersBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/letters/LettersBar$OnBackgroundVisibleChangedListener;,
        Lsmartisan/widget/letters/LettersBar$LBListener;
    }
.end annotation


# instance fields
.field private mBackgroundChangeListener:Lsmartisan/widget/letters/LettersBar$OnBackgroundVisibleChangedListener;

.field private mChosenLetterIndex:I

.field private mContext:Landroid/content/Context;

.field private mDotIcon:Landroid/graphics/Bitmap;

.field private mDotIconX:I

.field mHasChosenLetterFontColor:I

.field private mHighlightIcon:Landroid/graphics/Bitmap;

.field private mHighlightIconHeight:I

.field private mHighlightIconStartX:I

.field private mLetterBarHeight:I

.field private mLetterBarMargin:I

.field private mLetterFontCenterX:I

.field private mLetterFontSize:I

.field private mLetterLocaleFontSize:I

.field private mLetterPaint:Landroid/graphics/Paint;

.field private mLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/letters/LBLetter;",
            ">;"
        }
    .end annotation
.end field

.field private mLettersBarWidth:I

.field private mListener:Lsmartisan/widget/letters/LettersBar$LBListener;

.field mNoChosenLetterFontColor:I

.field private mSettled:Z

.field private mShowBg:Z

.field private mSingleLetterMinHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/letters/LettersBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/letters/LettersBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lsmartisan/widget/letters/LettersBar;->mChosenLetterIndex:I

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    .line 7
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/LettersBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calculateVisibleLettersIndexes()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterBarHeight:I

    iget-object v2, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    iget v2, p0, Lsmartisan/widget/letters/LettersBar;->mSingleLetterMinHeight:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lsmartisan/widget/letters/LettersBar;->mLetterBarHeight:I

    iget v5, p0, Lsmartisan/widget/letters/LettersBar;->mSingleLetterMinHeight:I

    div-int/2addr v2, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v1, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v2, 0x0

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    move v2, v1

    .line 6
    :goto_1
    iget-object v4, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 9
    iget-object v1, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private drawDot(ILandroid/graphics/Canvas;FF)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mDotIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p4, p1

    .line 2
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mDotIcon:Landroid/graphics/Bitmap;

    iget p3, p0, Lsmartisan/widget/letters/LettersBar;->mDotIconX:I

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHighlightIcon(ILandroid/graphics/Canvas;FF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/LettersBar;->isTouchedLetter(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mHighlightIcon:Landroid/graphics/Bitmap;

    iget p3, p0, Lsmartisan/widget/letters/LettersBar;->mHighlightIconStartX:I

    int-to-float p3, p3

    iget v0, p0, Lsmartisan/widget/letters/LettersBar;->mHighlightIconHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p4, v0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawLetter(ILandroid/graphics/Canvas;FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/letters/LBLetter;

    invoke-virtual {v0}, Lsmartisan/widget/letters/LBLetter;->getLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lsmartisan/widget/letters/LettersBar;->drawDot(ILandroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 5
    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p4, v1

    int-to-float p1, p1

    sub-float/2addr p4, p1

    .line 6
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, p3, p4, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawSymbol(ILandroid/graphics/Canvas;FF)V
    .locals 5

    .line 1
    iget-object p3, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsmartisan/widget/letters/LBLetter;

    invoke-virtual {p3}, Lsmartisan/widget/letters/LBLetter;->getLetterBitmaps()[Landroid/graphics/Bitmap;

    move-result-object p3

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/LettersBar;->isTouchedLetter(I)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 3
    :goto_0
    invoke-direct {p0}, Lsmartisan/widget/letters/LettersBar;->isHolderState()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v0

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_3

    .line 4
    aget-object p1, p3, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 5
    aget-object v0, p3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 6
    iget v1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontCenterX:I

    div-int/2addr v0, v4

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 7
    aget-object p3, p3, v4

    div-int/2addr p1, v4

    int-to-float p1, p1

    sub-float/2addr p4, p1

    invoke-virtual {p2, p3, v0, p4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    .line 8
    aget-object p1, p3, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 9
    aget-object v1, p3, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 10
    iget v2, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontCenterX:I

    div-int/2addr v1, v4

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 11
    aget-object p3, p3, v0

    div-int/2addr p1, v4

    int-to-float p1, p1

    sub-float/2addr p4, p1

    invoke-virtual {p2, p3, v1, p4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 12
    :cond_4
    aget-object p1, p3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 13
    aget-object v0, p3, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 14
    iget v2, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontCenterX:I

    div-int/2addr v0, v4

    sub-int/2addr v2, v0

    int-to-float v0, v2

    .line 15
    aget-object p3, p3, v1

    div-int/2addr p1, v4

    int-to-float p1, p1

    sub-float/2addr p4, p1

    invoke-virtual {p2, p3, v0, p4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method private getSingleLetterHeight(ILjava/util/ArrayList;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    int-to-float p1, p1

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 2
    iget p2, p0, Lsmartisan/widget/letters/LettersBar;->mSingleLetterMinHeight:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mContext:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    sget v0, Lsmartisan/widget/R$dimen;->letters_bar_single_letter_min_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/letters/LettersBar;->mSingleLetterMinHeight:I

    .line 4
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$drawable;->letters_bar_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lsmartisan/util/Utils;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/letters/LettersBar;->mLettersBarWidth:I

    .line 5
    sget v0, Lsmartisan/widget/R$dimen;->letters_bar_letter_font_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontSize:I

    .line 6
    sget v0, Lsmartisan/widget/R$dimen;->letters_bar_letter_locale_font_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterLocaleFontSize:I

    .line 7
    iget v0, p0, Lsmartisan/widget/letters/LettersBar;->mLettersBarWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontCenterX:I

    .line 8
    sget v0, Lsmartisan/widget/R$drawable;->letters_bar_highlight_icon:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mHighlightIcon:Landroid/graphics/Bitmap;

    .line 9
    sget v0, Lsmartisan/widget/R$drawable;->letters_bar_highlight_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    iget v1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontCenterX:I

    invoke-static {v0}, Lsmartisan/util/Utils;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lsmartisan/widget/letters/LettersBar;->mHighlightIconStartX:I

    .line 11
    invoke-static {v0}, Lsmartisan/util/Utils;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/letters/LettersBar;->mHighlightIconHeight:I

    .line 12
    sget v0, Lsmartisan/widget/R$dimen;->smartisan_quickbar_letterbar_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterBarMargin:I

    .line 13
    sget v0, Lsmartisan/widget/R$color;->has_chosen_letter_font_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/letters/LettersBar;->mHasChosenLetterFontColor:I

    .line 14
    sget v0, Lsmartisan/widget/R$color;->no_chosen_letter_font_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/letters/LettersBar;->mNoChosenLetterFontColor:I

    .line 15
    sget v0, Lsmartisan/widget/R$drawable;->letters_bar_dot:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mDotIcon:Landroid/graphics/Bitmap;

    .line 16
    iget p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontCenterX:I

    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mDotIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lsmartisan/widget/letters/LettersBar;->mDotIconX:I

    .line 17
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 18
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    iget v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private isHolderState()Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/letters/LettersBar;->mChosenLetterIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTouchedLetter(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/letters/LettersBar;->mChosenLetterIndex:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private measureHeight(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setLetterPaint(I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/LettersBar;->isTouchedLetter(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lsmartisan/widget/letters/LettersBar;->isHolderState()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lsmartisan/widget/letters/LettersBar;->mNoChosenLetterFontColor:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v2, p0, Lsmartisan/widget/letters/LettersBar;->mHasChosenLetterFontColor:I

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 6
    :goto_2
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/letters/LBLetter;

    invoke-virtual {v0}, Lsmartisan/widget/letters/LBLetter;->getLetter()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/letters/LBLetter;

    invoke-virtual {p1}, Lsmartisan/widget/letters/LBLetter;->getType()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 9
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    iget v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterLocaleFontSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_3

    .line 11
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    iget v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_4
    :goto_3
    return-void
.end method

.method private setTouchedLetter(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/letters/LettersBar;->mChosenLetterIndex:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 4
    iget v1, p0, Lsmartisan/widget/letters/LettersBar;->mChosenLetterIndex:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    int-to-float v2, v2

    div-float/2addr p1, v2

    iget-object v2, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, v3}, Lsmartisan/widget/letters/LettersBar;->setTouchedLetter(I)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    if-eqz v0, :cond_2

    if-eq v1, p1, :cond_2

    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mListener:Lsmartisan/widget/letters/LettersBar$LBListener;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    .line 9
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 10
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mListener:Lsmartisan/widget/letters/LettersBar$LBListener;

    iget-object v1, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/letters/LBLetter;

    invoke-virtual {v1}, Lsmartisan/widget/letters/LBLetter;->getLetter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lsmartisan/widget/letters/LettersBar$LBListener;->onLetterChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/LettersBar;->setTouchedLetter(I)V

    .line 12
    :cond_2
    invoke-virtual {p0, v2}, Lsmartisan/widget/letters/LettersBar;->setShowBg(Z)V

    goto :goto_0

    .line 13
    :cond_3
    iget-boolean v0, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mListener:Lsmartisan/widget/letters/LettersBar$LBListener;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    .line 15
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 16
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mListener:Lsmartisan/widget/letters/LettersBar$LBListener;

    iget-object v1, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/letters/LBLetter;

    invoke-virtual {v1}, Lsmartisan/widget/letters/LBLetter;->getLetter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lsmartisan/widget/letters/LettersBar$LBListener;->onLetterChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/LettersBar;->setTouchedLetter(I)V

    .line 18
    :cond_4
    invoke-direct {p0, v3}, Lsmartisan/widget/letters/LettersBar;->setTouchedLetter(I)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lsmartisan/widget/letters/LettersBar;->setShowBg(Z)V

    .line 20
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_6
    if-eq v1, p1, :cond_7

    if-ltz p1, :cond_7

    .line 21
    iget-object v0, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 22
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/LettersBar;->setTouchedLetter(I)V

    .line 23
    :cond_7
    invoke-virtual {p0, v2}, Lsmartisan/widget/letters/LettersBar;->setShowBg(Z)V

    :goto_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/letters/LettersBar;->calculateVisibleLettersIndexes()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    iget v1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterBarHeight:I

    invoke-direct {p0, v1, v0}, Lsmartisan/widget/letters/LettersBar;->getSingleLetterHeight(ILjava/util/ArrayList;)F

    move-result v1

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    invoke-direct {p0, v3}, Lsmartisan/widget/letters/LettersBar;->setLetterPaint(I)V

    .line 8
    iget v4, p0, Lsmartisan/widget/letters/LettersBar;->mLetterFontCenterX:I

    int-to-float v4, v4

    iget-object v5, p0, Lsmartisan/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisan/widget/letters/LBLetter;

    invoke-virtual {v6}, Lsmartisan/widget/letters/LBLetter;->getLetter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, v1

    div-float v6, v1, v6

    add-float/2addr v5, v6

    .line 9
    iget v6, p0, Lsmartisan/widget/letters/LettersBar;->mLetterBarMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 10
    invoke-direct {p0, v3, p1, v4, v5}, Lsmartisan/widget/letters/LettersBar;->drawHighlightIcon(ILandroid/graphics/Canvas;FF)V

    .line 11
    iget-object v6, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisan/widget/letters/LBLetter;

    invoke-virtual {v6}, Lsmartisan/widget/letters/LBLetter;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 12
    invoke-direct {p0, v3, p1, v4, v5}, Lsmartisan/widget/letters/LettersBar;->drawSymbol(ILandroid/graphics/Canvas;FF)V

    goto :goto_1

    .line 13
    :cond_0
    invoke-direct {p0, v3, p1, v4, v5}, Lsmartisan/widget/letters/LettersBar;->drawLetter(ILandroid/graphics/Canvas;FF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-direct {p0, p2}, Lsmartisan/widget/letters/LettersBar;->measureHeight(I)I

    move-result p1

    iget p2, p0, Lsmartisan/widget/letters/LettersBar;->mLetterBarMargin:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetterBarHeight:I

    return-void
.end method

.method public setLetters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsmartisan/widget/letters/LBLetter;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    return-void
.end method

.method public setListener(Lsmartisan/widget/letters/LettersBar$LBListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mListener:Lsmartisan/widget/letters/LettersBar$LBListener;

    return-void
.end method

.method public setOnBackgroundVisibleChangedListener(Lsmartisan/widget/letters/LettersBar$OnBackgroundVisibleChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mBackgroundChangeListener:Lsmartisan/widget/letters/LettersBar$OnBackgroundVisibleChangedListener;

    return-void
.end method

.method public setSettled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    .line 2
    iget-boolean p1, p0, Lsmartisan/widget/letters/LettersBar;->mSettled:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/LettersBar;->setTouchedLetter(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShowBg(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/letters/LettersBar;->mShowBg:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/letters/LettersBar;->mShowBg:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$drawable;->letters_bar_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/letters/LettersBar;->mBackgroundChangeListener:Lsmartisan/widget/letters/LettersBar$OnBackgroundVisibleChangedListener;

    if-eqz p1, :cond_1

    .line 5
    iget-boolean v0, p0, Lsmartisan/widget/letters/LettersBar;->mShowBg:Z

    invoke-interface {p1, v0}, Lsmartisan/widget/letters/LettersBar$OnBackgroundVisibleChangedListener;->OnBackgroundVisibleChanged(Z)V

    :cond_1
    return-void
.end method
