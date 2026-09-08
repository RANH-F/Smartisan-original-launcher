.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;
.super Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;
.source "DeliveryItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private deliveryButton:Landroid/widget/Button;

.field private deliveryButtonType:I

.field private deliveryContent:Landroid/widget/TextView;

.field private deliveryItem:Landroid/widget/LinearLayout;

.field private deliveryItemType:I

.field private deliveryTitle:Landroid/widget/TextView;

.field private enterSettingType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b004a

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryButtonType:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryItemType:I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->enterSettingType:I

    return-void
.end method


# virtual methods
.method public getItemView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    return-object v0
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryItem:Landroid/widget/LinearLayout;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryTitle:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryContent:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryButton:Landroid/widget/Button;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public itemViewIsValid(Lcom/smartisanos/magicflow/h/m;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->enterSettingType:I

    const-string v3, "extra_view_type"

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v2, "A350070"

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    const-string v0, "ExpressSetting"

    .line 6
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/h/d;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.taobao.taobao"

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/n;->k(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/c;->d(I)V

    const-string v0, "ToolWebView"

    .line 10
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "tool_web_url_type"

    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01000d

    const v2, 0x7f01000e

    invoke-static {p1, v0, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 13
    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/b;->a(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public setDeliveryItemText()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->getExpressAccountInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryTitle:Landroid/widget/TextView;

    const v1, 0x7f0d013e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryContent:Landroid/widget/TextView;

    const v1, 0x7f0d013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryItem:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->enterSettingType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryTitle:Landroid/widget/TextView;

    const v1, 0x7f0d0144

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryContent:Landroid/widget/TextView;

    const v1, 0x7f0d0142

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryItem:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryItemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setViewStatus(Z)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryButton:Landroid/widget/Button;

    iget v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryButtonType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->setDeliveryItemText()V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->deliveryButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
