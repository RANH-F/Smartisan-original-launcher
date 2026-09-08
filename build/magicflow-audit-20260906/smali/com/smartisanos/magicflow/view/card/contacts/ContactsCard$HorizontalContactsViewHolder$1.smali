.class Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder$1;
.super Ljava/lang/Object;
.source "ContactsCard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->bindData(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder$1;->this$1:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder$1;->this$1:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->access$1000(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder$1;->this$1:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->access$1000(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder$1;->this$1:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;->access$1000(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f070140

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return p2
.end method
