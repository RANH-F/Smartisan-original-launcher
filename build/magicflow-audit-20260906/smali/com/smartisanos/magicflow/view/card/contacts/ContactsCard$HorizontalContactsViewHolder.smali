.class Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;
.super Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;
.source "ContactsCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalContactsViewHolder"
.end annotation


# instance fields
.field private mCallImg:Landroid/widget/ImageView;

.field private mDividingLine:Landroid/widget/ImageView;

.field private mMask:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;Landroid/view/View;)V

    const p1, 0x7f0800b7

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->mCallImg:Landroid/widget/ImageView;

    const p1, 0x7f0800b8

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->mDividingLine:Landroid/widget/ImageView;

    const p1, 0x7f0800bf

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->mMask:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$1000(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->mMask:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public bindData(IZ)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-super {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->bindData(II)V

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mView:Landroid/view/View;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder$1;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->mMask:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->mCallImg:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->mDividingLine:Landroid/widget/ImageView;

    if-nez p2, :cond_3

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
