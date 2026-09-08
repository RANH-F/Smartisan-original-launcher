.class Lcom/smartisanos/magicflow/cache/ContactsDataCache$1$1;
.super Ljava/lang/Object;
.source "ContactsDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/ContactsDataCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/cache/ContactsDataCache$1;

.field final synthetic val$favoriteContacts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/cache/ContactsDataCache$1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/ContactsDataCache$1$1;->this$0:Lcom/smartisanos/magicflow/cache/ContactsDataCache$1;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/ContactsDataCache$1$1;->val$favoriteContacts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ContactsDataCache$1$1;->this$0:Lcom/smartisanos/magicflow/cache/ContactsDataCache$1;

    iget-boolean v0, v0, Lcom/smartisanos/magicflow/cache/ContactsDataCache$1;->val$forceNotify:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ContactsDataCache$1$1;->val$favoriteContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->FAVORITE_CONTACT_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ContactsDataCache$1$1;->val$favoriteContacts:Ljava/util/List;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->access$000(Ljava/util/List;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->access$100()V

    return-void
.end method
