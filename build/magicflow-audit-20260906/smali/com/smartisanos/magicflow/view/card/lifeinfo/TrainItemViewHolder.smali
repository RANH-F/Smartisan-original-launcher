.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;
.super Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;
.source "TrainItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;
    }
.end annotation


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mAddressFrom:Landroid/widget/TextView;

.field private mAddressTo:Landroid/widget/TextView;

.field private mCarriageNum:Landroid/widget/TextView;

.field private mCountDown:Landroid/widget/TextView;

.field private mDelete:Landroid/widget/ImageView;

.field private mEndDate:Landroid/widget/TextView;

.field private mEndTime:Landroid/widget/TextView;

.field private mItemContentView:Landroid/widget/LinearLayout;

.field private mRightClickArea:Landroid/view/View;

.field private mSelectDestinationArrow:Landroid/widget/ImageView;

.field private mStartDate:Landroid/widget/TextView;

.field private mStartTime:Landroid/widget/TextView;

.field private mTrips:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b00e9

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;Landroid/content/Context;Lcom/smartisanos/magicflow/h/y;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->showSelectArriveStationDialog(Landroid/content/Context;Lcom/smartisanos/magicflow/h/y;)V

    return-void
.end method

.method private showSelectArriveStationDialog(Landroid/content/Context;Lcom/smartisanos/magicflow/h/y;)V
    .locals 7

    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p2, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0034

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0800a7

    .line 5
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 6
    new-instance v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, p0, p2, v1, v6}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;Lcom/smartisanos/magicflow/h/y;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V

    .line 7
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p2, 0x7f0b0033

    .line 8
    invoke-static {p1, p2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 10
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    .line 11
    invoke-virtual {v5}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->getCount()I

    move-result p2

    const/4 v1, 0x5

    if-le p2, v1, :cond_1

    move p2, v1

    .line 12
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-int/2addr p1, p2

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0d011c

    .line 14
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0d011d

    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$6;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$6;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)V

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$5;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$5;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)V

    .line 17
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$7;

    invoke-direct {p2, p0, v5}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$7;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;)V

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 20
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    :goto_0
    const p2, 0x7f0d017b

    .line 21
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public handleItemClick(Landroid/content/Context;)V
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

    const-string v0, "Train"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    check-cast v0, Lcom/smartisanos/magicflow/h/y;

    const-string v1, "action_data"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/h/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "click failed by lose action_data !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/c;->e(I)V

    .line 9
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 10
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.xysdk.XyCardMsgActionActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f01000d

    const v1, 0x7f01000e

    .line 12
    invoke-static {p1, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 13
    invoke-static {v2, p1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mTrips:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mAddressFrom:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mAddressTo:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mStartTime:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mEndTime:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mStartDate:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mEndDate:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mCarriageNum:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mCountDown:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mSelectDestinationArrow:Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mDelete:Landroid/widget/ImageView;

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mRightClickArea:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mRightClickArea:Landroid/view/View;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$2;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mSelectDestinationArrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$3;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0704ae

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f0704b1

    goto :goto_0

    :cond_2
    const p1, 0x7f0704b0

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public setViewData(Lcom/smartisanos/magicflow/h/m;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    check-cast p1, Lcom/smartisanos/magicflow/h/y;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mTrips:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/y;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mAddressFrom:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/y;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mStartTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/y;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mStartDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/h/y;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mCarriageNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/y;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mCountDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/h/y;->b(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/y;->q:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    iget-wide v4, p1, Lcom/smartisanos/magicflow/h/y;->t:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 11
    :cond_1
    iput-wide v2, p1, Lcom/smartisanos/magicflow/h/y;->t:J

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mAddressTo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/y;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->mEndDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/h/y;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
