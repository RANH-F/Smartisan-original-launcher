.class Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;
.super Ljava/lang/Object;
.source "ContactsCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalContactsViewHolder"
.end annotation


# instance fields
.field mAcatarImg:Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;

.field mContact:Lcom/smartisanos/magicflow/h/i;

.field mInfo:Landroid/widget/LinearLayout;

.field mLabel:Landroid/widget/ImageView;

.field mName:Landroid/widget/TextView;

.field mStrokeImage:Landroid/widget/ImageView;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f0800ba

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mInfo:Landroid/widget/LinearLayout;

    const p1, 0x7f0800c0

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mStrokeImage:Landroid/widget/ImageView;

    const p1, 0x7f080006

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mAcatarImg:Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;

    const p1, 0x7f0800bb

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mName:Landroid/widget/TextView;

    const p1, 0x7f0800bc

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mLabel:Landroid/widget/ImageView;

    return-void
.end method

.method private getContactLabel(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f0701b6

    goto :goto_0

    :cond_1
    const p1, 0x7f0701b8

    goto :goto_0

    :cond_2
    const p1, 0x7f0701b9

    goto :goto_0

    :cond_3
    const p1, 0x7f0701b7

    :goto_0
    return p1
.end method

.method private getWidth(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$800(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    .line 2
    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$900(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600fb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public bindData(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$400(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/i;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mContact:Lcom/smartisanos/magicflow/h/i;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mContact:Lcom/smartisanos/magicflow/h/i;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mAcatarImg:Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ImageView;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mContact:Lcom/smartisanos/magicflow/h/i;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/i;->g:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mStrokeImage:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mContact:Lcom/smartisanos/magicflow/h/i;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/i;->g:Landroid/graphics/Bitmap;

    invoke-static {p1, p2}, Lsmartisanos/util/NameAvatarController;->getCircleBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mAcatarImg:Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mStrokeImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mAcatarImg:Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mContact:Lcom/smartisanos/magicflow/h/i;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/i;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->getWidth(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->setName(Ljava/lang/String;I)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mLabel:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mContact:Lcom/smartisanos/magicflow/h/i;

    iget p2, p2, Lcom/smartisanos/magicflow/h/i;->b:I

    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->getContactLabel(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mContact:Lcom/smartisanos/magicflow/h/i;

    iget-object p2, p2, Lcom/smartisanos/magicflow/h/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mView:Landroid/view/View;

    new-instance p2, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder$1;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
