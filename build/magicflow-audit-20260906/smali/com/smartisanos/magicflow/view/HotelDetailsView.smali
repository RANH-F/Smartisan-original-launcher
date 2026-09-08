.class public Lcom/smartisanos/magicflow/view/HotelDetailsView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "HotelDetailsView.java"


# static fields
.field private static final LAST_DAY_SUPPLY_TIME:J = 0x2932e00L

.field private static final log:Lcom/smartisanos/magicflow/LOG;


# instance fields
.field private mAddress:Landroid/widget/TextView;

.field private mCheckInDate:Landroid/widget/TextView;

.field private mCheckOutDate:Landroid/widget/TextView;

.field private mContact:Landroid/widget/TextView;

.field private mContactHotel:Landroid/widget/FrameLayout;

.field private mContactText:Landroid/widget/TextView;

.field private mDayCount:Landroid/widget/TextView;

.field private mEnterMap:Landroid/widget/FrameLayout;

.field private mHotelName:Landroid/widget/TextView;

.field private mInfo:Lcom/smartisanos/magicflow/h/k;

.field private mRoomType:Landroid/widget/TextView;

.field private mTitle:Lsmartisan/widget/TitleBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/HotelDetailsView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b002f

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080082

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mHotelName:Landroid/widget/TextView;

    const v0, 0x7f08007d

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mCheckInDate:Landroid/widget/TextView;

    const v0, 0x7f08007e

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mCheckOutDate:Landroid/widget/TextView;

    const v0, 0x7f080080

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mDayCount:Landroid/widget/TextView;

    const v0, 0x7f080083

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mRoomType:Landroid/widget/TextView;

    const v0, 0x7f08007a

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mAddress:Landroid/widget/TextView;

    const v0, 0x7f08007b

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mContact:Landroid/widget/TextView;

    const v0, 0x7f080081

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mEnterMap:Landroid/widget/FrameLayout;

    const v0, 0x7f08007f

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mContactHotel:Landroid/widget/FrameLayout;

    const v0, 0x7f08007c

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mContactText:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TitleBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v0, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, v0}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/magicflow/view/HotelDetailsView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/HotelDetailsView$1;-><init>(Lcom/smartisanos/magicflow/view/HotelDetailsView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mEnterMap:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/smartisanos/magicflow/view/HotelDetailsView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/HotelDetailsView$2;-><init>(Lcom/smartisanos/magicflow/view/HotelDetailsView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mContactHotel:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/smartisanos/magicflow/view/HotelDetailsView$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/HotelDetailsView$3;-><init>(Lcom/smartisanos/magicflow/view/HotelDetailsView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/HotelDetailsView;)Lcom/smartisanos/magicflow/h/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    return-object p0
.end method

.method static synthetic access$100()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/HotelDetailsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/HotelDetailsView;->addToCalendar()V

    return-void
.end method

.method private addToCalendar()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "addToCalendar return by mInfo is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0182

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "com.android.calendar"

    const-string v3, "com.android.calendar.event.EditEventActivity"

    .line 8
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-wide v2, v2, Lcom/smartisanos/magicflow/h/k;->p:J

    const-string v4, "beginTime"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-wide v2, v2, Lcom/smartisanos/magicflow/h/k;->t:J

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/magicflow/view/HotelDetailsView;->getStartTimeOfDay(J)J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    const-string v4, "endTime"

    .line 11
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "title"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "allDay"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/k;->k:Ljava/lang/String;

    const-string v2, "eventLocation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 16
    fill-array-data v1, :array_0

    const-string v2, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x2030000

    const v3, 0x2030006

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2030001
    .end array-data
.end method

.method private getStartTimeOfDay(J)J
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    const/16 p2, 0xb

    .line 3
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 4
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 5
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public updateView(Lcom/smartisanos/magicflow/h/k;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mHotelName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mCheckInDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mRoomType:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/k;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/k;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/k;->s:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "--"

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mCheckOutDate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mCheckOutDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget p1, p1, Lcom/smartisanos/magicflow/h/k;->n:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mDayCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mDayCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0d00b8

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/Object;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget v6, v6, Lcom/smartisanos/magicflow/h/k;->n:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mDayCount:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/k;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mContact:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mContact:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mContact:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mContact:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/k;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/k;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView;->mContact:Landroid/widget/TextView;

    new-instance v0, Lcom/smartisanos/magicflow/view/HotelDetailsView$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/HotelDetailsView$4;-><init>(Lcom/smartisanos/magicflow/view/HotelDetailsView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method
