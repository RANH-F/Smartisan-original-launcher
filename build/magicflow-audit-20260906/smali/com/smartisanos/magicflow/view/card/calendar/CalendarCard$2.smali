.class Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$2;
.super Ljava/lang/Object;
.source "CalendarCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->onReadyToLoadData()V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->access$000(Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;)Landroid/content/Context;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->skipToCalendarAllEvents(Landroid/content/Context;J)V

    return-void
.end method
