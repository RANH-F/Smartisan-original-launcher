.class public Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;
.super Ljava/lang/Object;
.source "CalendarCardHelper.java"


# static fields
.field public static final ATTENDEE_STATUS:Ljava/lang/String; = "attendeeStatus"

.field public static final BUNDLE_ALL_DAY:Ljava/lang/String; = "all_day"

.field public static final BUNDLE_BEGIN:Ljava/lang/String; = "begin"

.field public static final BUNDLE_END:Ljava/lang/String; = "end"

.field public static final BUNDLE_EVENTID:Ljava/lang/String; = "event_id"

.field private static final BUNDLE_EXTRA_CURRENT_TIME:Ljava/lang/String; = "bundle_extra_current_time"

.field private static final BUNDLE_EXTRA_END_DAY:Ljava/lang/String; = "bundle_extra_end_day"

.field private static final BUNDLE_EXTRA_START_DAY:Ljava/lang/String; = "bundle_extra_start_day"

.field private static final BUNDLE_KEY_TRANS_ARRAY:Ljava/lang/String; = "bundle_trans_array"

.field public static final BUNDLE_STATUS:Ljava/lang/String; = "status"

.field public static final BUNDLE_SYNC_ID:Ljava/lang/String; = "sync_id"

.field public static final CALENDAR_EVENT_EDITEVENT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.calendar.event.EditEventActivity"

.field public static final CALENDAR_EVENT_INFO_ACTIVITY_NAME:Ljava/lang/String; = "com.android.calendar.EventInfoActivity"

.field public static final CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.android.calendar"

.field public static final CALENDAR_SEARCH_ACTIVITY_NAME:Ljava/lang/String; = "com.android.calendar.SearchActivity"

.field public static final INTENT_KEY_FROM_MAGIC_FLOW:Ljava/lang/String; = "key_from_magic_flow"

.field public static final INTENT_KEY_TIME:Ljava/lang/String; = "time"

.field public static final INTENT_KEY_VIEW_TYPE:Ljava/lang/String; = "VIEW"

.field public static final INTENT_VALUE_VIEW_TYPE_MONTH:Ljava/lang/String; = "MONTH"

.field private static final MARK_ACHIEVED:Ljava/lang/String; = "markAchieved"

.field private static final QUERY_PROVIDER_URI:Ljava/lang/String; = "content://com.android.calendar.adapt"

.field private static final QUERY_RECENTLY_EVENTS:Ljava/lang/String; = "QueryRecentlyEvents"

.field public static final THE_NEXT_THREE_DAYS:I = 0x2

.field public static final THE_NEXT_TWO_WEEKS:I = 0xd

.field public static final THE_NEXT_WEEK:I = 0x6

.field public static final THE_SAME_DAY:I = 0x0

.field private static sDayAfterNow:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarEventModels(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 4
    sget v1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->sDayAfterNow:I

    add-int/2addr v1, v0

    const-string v2, "content://com.android.calendar.adapt"

    const-string v3, "QueryRecentlyEvents"

    .line 5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "bundle_extra_start_day"

    .line 6
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bundle_extra_end_day"

    .line 7
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v5, "bundle_extra_current_time"

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "bundle_trans_array"

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 14
    new-instance v2, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;

    invoke-direct {v2}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;-><init>()V

    .line 15
    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->initData(Landroid/os/Bundle;)V

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 17
    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getDayAfterNow()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->sDayAfterNow:I

    return v0
.end method

.method public static markAchievedEvent(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper$1;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDayAfterNow(I)V
    .locals 0

    .line 1
    sput p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->sDayAfterNow:I

    return-void
.end method

.method public static skipToCalendarAllEvents(Landroid/content/Context;J)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350018"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.calendar"

    const-string v2, "com.android.calendar.SearchActivity"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x342c0000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "time"

    .line 5
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "key_from_magic_flow"

    const/4 p2, 0x1

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const p1, 0x7f01000d

    const p2, 0x7f01000e

    .line 7
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 8
    invoke-static {v0, p0, p1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z

    return-void
.end method

.method public static skipToCalendarEventDetail(Landroid/content/Context;JJJ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350017"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.calendar"

    const-string v2, "com.android.calendar.EventInfoActivity"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "beginTime"

    .line 6
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "endTime"

    .line 7
    invoke-virtual {v0, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "attendeeStatus"

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "key_from_magic_flow"

    const/4 p2, 0x1

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const p1, 0x7f01000d

    const p2, 0x7f01000e

    .line 10
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 11
    invoke-static {v0, p0, p1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z

    return-void
.end method
