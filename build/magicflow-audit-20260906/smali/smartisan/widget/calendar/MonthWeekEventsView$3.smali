.class Lsmartisan/widget/calendar/MonthWeekEventsView$3;
.super Ljava/lang/Object;
.source "MonthWeekEventsView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/calendar/MonthWeekEventsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;


# direct methods
.method constructor <init>(Lsmartisan/widget/calendar/MonthWeekEventsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$3;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$3;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    .line 2
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$3;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    invoke-static {p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->access$200(Lsmartisan/widget/calendar/MonthWeekEventsView;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView$3;->this$0:Lsmartisan/widget/calendar/MonthWeekEventsView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
