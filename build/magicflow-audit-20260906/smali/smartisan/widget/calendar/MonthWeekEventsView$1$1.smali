.class Lsmartisan/widget/calendar/MonthWeekEventsView$1$1;
.super Ljava/lang/Object;
.source "MonthWeekEventsView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/calendar/MonthWeekEventsView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsmartisan/widget/calendar/MonthWeekEventsView$1;


# direct methods
.method constructor <init>(Lsmartisan/widget/calendar/MonthWeekEventsView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1$1;->this$1:Lsmartisan/widget/calendar/MonthWeekEventsView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1$1;->this$1:Lsmartisan/widget/calendar/MonthWeekEventsView$1;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->mHandleLongPressEvent:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1$1;->this$1:Lsmartisan/widget/calendar/MonthWeekEventsView$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->mHandleLongPressEvent:Z

    .line 2
    iget-object v0, v0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1$1;->this$1:Lsmartisan/widget/calendar/MonthWeekEventsView$1;

    iget-object v0, v0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    iget-object v0, v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    invoke-interface {v0, p1}, Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;->onCellLongClicked(Landroid/text/format/Time;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1$1;->this$1:Lsmartisan/widget/calendar/MonthWeekEventsView$1;

    iget-object v0, v0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1$1;->this$1:Lsmartisan/widget/calendar/MonthWeekEventsView$1;

    iget-object v0, v0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    iget-object v0, v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    invoke-interface {v0, p1}, Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;->onCellClicked(Landroid/text/format/Time;)V

    const/4 p1, 0x1

    return p1
.end method
