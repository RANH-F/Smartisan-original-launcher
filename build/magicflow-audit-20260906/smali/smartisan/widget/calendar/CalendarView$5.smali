.class Lsmartisan/widget/calendar/CalendarView$5;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/calendar/CalendarView;->onDateTitleClicked()V
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
    iput-object p1, p0, Lsmartisan/widget/calendar/CalendarView$5;->this$0:Lsmartisan/widget/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lsmartisan/widget/SmartisanDatePickerEx;III)V
    .locals 2

    .line 1
    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    .line 2
    invoke-virtual {p1, p4, p3, p2}, Landroid/text/format/Time;->set(III)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView$5;->this$0:Lsmartisan/widget/calendar/CalendarView;

    invoke-static {v0}, Lsmartisan/widget/calendar/CalendarView;->access$000(Lsmartisan/widget/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView$5;->this$0:Lsmartisan/widget/calendar/CalendarView;

    invoke-static {v1}, Lsmartisan/widget/calendar/CalendarView;->access$100(Lsmartisan/widget/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lsmartisan/util/CalendarUtils;->isValidDay(Landroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 7
    iget-object p2, p0, Lsmartisan/widget/calendar/CalendarView$5;->this$0:Lsmartisan/widget/calendar/CalendarView;

    invoke-virtual {p2, p1, v0}, Lsmartisan/widget/calendar/CalendarView;->jumpToDayForMonth(Ljava/util/Calendar;Z)I

    .line 8
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$5;->this$0:Lsmartisan/widget/calendar/CalendarView;

    iput v0, p1, Lsmartisan/widget/calendar/CalendarView;->mAddTimes:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$5;->this$0:Lsmartisan/widget/calendar/CalendarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$string;->invalid_date:I

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
