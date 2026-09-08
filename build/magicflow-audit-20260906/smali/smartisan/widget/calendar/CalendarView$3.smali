.class Lsmartisan/widget/calendar/CalendarView$3;
.super Landroid/os/Handler;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/calendar/CalendarView;


# direct methods
.method constructor <init>(Lsmartisan/widget/calendar/CalendarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/CalendarView$3;->this$0:Lsmartisan/widget/calendar/CalendarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView$3;->this$0:Lsmartisan/widget/calendar/CalendarView;

    invoke-static {v0}, Lsmartisan/widget/calendar/CalendarView;->access$300(Lsmartisan/widget/calendar/CalendarView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView$3;->this$0:Lsmartisan/widget/calendar/CalendarView;

    iget v1, v0, Lsmartisan/widget/calendar/CalendarView;->mAddTimes:I

    const/4 v2, 0x0

    rsub-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1}, Lsmartisan/widget/calendar/CalendarView;->access$400(Lsmartisan/widget/calendar/CalendarView;I)Z

    const/4 v0, 0x5

    .line 5
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView$3;->this$0:Lsmartisan/widget/calendar/CalendarView;

    invoke-static {v1, p1}, Lsmartisan/widget/calendar/CalendarView;->access$500(Lsmartisan/widget/calendar/CalendarView;Ljava/util/Calendar;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView$3;->this$0:Lsmartisan/widget/calendar/CalendarView;

    invoke-virtual {v0, p1, v2}, Lsmartisan/widget/calendar/CalendarView;->jumpToDayForMonth(Ljava/util/Calendar;Z)I

    .line 7
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$3;->this$0:Lsmartisan/widget/calendar/CalendarView;

    iput v2, p1, Lsmartisan/widget/calendar/CalendarView;->mAddTimes:I

    :cond_0
    return-void
.end method
