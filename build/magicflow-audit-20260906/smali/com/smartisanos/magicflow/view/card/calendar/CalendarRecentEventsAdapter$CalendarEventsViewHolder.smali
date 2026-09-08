.class Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;
.super Ljava/lang/Object;
.source "CalendarRecentEventsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarEventsViewHolder"
.end annotation


# instance fields
.field mAllDay:I

.field mCheckBox:Landroid/widget/CheckBox;

.field mEndTime:J

.field mEventContainer:Landroid/view/View;

.field mEventId:J

.field mEventLeftContainer:Landroid/view/View;

.field mEventLeftImageView:Landroid/widget/ImageView;

.field mEventLocation:Landroid/widget/TextView;

.field mEventRightContainer:Landroid/view/View;

.field mEventSubTitle:Landroid/widget/TextView;

.field mEventTitle:Landroid/widget/TextView;

.field mEventTitleIcon:Landroid/widget/ImageView;

.field mLocationIcon:Landroid/widget/ImageView;

.field mLocationLayout:Landroid/widget/LinearLayout;

.field mStartTime:J

.field mSyncId:Ljava/lang/String;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f080067

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventContainer:Landroid/view/View;

    const p1, 0x7f08006c

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventLeftContainer:Landroid/view/View;

    const p1, 0x7f08006d

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventLeftImageView:Landroid/widget/ImageView;

    const p1, 0x7f08006f

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventRightContainer:Landroid/view/View;

    const p1, 0x7f08006a

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitle:Landroid/widget/TextView;

    const p1, 0x7f08006b

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitleIcon:Landroid/widget/ImageView;

    const p1, 0x7f080069

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventSubTitle:Landroid/widget/TextView;

    const p1, 0x7f080068

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventLocation:Landroid/widget/TextView;

    const p1, 0x7f08006e

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mLocationIcon:Landroid/widget/ImageView;

    const p1, 0x7f080071

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mLocationLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f080126

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventContainer:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTitleAndSubColor(Landroid/content/res/Resources;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f05005a

    .line 2
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventSubTitle:Landroid/widget/TextView;

    const v2, 0x7f050057

    .line 7
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventLocation:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080067

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->access$100(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventId:J

    iget-wide v3, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mStartTime:J

    iget-wide v5, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEndTime:J

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->skipToCalendarEventDetail(Landroid/content/Context;JJJ)V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080126

    if-ne p1, v0, :cond_4

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitle:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05005b

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventLocation:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->setTitleAndSubColor(Landroid/content/res/Resources;)V

    .line 12
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    iget-wide v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventId:J

    const-string v3, "event_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14
    iget-wide v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mStartTime:J

    const-string v3, "begin"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-wide v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEndTime:J

    const-string v3, "end"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 16
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mAllDay:I

    const-string v2, "all_day"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mSyncId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mSyncId:Ljava/lang/String;

    const-string v2, "sync_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "status"

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCardHelper;->markAchievedEvent(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 21
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/c;->a(Z)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->access$200(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->access$300(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->access$300(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setBindData(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-wide v0, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventId:J

    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventId:J

    .line 2
    iget v0, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mAllDayStatus:I

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mAllDay:I

    .line 3
    iget-wide v0, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventStartTime:J

    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mStartTime:J

    .line 4
    iget-wide v0, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventEndTime:J

    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEndTime:J

    .line 5
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mSyncId:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mSyncId:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventSubTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->setTitleAndSubColor(Landroid/content/res/Resources;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    iget v1, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mCalendarIconRes:I

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventLeftImageView:Landroid/widget/ImageView;

    iget v3, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventIconRes:I

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventTitleIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->access$000(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;ILandroid/widget/ImageView;ILandroid/widget/ImageView;)V

    .line 10
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mEventLocation:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventLocation:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mLocationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mLocationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-boolean p1, p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;->mShowFinishCheckbox:Z

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setBindStyle(II)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventContainer:Landroid/view/View;

    const p2, 0x7f070350

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventContainer:Landroid/view/View;

    const p2, 0x7f070351

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-gt p1, v1, :cond_2

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventContainer:Landroid/view/View;

    const p2, 0x7f07034e

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mEventContainer:Landroid/view/View;

    const p2, 0x7f07034f

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
