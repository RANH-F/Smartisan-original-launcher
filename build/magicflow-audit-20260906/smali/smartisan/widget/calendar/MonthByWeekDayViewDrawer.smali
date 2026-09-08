.class public Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;
.super Lsmartisan/widget/calendar/NormalDayCellDrawer;
.source "MonthByWeekDayViewDrawer.java"


# instance fields
.field private mMonthNumTop:I

.field private mWeekNumTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/calendar/NormalDayCellDrawer;-><init>(Landroid/content/Context;ZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->monthweek_relative_week_en_num:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;->mWeekNumTop:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->monthweek_relative_month_num:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;->mMonthNumTop:I

    return-void
.end method


# virtual methods
.method protected drawDayNum(FLjava/lang/String;Ljava/lang/String;Landroid/graphics/Canvas;F)V
    .locals 1

    .line 1
    iget p3, p0, Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;->mMonthNumTop:I

    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;->mWeekNumTop:I

    sub-int/2addr v0, p3

    int-to-float v0, v0

    mul-float/2addr p5, v0

    float-to-int p5, p5

    add-int/2addr p3, p5

    float-to-int p1, p1

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;->getDayNumPaint()Landroid/graphics/Paint;

    move-result-object p5

    invoke-virtual {p0, p1, p2, p5}, Lsmartisan/widget/calendar/NormalDayCellDrawer;->getCenterPosition(ILjava/lang/String;Landroid/graphics/Paint;)F

    move-result p1

    int-to-float p3, p3

    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;->getDayNumPaint()Landroid/graphics/Paint;

    move-result-object p5

    invoke-virtual {p4, p2, p1, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getDayNumPaint()Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mPaintFactory:Lsmartisan/widget/calendar/PaintFactory;

    iget-object v1, p0, Lsmartisan/widget/calendar/NormalDayCellDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lsmartisan/widget/calendar/PaintFactory;->getWeekNumPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
