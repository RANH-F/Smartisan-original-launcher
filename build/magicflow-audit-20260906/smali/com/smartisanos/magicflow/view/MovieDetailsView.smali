.class public Lcom/smartisanos/magicflow/view/MovieDetailsView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "MovieDetailsView.java"


# static fields
.field private static final log:Lcom/smartisanos/magicflow/LOG;


# instance fields
.field private mAddToCalendar:Landroid/widget/FrameLayout;

.field private mAddToCalendarOnClick:Landroid/view/View$OnClickListener;

.field private mAddress:Landroid/widget/TextView;

.field private mCallNum:Landroid/widget/TextView;

.field private mCategory:Landroid/widget/TextView;

.field private mDate:Landroid/widget/TextView;

.field private mEnterMap:Landroid/widget/FrameLayout;

.field private mInfo:Lcom/smartisanos/magicflow/h/n;

.field private mName:Landroid/widget/TextView;

.field private mNavigationOnClick:Landroid/view/View$OnClickListener;

.field private mPhoneNumText:Landroid/widget/LinearLayout;

.field private mPosterView:Landroid/widget/ImageView;

.field private mScreenType:Landroid/widget/TextView;

.field private mSeatNum:Landroid/widget/TextView;

.field private mTicketNum:Landroid/widget/TextView;

.field private mTicketNumLine:Landroid/widget/LinearLayout;

.field private mTicketOrderNum:Landroid/widget/TextView;

.field private mTicketOrderNumLine:Landroid/widget/LinearLayout;

.field private mTicketVerifyNum:Landroid/widget/TextView;

.field private mTicketVerifyNumLine:Landroid/widget/LinearLayout;

.field private mTime:Landroid/widget/TextView;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private mViewingRoom:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/MovieDetailsView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0030

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;-><init>(Lcom/smartisanos/magicflow/view/MovieDetailsView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mNavigationOnClick:Landroid/view/View$OnClickListener;

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/MovieDetailsView$3;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/MovieDetailsView$3;-><init>(Lcom/smartisanos/magicflow/view/MovieDetailsView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mAddToCalendarOnClick:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08008c

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mPosterView:Landroid/widget/ImageView;

    const v0, 0x7f080089

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mDate:Landroid/widget/TextView;

    const v0, 0x7f08008b

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mName:Landroid/widget/TextView;

    const v0, 0x7f080088

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mCategory:Landroid/widget/TextView;

    const v0, 0x7f08008d

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mScreenType:Landroid/widget/TextView;

    const v0, 0x7f080095

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTime:Landroid/widget/TextView;

    const v0, 0x7f08008f

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketNum:Landroid/widget/TextView;

    const v0, 0x7f080091

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketOrderNum:Landroid/widget/TextView;

    const v0, 0x7f080093

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketVerifyNum:Landroid/widget/TextView;

    const v0, 0x7f080096

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mViewingRoom:Landroid/widget/TextView;

    const v0, 0x7f08008e

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mSeatNum:Landroid/widget/TextView;

    const v0, 0x7f080085

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mAddress:Landroid/widget/TextView;

    const v0, 0x7f080086

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mCallNum:Landroid/widget/TextView;

    const v0, 0x7f08008a

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mEnterMap:Landroid/widget/FrameLayout;

    const v0, 0x7f080084

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mAddToCalendar:Landroid/widget/FrameLayout;

    const v0, 0x7f080087

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mPhoneNumText:Landroid/widget/LinearLayout;

    const v0, 0x7f080090

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketNumLine:Landroid/widget/LinearLayout;

    const v0, 0x7f080092

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketOrderNumLine:Landroid/widget/LinearLayout;

    const v0, 0x7f080094

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketVerifyNumLine:Landroid/widget/LinearLayout;

    .line 24
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TitleBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 25
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v0, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, v0}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/magicflow/view/MovieDetailsView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/MovieDetailsView$1;-><init>(Lcom/smartisanos/magicflow/view/MovieDetailsView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mScreenType:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mEnterMap:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mNavigationOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mAddToCalendar:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mAddToCalendarOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/MovieDetailsView;)Lcom/smartisanos/magicflow/h/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    return-object p0
.end method

.method static synthetic access$100()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/MovieDetailsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->addToCalendar()V

    return-void
.end method

.method private addToCalendar()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->log:Lcom/smartisanos/magicflow/LOG;

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
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    const-string v2, "\u300a"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v2, "\u300b"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-wide v2, v2, Lcom/smartisanos/magicflow/h/n;->w:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    const-wide/32 v2, 0x6ddd00

    :cond_5
    const/16 v4, 0x78

    const-string v5, "com.android.calendar"

    const-string v6, "com.android.calendar.event.EditEventActivity"

    .line 13
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-wide v5, v5, Lcom/smartisanos/magicflow/h/n;->p:J

    const-string v7, "beginTime"

    invoke-virtual {v0, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 15
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-wide v5, v5, Lcom/smartisanos/magicflow/h/n;->p:J

    add-long/2addr v5, v2

    const-string v2, "endTime"

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "title"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "hasAlarm"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-object v2, v2, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    const-string v3, "eventLocation"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "minutes"

    .line 20
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "method"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 22
    fill-array-data v1, :array_0

    const-string v2, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x2030000

    const v3, 0x2030006

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
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


# virtual methods
.method public updateView(Lcom/smartisanos/magicflow/h/n;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/n;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mPosterView:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/h/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mCategory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/n;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mScreenType:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/n;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d00a8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mInfo:Lcom/smartisanos/magicflow/h/n;

    iget-object v4, v4, Lcom/smartisanos/magicflow/h/n;->v:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_0
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "--"

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketNumLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketOrderNumLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketNum:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketNumLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketOrderNumLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketOrderNum:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketNumLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketOrderNumLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketNum:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketVerifyNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mTicketVerifyNum:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_2
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mViewingRoom:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mViewingRoom:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :goto_3
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mSeatNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mSeatNum:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :goto_4
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 36
    :cond_9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mAddress:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_5
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 38
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mCallNum:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView;->mCallNum:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/n;->t:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method
