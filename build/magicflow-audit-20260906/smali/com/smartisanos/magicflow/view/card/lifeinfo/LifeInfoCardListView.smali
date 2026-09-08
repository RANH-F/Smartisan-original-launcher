.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;
.super Landroid/widget/FrameLayout;
.source "LifeInfoCardListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;,
        Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;
    }
.end annotation


# instance fields
.field private hasFootView:Z

.field private hasHeadView:Z

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mAllItemTogether:Z

.field private mFootView:Landroid/view/View;

.field private mFootViewHeight:I

.field private mHeadView:Landroid/view/View;

.field private mHeadViewHeight:I

.field private mInnerMoveHeight:I

.field private mItemViewCategory:Ljava/lang/String;

.field private mNormalItemHeight:I

.field private offsetHeight:I

.field private onItemViewDeleteListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;

.field private onItemViewMoveListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    const-class p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getItemCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mHeadViewHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateHeight(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootViewHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;)Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->onItemViewDeleteListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setFirstItemViewDeleteBtnStatus(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    return p1
.end method

.method private addFootView()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->removeFootView()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    .line 6
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootView:Landroid/view/View;

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    iget v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    mul-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addHeadView()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->removeHeadView()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasHeadView:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasHeadView:Z

    .line 5
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mHeadViewHeight:I

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateHeight(I)V

    :cond_0
    return-void
.end method

.method private addItemView(Landroid/view/View;)V
    .locals 10

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "addCardItemView: itemView has parent"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getItemCount()I

    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 7
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x3f75c28f    # 0.96f

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x3f6b851f    # 0.92f

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 10
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootView:Landroid/view/View;

    add-int/2addr v0, v3

    iget v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 16
    :goto_1
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootViewHeight:I

    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootViewHeight:I

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    mul-int/2addr v0, v1

    :goto_2
    add-int/2addr p1, v0

    .line 18
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateHeight(I)V

    :cond_7
    return-void
.end method

.method private getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method private removeFootView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    :cond_0
    return-void
.end method

.method private removeHeadView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasHeadView:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasHeadView:Z

    :cond_0
    return-void
.end method

.method private setFirstItemViewDeleteBtnStatus(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f080199

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setItemContentViewBackground(Landroid/view/View;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "setItemContentViewBackground return by viewHolder null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->setContentViewBackground(ZZ)V

    return-void
.end method

.method private setItemViewStatus(Landroid/view/View;FZZF)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "setItemViewStatus itemVIew == null return"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translationY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",middleItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    invoke-direct {p0, p1, p3, p4}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemContentViewBackground(Landroid/view/View;ZZ)V

    .line 6
    invoke-virtual {p1, p5}, Landroid/view/View;->setScaleY(F)V

    .line 7
    invoke-virtual {p1, p5}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method private setTogetherAllItemStatus(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setFirstItemViewDeleteBtnStatus(Z)V

    :goto_0
    if-ge v0, p1, :cond_5

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 6
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    iget v3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_1

    .line 7
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3f75c28f    # 0.96f

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    goto :goto_1

    .line 8
    :cond_1
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    int-to-float v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3f6b851f    # 0.92f

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p1, -0x2

    if-ne v0, v1, :cond_3

    .line 9
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3f75c28f    # 0.96f

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    goto :goto_1

    :cond_3
    if-ge v0, v1, :cond_4

    .line 10
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    int-to-float v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3f6b851f    # 0.92f

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private togetherAllItemView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getItemCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setTogetherAllItemStatus(I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    .line 5
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateHeight(I)V

    return-void
.end method

.method private updateHeight(I)V
    .locals 2

    const/high16 v0, 0x10000

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateItemView(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v2, v1, v0

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 4
    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    move-object v6, v5

    move-object v5, p2

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    move-object v6, p1

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    move v1, v3

    :goto_3
    if-ge v1, v0, :cond_4

    .line 6
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;

    if-eqz v7, :cond_3

    .line 7
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/magicflow/h/m;

    invoke-virtual {v7, v8}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->setViewData(Lcom/smartisanos/magicflow/h/m;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_7

    move v0, v3

    :goto_4
    if-ge v0, v2, :cond_7

    if-eqz v4, :cond_5

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mItemViewCategory:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->createItemViewHolder(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->getItemView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/magicflow/h/m;

    invoke-virtual {v1, v5}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->setViewData(Lcom/smartisanos/magicflow/h/m;)V

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->getItemView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->addItemView(Landroid/view/View;)V

    goto :goto_5

    .line 12
    :cond_5
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;

    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->getItemView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->removeItemView(Landroid/view/View;IZ)V

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method private updateViewWithNoData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasHeadView:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->addHeadView()V

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->removeFootView()V

    .line 6
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasHeadView:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mHeadViewHeight:I

    :cond_0
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateHeight(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mInnerMoveHeight:I

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->onItemViewMoveListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;

    .line 5
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->onItemViewDeleteListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasHeadView:Z

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    .line 9
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateHeight(I)V

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public getFootView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootView:Landroid/view/View;

    return-object v0
.end method

.method public getHeadView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mHeadView:Landroid/view/View;

    return-object v0
.end method

.method public getInnerLifeInfoItemViewTags()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasHeadView:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v1, v0, :cond_3

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    instance-of v4, v3, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;

    if-eqz v4, :cond_2

    .line 8
    check-cast v3, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public hasFootView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    return v0
.end method

.method public hasHeadView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasHeadView:Z

    return v0
.end method

.method public isAllItemTogether()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->togetherAllItemView()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->isAllItemTogether()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getInnerLifeInfoItemViewTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->itemViewIsValid(Lcom/smartisanos/magicflow/h/m;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public removeItemView(Landroid/view/View;IZ)V
    .locals 11

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "removeItemView return by removeView == null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "removeItemView return by position < 0"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p3, :cond_2

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->onItemViewDeleteListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;

    invoke-interface {p2, p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;->onItemViewDelete(Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;I)V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    neg-int v1, v1

    iput v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mInnerMoveHeight:I

    .line 9
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 11
    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 12
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v0, :cond_4

    .line 14
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 15
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v8

    new-array v9, v3, [F

    aput v8, v9, v4

    .line 16
    iget v10, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mInnerMoveHeight:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    aput v8, v9, v5

    const-string v8, "translationY"

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 17
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    int-to-long v2, p2

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 20
    new-instance p2, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/view/View;ZI)V

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->onItemViewMoveListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;

    if-eqz p1, :cond_5

    .line 23
    iget p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mInnerMoveHeight:I

    invoke-interface {p1, p2, v2, v3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;->onItemViewMove(IJ)V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setCardItemViews(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    .line 4
    iput-boolean v3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 7
    iget-boolean v4, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v0, v4, :cond_2

    .line 9
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_3

    .line 11
    iget v4, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    div-int/2addr v4, v2

    int-to-float v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x3f75c28f    # 0.96f

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    goto :goto_1

    .line 12
    :cond_3
    iget v4, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    int-to-float v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x3f6b851f    # 0.92f

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v0

    iget v6, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    mul-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 14
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 15
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->removeHeadView()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_5
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setFirstItemViewDeleteBtnStatus(Z)V

    .line 18
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->addFootView()V

    .line 19
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    if-eqz v0, :cond_6

    .line 20
    iget p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootViewHeight:I

    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateHeight(I)V

    goto :goto_2

    .line 21
    :cond_6
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootViewHeight:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateHeight(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public setFootView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootView:Landroid/view/View;

    return-void
.end method

.method public setFootViewHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mFootViewHeight:I

    return-void
.end method

.method public setHeadView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mHeadView:Landroid/view/View;

    return-void
.end method

.method public setHeadViewHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mHeadViewHeight:I

    return-void
.end method

.method public setItemViewType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mItemViewCategory:Ljava/lang/String;

    return-void
.end method

.method public setNormalItemHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    return-void
.end method

.method public setOnItemViewDeleteListener(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->onItemViewDeleteListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;

    return-void
.end method

.method public setOnItemViewMoveListener(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->onItemViewMoveListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;

    return-void
.end method

.method public showAllItemView()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "showAllItemView return by mAllItemTogether = false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/c;->g()Lcom/smartisanos/magicflow/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "showAllItemView return by cardAnimatorRunning"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p0

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewStatus(Landroid/view/View;FZZF)V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getItemCount()I

    move-result v0

    .line 8
    iget v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    .line 9
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v7, v6

    :goto_0
    if-ge v7, v0, :cond_5

    .line 11
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 12
    invoke-direct {p0, v8, v1, v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemContentViewBackground(Landroid/view/View;ZZ)V

    int-to-float v9, v2

    .line 13
    iget-boolean v10, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->hasFootView:Z

    if-eqz v10, :cond_3

    if-nez v7, :cond_2

    .line 14
    iget v9, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    add-int/2addr v9, v2

    goto :goto_2

    :cond_2
    if-le v7, v1, :cond_4

    add-int/lit8 v9, v7, -0x1

    .line 15
    iget v10, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    mul-int/2addr v9, v10

    goto :goto_1

    :cond_3
    if-lez v7, :cond_4

    .line 16
    iget v9, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    mul-int/2addr v9, v7

    :goto_1
    sub-int v9, v2, v9

    :goto_2
    int-to-float v9, v9

    .line 17
    :cond_4
    iget-object v10, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showAllItemView itemView="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v10, 0x2

    new-array v11, v10, [F

    .line 18
    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v12

    aput v12, v11, v6

    aput v9, v11, v1

    const-string v9, "translationY"

    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-array v11, v10, [F

    .line 19
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v1

    const-string v13, "alpha"

    invoke-static {v8, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v13, v10, [F

    .line 20
    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v14

    aput v14, v13, v6

    aput v12, v13, v1

    const-string v14, "scaleY"

    invoke-static {v8, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v10, v10, [F

    .line 21
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v14

    aput v14, v10, v6

    aput v12, v10, v1

    const-string v12, "scaleX"

    invoke-static {v8, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 22
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 26
    :cond_5
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0x190

    .line 27
    invoke-virtual {v4, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 28
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 29
    new-instance v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;

    invoke-direct {v5, p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$2;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;I)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 31
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mNormalItemHeight:I

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->offsetHeight:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mInnerMoveHeight:I

    .line 32
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->onItemViewMoveListener:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;

    if-eqz v0, :cond_6

    .line 33
    iget v3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mInnerMoveHeight:I

    invoke-interface {v0, v3, v1, v2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;->onItemViewMove(IJ)V

    :cond_6
    return-void
.end method

.method public update(Ljava/util/List;Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;",
            "Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/h/m;

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update itemInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getInnerLifeInfoItemViewTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateItemView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 9
    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->getItemViews(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setCardItemViews(Ljava/util/List;)V

    :goto_2
    return-void

    .line 11
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "update return by itemInfoList no data"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateViewWithNoData()V

    return-void
.end method

.method public updateItemViewStatus()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getItemCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->showAllItemView()V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->mAllItemTogether:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setTogetherAllItemStatus(I)V

    :cond_1
    :goto_0
    return-void
.end method
