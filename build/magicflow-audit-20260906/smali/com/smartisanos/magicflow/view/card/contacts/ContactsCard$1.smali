.class Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$1;
.super Ljava/lang/Object;
.source "ContactsCard.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$1$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$1$1;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$1;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
