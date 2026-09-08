.class public Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarRecentEventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;
    }
.end annotation


# static fields
.field private static final CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.android.calendar"


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mContext:Landroid/content/Context;

.field private mDisplayEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishEventSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mFinishEventSet:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    .line 4
    const-class v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;ILandroid/widget/ImageView;ILandroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->setEventViewBackground(ILandroid/widget/ImageView;ILandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mFinishEventSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method private removeMarkEvent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mFinishEventSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->resetFinishEventPos()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private resetFinishEventPos()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mFinishEventSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private setEventViewBackground(ILandroid/widget/ImageView;ILandroid/widget/ImageView;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;IILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-static {v6}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bindEventListDateResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getRealCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;-><init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;Landroid/view/View;)V

    .line 3
    iget-object p3, p2, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->mView:Landroid/view/View;

    .line 4
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;

    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->setBindData(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentlyEventModel;I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mDisplayEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$CalendarEventsViewHolder;->setBindStyle(II)V

    return-object p3
.end method

.method public refreshFinishedEvent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->mFinishEventSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->removeMarkEvent()V

    :cond_0
    return-void
.end method
