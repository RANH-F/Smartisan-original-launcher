.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;
.super Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;
.source "ExpressItemViewHolder.java"


# instance fields
.field private mDelete:Landroid/widget/ImageView;

.field private mExpressCompany:Landroid/widget/TextView;

.field private mExpressCompanyIcon:Landroid/widget/ImageView;

.field private mExpressLastData:Landroid/widget/TextView;

.field private mExpressLastTime:Landroid/widget/TextView;

.field private mExpressOrderTailNum:Landroid/widget/TextView;

.field private mExpressStatus:Landroid/widget/TextView;

.field private mItemContentView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b004b

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->handleItemClick(Landroid/content/Context;)V

    return-void
.end method

.method private handleItemClick(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    instance-of v1, v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    const-string v2, "Express"

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->isAllItemTogether()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->showAllItemView()V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/c;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->e(I)V

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_view_type"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/m;->c()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "extra_view_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    .line 10
    invoke-static {p1, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 11
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/b;->a(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method


# virtual methods
.method public getLifeInfoItem()Lcom/smartisanos/magicflow/h/g;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    check-cast v0, Lcom/smartisanos/magicflow/h/g;

    return-object v0
.end method

.method public bridge synthetic getLifeInfoItem()Lcom/smartisanos/magicflow/h/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->getLifeInfoItem()Lcom/smartisanos/magicflow/h/g;

    move-result-object v0

    return-object v0
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressCompanyIcon:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressCompany:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressOrderTailNum:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressStatus:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressLastTime:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressLastData:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mDelete:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder$2;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public itemViewIsValid(Lcom/smartisanos/magicflow/h/m;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/m;->b()I

    move-result p1

    return p1
.end method

.method public setContentViewBackground(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f070162

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f07016c

    goto :goto_0

    :cond_2
    const p1, 0x7f07016b

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public setViewData(Lcom/smartisanos/magicflow/h/m;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->setViewData(Lcom/smartisanos/magicflow/h/m;)V

    .line 2
    check-cast p1, Lcom/smartisanos/magicflow/h/g;

    .line 3
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/g;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressCompanyIcon:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressCompany:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/g;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressOrderTailNum:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressLastTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->mExpressLastData:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/g;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
