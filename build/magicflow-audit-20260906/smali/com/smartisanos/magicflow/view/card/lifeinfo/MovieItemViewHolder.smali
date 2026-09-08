.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;
.super Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;
.source "MovieItemViewHolder.java"


# instance fields
.field private mAddress:Landroid/widget/TextView;

.field private mDelete:Landroid/widget/ImageView;

.field private mImage:Landroid/widget/ImageView;

.field private mItemContentView:Landroid/widget/LinearLayout;

.field private mMovieName:Landroid/widget/TextView;

.field private mMovieTime:Landroid/widget/TextView;

.field private mTicketVerifyNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0093

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public handleItemClick(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    instance-of v1, v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    const-string v2, "Movie"

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

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/m;->c()Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/c;->e(I)V

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "extra_view_type"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_view_data"

    .line 9
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x7f01000d

    const v2, 0x7f01000e

    .line 10
    invoke-static {p1, v0, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 11
    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/b;->a(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mImage:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mTicketVerifyNum:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mMovieName:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mMovieTime:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mAddress:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mDelete:Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder$2;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;)V

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
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mItemContentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0701f7

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f07024d

    goto :goto_0

    :cond_2
    const p1, 0x7f07024c

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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    check-cast p1, Lcom/smartisanos/magicflow/h/n;

    .line 3
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "--"

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mMovieName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mMovieName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->l:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mTicketVerifyNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mTicketVerifyNum:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/smartisanos/magicflow/h/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mTicketVerifyNum:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mTicketVerifyNum:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/smartisanos/magicflow/h/n;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_5
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mTicketVerifyNum:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/h/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mMovieTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mMovieTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/h/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_2
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mAddress:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :goto_3
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/n;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->mImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
