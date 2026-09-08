.class public Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;
.super Ljava/lang/Object;
.source "CalendarRecentlyEventModel.java"


# static fields
.field private static final BUNDLE_KEY_CALENDAR_RES:Ljava/lang/String; = "calendar_res"

.field private static final BUNDLE_KEY_EVENT_ICON_RES:Ljava/lang/String; = "icon_res"

.field private static final BUNDLE_KEY_EVENT_SUB_DESC:Ljava/lang/String; = "event_sub_desc"

.field private static final BUNDLE_KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field public mAllDayStatus:I

.field public mCalendarIconRes:I

.field public mEventEndTime:J

.field public mEventIconRes:I

.field public mEventId:J

.field public mEventLocation:Ljava/lang/String;

.field public mEventStartTime:J

.field public mEventSubTitle:Ljava/lang/String;

.field public mEventTitle:Ljava/lang/String;

.field private mLog:Lcom/smartisanos/magicflow/LOG;

.field public mShowFinishCheckbox:Z

.field public mSyncId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mLog:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public static toModel(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;-><init>()V

    const-string v1, "eventId"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventId:J

    const-string v1, "calendarIconRes"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mCalendarIconRes:I

    const-string v1, "eventTitle"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventTitle:Ljava/lang/String;

    const-string v1, "eventIconRes"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventIconRes:I

    const-string v1, "eventSubTitle"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventSubTitle:Ljava/lang/String;

    const-string v1, "eventLocation"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventLocation:Ljava/lang/String;

    const-string v1, "eventStartTime"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventStartTime:J

    const-string v1, "eventEndTime"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventEndTime:J

    const-string v1, "allDayStatus"

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mAllDayStatus:I

    const-string v1, "syncId"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mSyncId:Ljava/lang/String;

    const-string v1, "showFinishCheckbox"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mShowFinishCheckbox:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public initData(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "event_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventId:J

    const-string v0, "calendar_res"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mCalendarIconRes:I

    const-string v0, "title"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventTitle:Ljava/lang/String;

    const-string v0, "icon_res"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventIconRes:I

    const-string v0, "event_sub_desc"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventSubTitle:Ljava/lang/String;

    const-string v0, "eventLocation"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventLocation:Ljava/lang/String;

    const-string v0, "begin"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventStartTime:J

    const-string v0, "end"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventEndTime:J

    const-string v0, "allDay"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mAllDayStatus:I

    const/4 v0, 0x0

    const-string v1, "version"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 11
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mShowFinishCheckbox:Z

    const-string v0, "sync_id"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mSyncId:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mShowFinishCheckbox:Z

    .line 14
    :goto_0
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mLog:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sync_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "eventId"

    .line 2
    iget-wide v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "calendarIconRes"

    .line 3
    iget v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mCalendarIconRes:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "eventTitle"

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventIconRes"

    .line 5
    iget v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventIconRes:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "eventSubTitle"

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventLocation"

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventStartTime"

    .line 8
    iget-wide v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "eventEndTime"

    .line 9
    iget-wide v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventEndTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "allDayStatus"

    .line 10
    iget v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mAllDayStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "syncId"

    .line 11
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "showFinishCheckbox"

    .line 12
    iget-boolean v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mShowFinishCheckbox:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
