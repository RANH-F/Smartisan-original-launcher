.class Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$2;
.super Ljava/lang/Object;
.source "ContactsCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->setContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.contacts.action.LIST_STARRED"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.contacts"

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    const-string v1, "show_tab_at"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$100(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->access$200(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/j;->b(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method
