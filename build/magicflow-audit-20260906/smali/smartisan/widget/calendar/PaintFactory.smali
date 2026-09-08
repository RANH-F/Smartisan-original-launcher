.class public Lsmartisan/widget/calendar/PaintFactory;
.super Ljava/lang/Object;
.source "PaintFactory.java"


# instance fields
.field private mMonthNumPaint:Landroid/graphics/Paint;

.field private mWeekNumPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMonthNumWithoutLunarPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mMonthNumPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->text_size_month_number:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 9
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/calendar/PaintFactory;->mMonthNumPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public getWeekNumPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mWeekNumPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mWeekNumPaint:Landroid/graphics/Paint;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mWeekNumPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mWeekNumPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->text_size_month_number:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 8
    iget-object v0, p0, Lsmartisan/widget/calendar/PaintFactory;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/calendar/PaintFactory;->mWeekNumPaint:Landroid/graphics/Paint;

    return-object p1
.end method
