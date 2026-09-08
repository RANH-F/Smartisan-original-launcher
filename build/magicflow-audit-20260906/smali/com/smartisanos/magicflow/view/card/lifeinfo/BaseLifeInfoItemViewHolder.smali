.class public abstract Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;
.super Ljava/lang/Object;
.source "BaseLifeInfoItemViewHolder.java"


# instance fields
.field protected mInfo:Lcom/smartisanos/magicflow/h/m;

.field protected mItemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->initView()V

    return-void
.end method

.method public static createItemViewHolder(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;
    .locals 1

    const-string v0, "Express"

    .line 1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "Movie"

    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "Flight"

    .line 5
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v0, "Train"

    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v0, "Hotel"

    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelItemViewHolder;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelItemViewHolder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getItemView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    return-object v0
.end method

.method public getLifeInfoItem()Lcom/smartisanos/magicflow/h/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    return-object v0
.end method

.method public abstract initView()V
.end method

.method public abstract itemViewIsValid(Lcom/smartisanos/magicflow/h/m;)I
.end method

.method public setContentViewBackground(ZZ)V
    .locals 0

    return-void
.end method

.method public setViewData(Lcom/smartisanos/magicflow/h/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    return-void
.end method
