.class final Lcom/smartisanos/magicflow/cache/CalendarDataCache$1;
.super Ljava/lang/Object;
.source "CalendarDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/CalendarDataCache;->updateCalendarData(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->a()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->getCalendarEventModels(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/smartisanos/magicflow/cache/CalendarDataCache$1$1;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/cache/CalendarDataCache$1$1;-><init>(Lcom/smartisanos/magicflow/cache/CalendarDataCache$1;Ljava/util/List;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
