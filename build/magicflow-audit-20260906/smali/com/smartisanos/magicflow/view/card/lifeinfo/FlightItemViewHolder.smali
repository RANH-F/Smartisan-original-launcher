.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;
.super Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;
.source "FlightItemViewHolder.java"


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mCountDown:Landroid/widget/TextView;

.field private mDelete:Landroid/widget/ImageView;

.field private mEndDate:Landroid/widget/TextView;

.field private mEndTime:Landroid/widget/TextView;

.field private mFlightCompany:Landroid/widget/TextView;

.field private mFlightCompanyIcon:Landroid/widget/ImageView;

.field private mFlightNum:Landroid/widget/TextView;

.field private mFromAddress:Landroid/widget/TextView;

.field private mItemContentView:Landroid/widget/LinearLayout;

.field private mStartDate:Landroid/widget/TextView;

.field private mStartTime:Landroid/widget/TextView;

.field private mToAddress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0052

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->handleItemClick(Landroid/content/Context;)V

    return-void
.end method

.method private handleItemClick(Landroid/content/Context;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    instance-of v1, v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

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

    const-string v0, "Flight"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    check-cast v0, Lcom/smartisanos/magicflow/h/j;

    const-string v1, "action_data"

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "click failed by lose action_data !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 10
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/c;->e(I)V

    .line 11
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 12
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.xysdk.XyCardMsgActionActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f01000d

    const v1, 0x7f01000e

    .line 14
    invoke-static {p1, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 15
    invoke-static {v2, p1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mFlightCompanyIcon:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mFlightCompany:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mFlightNum:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mFromAddress:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mToAddress:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mStartTime:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mEndTime:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mStartDate:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mEndDate:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mCountDown:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mDelete:Landroid/widget/ImageView;

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder$2;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f070075

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f070078

    goto :goto_0

    :cond_2
    const p1, 0x7f070077

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public setViewData(Lcom/smartisanos/magicflow/h/m;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->setViewData(Lcom/smartisanos/magicflow/h/m;)V

    .line 2
    check-cast p1, Lcom/smartisanos/magicflow/h/j;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mFlightCompanyIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/h/j;->d(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mFlightCompany:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mFlightNum:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mFromAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mToAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mStartTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mStartDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/h/j;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mEndDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/h/j;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;->mCountDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/h/j;->b(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
