.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpressTraceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastStatus:Ljava/lang/String;

.field private mTraceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/x;",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mTraceInfoList:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mLastStatus:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mTraceInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mTraceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Lcom/smartisanos/magicflow/h/x;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mTraceInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/x;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->getItem(I)Lcom/smartisanos/magicflow/h/x;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0051

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f08011a

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f080116

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080118

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080119

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080117

    .line 6
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7
    new-instance v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;)V

    .line 8
    iput-object p3, v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 9
    iput-object v1, v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 10
    iput-object v2, v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->line:Landroid/widget/ImageView;

    .line 11
    iput-object v3, v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->status:Landroid/widget/TextView;

    .line 12
    iput-object v4, v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;

    :goto_0
    if-nez p1, :cond_1

    .line 15
    iget-object p3, v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p3, v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->status:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :goto_1
    invoke-virtual {v5, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->setStyle(I)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->getItem(I)Lcom/smartisanos/magicflow/h/x;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->bindData(Lcom/smartisanos/magicflow/h/x;)V

    .line 19
    iget-object p1, v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->description:Landroid/widget/TextView;

    new-instance p3, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$1;

    invoke-direct {p3, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p2
.end method

.method public updateTraceList(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mLastStatus:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mTraceInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->mTraceInfoList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
