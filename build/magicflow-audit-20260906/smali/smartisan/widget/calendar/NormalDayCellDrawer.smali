.class public abstract Lsmartisan/widget/calendar/NormalDayCellDrawer;
.super Lsmartisan/widget/calendar/DayCellViewDrawer;
.source "NormalDayCellDrawer.java"


# instance fields
.field protected mCellWidth:F

.field protected mContext:Landroid/content/Context;

.field private mDrawFocus:Z

.field private mNonthNumSize:I

.field protected mNormalNumColor:I

.field protected mNotFocusColor:I

.field public mPaintFactory:Lsmartisan/widget/calendar/PaintFactory;

.field protected mTodayColor:I

.field private mTodaySize:I

.field protected mTodayText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/calendar/DayCellViewDrawer;-><init>()V

    .line 2
    iput-boolean p2, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mDrawFocus:Z

    .line 3
    iput-object p1, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mContext:Landroid/content/Context;

    .line 4
    iput p3, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mCellWidth:F

    .line 5
    new-instance p2, Lsmartisan/widget/calendar/PaintFactory;

    invoke-direct {p2}, Lsmartisan/widget/calendar/PaintFactory;-><init>()V

    iput-object p2, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mPaintFactory:Lsmartisan/widget/calendar/PaintFactory;

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->initColor()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$string;->today_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mTodayText:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->today_text_size_month_number:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mTodaySize:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->text_size_month_number:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mNonthNumSize:I

    return-void
.end method

.method private initColor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Lsmartisan/widget/R$color;->black_60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mNormalNumColor:I

    .line 3
    sget v1, Lsmartisan/widget/R$color;->month_day_number_other:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mNotFocusColor:I

    .line 4
    sget v1, Lsmartisan/widget/R$color;->month_today_number:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mTodayColor:I

    return-void
.end method


# virtual methods
.method protected drawDayNum(FLjava/lang/String;Ljava/lang/String;Landroid/graphics/Canvas;F)V
    .locals 0

    return-void
.end method

.method public drawView(ILjava/lang/String;Ljava/lang/String;IILandroid/graphics/Canvas;F)V
    .locals 8

    .line 1
    invoke-virtual/range {p0 .. p5}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->prepareDrawView(ILjava/lang/String;Ljava/lang/String;II)V

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->getDayNumPaint()Landroid/graphics/Paint;

    move-result-object p4

    .line 3
    sget v0, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_TODAY:I

    and-int v1, p5, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 4
    :goto_0
    sget v1, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_SELECTED:I

    and-int v4, p5, v1

    if-ne v4, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    .line 5
    :goto_3
    sget v5, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_NOT_FOCUS_MONTH:I

    and-int v6, p5, v5

    if-ne v6, v5, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v3

    .line 6
    :goto_4
    sget v6, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_DAY_OUT_OF_RANGE:I

    and-int v7, p5, v6

    if-ne v7, v6, :cond_5

    move v6, v2

    goto :goto_5

    :cond_5
    move v6, v3

    .line 7
    :goto_5
    sget v7, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_DAY_NO_VALID:I

    and-int/2addr p5, v7

    if-ne p5, v7, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    .line 8
    :goto_6
    iget-boolean p5, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mDrawFocus:Z

    const/4 v3, 0x0

    if-eqz p5, :cond_d

    if-nez v0, :cond_c

    if-eqz v1, :cond_7

    goto :goto_8

    :cond_7
    if-eqz v5, :cond_a

    if-nez v6, :cond_9

    if-eqz v2, :cond_8

    goto :goto_7

    .line 9
    :cond_8
    invoke-virtual {p0, p4, p7}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->setFocusColor(Landroid/graphics/Paint;F)V

    goto :goto_9

    .line 10
    :cond_9
    :goto_7
    invoke-virtual {p0, p4, v3}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->setFocusColor(Landroid/graphics/Paint;F)V

    goto :goto_9

    :cond_a
    if-eqz v2, :cond_b

    .line 11
    invoke-virtual {p0, p4, v3}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->setFocusColor(Landroid/graphics/Paint;F)V

    goto :goto_9

    .line 12
    :cond_b
    invoke-virtual {p0, p4}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->setNormalColor(Landroid/graphics/Paint;)V

    goto :goto_9

    .line 13
    :cond_c
    :goto_8
    invoke-virtual {p0, p4}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->setTodayColor(Landroid/graphics/Paint;)V

    goto :goto_9

    :cond_d
    if-eqz v2, :cond_e

    .line 14
    invoke-virtual {p0, p4, v3}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->setFocusColor(Landroid/graphics/Paint;F)V

    goto :goto_9

    .line 15
    :cond_e
    invoke-virtual {p0, p4}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->setNormalColor(Landroid/graphics/Paint;)V

    .line 16
    :goto_9
    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    if-eqz v0, :cond_f

    .line 17
    iget p2, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mTodaySize:I

    int-to-float p2, p2

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    iget-object p2, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mTodayText:Ljava/lang/String;

    goto :goto_a

    .line 19
    :cond_f
    iget p5, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mNonthNumSize:I

    int-to-float p5, p5

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_a
    move-object v2, p2

    int-to-float v1, p1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    .line 20
    invoke-virtual/range {v0 .. v5}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->drawDayNum(FLjava/lang/String;Ljava/lang/String;Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected getCenterPosition(ILjava/lang/String;Landroid/graphics/Paint;)F
    .locals 1

    int-to-float p1, p1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mCellWidth:F

    invoke-virtual {p0, p2, p3}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p2

    sub-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    return p1
.end method

.method protected abstract getDayNumPaint()Landroid/graphics/Paint;
.end method

.method protected getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 3
    array-length p1, v0

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, v0, v1

    add-float/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method protected prepareDrawView(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method protected setFocusColor(Landroid/graphics/Paint;F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 1
    iget p2, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mNotFocusColor:I

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mNormalNumColor:I

    .line 3
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHasFocus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mDrawFocus:Z

    return-void
.end method

.method protected setNormalColor(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mNormalNumColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected setTodayColor(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mTodayColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
