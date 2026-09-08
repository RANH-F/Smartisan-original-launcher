.class Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/util/CalendarUtils$TimeZoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/util/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>(Lsmartisan/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lsmartisan/util/CalendarUtils$TimeZoneUtils;

    .line 2
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    .line 1
    invoke-static {}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 2
    :try_start_0
    invoke-static {v1}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    .line 3
    invoke-static {v0}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$202(Z)Z

    .line 4
    monitor-exit p1

    return-void

    :cond_0
    const-string v2, "key"

    .line 5
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "value"

    .line 6
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move v4, v1

    .line 7
    :cond_1
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "timezoneType"

    .line 10
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v5, "auto"

    .line 11
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v1

    .line 12
    :goto_1
    invoke-static {}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$300()Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 13
    invoke-static {v5}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$302(Z)Z

    :goto_2
    move v4, v0

    goto :goto_0

    :cond_3
    const-string v7, "timezoneInstancesPrevious"

    .line 14
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 16
    invoke-static {}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 17
    invoke-static {v6}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$402(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 18
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    if-eqz v4, :cond_5

    .line 19
    check-cast p2, Landroid/content/Context;

    iget-object p3, p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lsmartisan/util/CalendarUtils$TimeZoneUtils;

    .line 20
    invoke-static {p3}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$500(Lsmartisan/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-static {p2, p3}, Lsmartisan/util/CalendarUtils;->access$600(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "preferences_home_tz_enabled"

    .line 22
    invoke-static {}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$300()Z

    move-result v0

    .line 23
    invoke-static {p2, p3, v0}, Lsmartisan/util/CalendarUtils;->access$700(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    const-string p3, "preferences_home_tz"

    .line 24
    invoke-static {}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lsmartisan/util/CalendarUtils;->access$800(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_5
    invoke-static {v1}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    .line 26
    invoke-static {}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    if-eqz p3, :cond_6

    .line 27
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 28
    :cond_7
    invoke-static {}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 29
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
