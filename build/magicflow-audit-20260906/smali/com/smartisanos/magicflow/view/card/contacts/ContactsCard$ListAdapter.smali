.class Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;


# direct methods
.method private constructor <init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)V

    return-void
.end method

.method private createHorizontalTypeView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$500(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0069

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-direct {p3, v1, p2}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;Landroid/view/View;)V

    .line 3
    iget-object p2, p3, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mView:Landroid/view/View;

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p3, p1, v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->bindData(IZ)V

    return-object p2
.end method

.method private createVerticalTypeView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$600(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0071

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-direct {p3, v1, p2}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;Landroid/view/View;)V

    .line 3
    iget-object p2, p3, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mView:Landroid/view/View;

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;

    .line 6
    :goto_0
    invoke-virtual {p3, p1, v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->bindData(II)V

    return-object p2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$400(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$400(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$400(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$400(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$400(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->createVerticalTypeView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;->createHorizontalTypeView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
