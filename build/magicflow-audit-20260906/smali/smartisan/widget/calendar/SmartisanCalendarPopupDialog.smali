.class public Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;
.super Lsmartisan/widget/support/SmartisanPopupMenu;
.source "SmartisanCalendarPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCalendarView:Lsmartisan/widget/calendar/CalendarView;

.field private mCallBack:Lsmartisan/widget/OnTimeSetListener;

.field private mCurrentCal:Ljava/util/Calendar;

.field private mCurrentTimeMills:J

.field private mMaxTimeMills:J

.field private mMinTimeMills:J

.field protected mTimePickEx:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/OnTimeSetListener;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2
    invoke-static {}, Lsmartisan/util/CalendarUtils;->getMaxTimeMills()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v8}, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;-><init>(Landroid/content/Context;Lsmartisan/widget/OnTimeSetListener;JJJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/OnTimeSetListener;JJJ)V
    .locals 7

    .line 4
    invoke-direct {p0, p1}, Lsmartisan/widget/support/SmartisanPopupMenu;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object p2, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCallBack:Lsmartisan/widget/OnTimeSetListener;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->calendar_popup_window_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContentAreaWidth:I

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->initViews()V

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move-wide v5, p7

    .line 8
    invoke-virtual/range {v0 .. v6}, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->initDatas(JJJ)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$layout;->calendar_select_time_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->calendar_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/calendar/CalendarView;

    iput-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCalendarView:Lsmartisan/widget/calendar/CalendarView;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->time_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    iput-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mTimePickEx:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    return-void
.end method

.method private notifyAndDismiss(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCallBack:Lsmartisan/widget/OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lsmartisan/widget/OnTimeSetListener;->onTimeSet(J)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->dismiss()V

    return-void
.end method


# virtual methods
.method public getLeftRightShadowWidth()I
    .locals 1

    .line 1
    invoke-super {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getLeftRightShadowWidth()I

    move-result v0

    return v0
.end method

.method public getMenuPanelBgRoundCornerRadius()I
    .locals 1

    .line 1
    invoke-super {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getMenuPanelBgRoundCornerRadius()I

    move-result v0

    return v0
.end method

.method public getPopupWindowWidth()I
    .locals 1

    .line 1
    invoke-super {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->getPopupWindowWidth()I

    move-result v0

    return v0
.end method

.method protected initDatas(JJJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCurrentTimeMills:J

    .line 2
    iput-wide p5, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mMaxTimeMills:J

    .line 3
    iput-wide p3, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mMinTimeMills:J

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lsmartisan/widget/R$id;->cancel:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lsmartisan/widget/R$id;->confirm:I

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCalendarView:Lsmartisan/widget/calendar/CalendarView;

    invoke-virtual {p1}, Lsmartisan/widget/calendar/CalendarView;->getCurrentTime()Landroid/text/format/Time;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mTimePickEx:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-virtual {v0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 7
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mTimePickEx:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-virtual {v0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->minute:I

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->notifyAndDismiss(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected prepareShow()V
    .locals 7

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCalendarView:Lsmartisan/widget/calendar/CalendarView;

    iget-wide v1, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mMinTimeMills:J

    iget-wide v3, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCurrentTimeMills:J

    iget-wide v5, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mMaxTimeMills:J

    invoke-virtual/range {v0 .. v6}, Lsmartisan/widget/calendar/CalendarView;->initTimes(JJJ)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCurrentCal:Ljava/util/Calendar;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCurrentCal:Ljava/util/Calendar;

    iget-wide v1, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCurrentTimeMills:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mTimePickEx:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCurrentCal:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->setCurrentHour(Ljava/lang/Integer;)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mTimePickEx:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->mCurrentCal:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->setOnClickListerners()V

    return-void
.end method

.method public setLeftButtonText(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->setLeftButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lsmartisan/widget/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setOnClickListerners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$id;->confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightButtonText(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/SmartisanCalendarPopupDialog;->setRightButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanPopupMenu;->mMenuPanelView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lsmartisan/widget/R$id;->confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showCenter()V
    .locals 0

    .line 1
    invoke-super {p0}, Lsmartisan/widget/support/SmartisanPopupMenu;->showCenter()V

    return-void
.end method
