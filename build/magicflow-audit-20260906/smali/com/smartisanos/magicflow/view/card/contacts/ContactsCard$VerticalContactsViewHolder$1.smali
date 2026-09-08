.class Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder$1;
.super Ljava/lang/Object;
.source "ContactsCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->bindData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder$1;->this$1:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder$1;->this$1:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;->mContact:Lcom/smartisanos/magicflow/h/i;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$700(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;Lcom/smartisanos/magicflow/h/i;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
