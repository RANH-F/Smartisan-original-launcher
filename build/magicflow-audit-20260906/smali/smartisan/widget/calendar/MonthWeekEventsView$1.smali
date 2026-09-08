.class Lsmartisan/widget/calendar/MonthWeekEventsView$1;
.super Ljava/lang/Object;
.source "MonthWeekEventsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/calendar/MonthWeekEventsView;-><init>(Landroid/content/Context;Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field detector:Landroid/view/GestureDetector;

.field mHandleLongPressEvent:Z

.field final synthetic this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;


# direct methods
.method constructor <init>(Lsmartisan/widget/calendar/MonthWeekEventsView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->mHandleLongPressEvent:Z

    .line 3
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    invoke-static {v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->access$000(Lsmartisan/widget/calendar/MonthWeekEventsView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lsmartisan/widget/calendar/MonthWeekEventsView$1$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/calendar/MonthWeekEventsView$1$1;-><init>(Lsmartisan/widget/calendar/MonthWeekEventsView$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->detector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_0

    .line 2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 4
    iget-object p2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->detector:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-boolean p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->mHandleLongPressEvent:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$1;->detector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
