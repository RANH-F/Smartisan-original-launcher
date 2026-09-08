.class Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$1;
.super Ljava/lang/Object;
.source "CalendarCard.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Lcom/smartisanos/magicflow/h/u;Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->setDayAfterNow(I)V

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->updateCalendarData(J)V

    return-void
.end method

.method public onSettingSaveFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
