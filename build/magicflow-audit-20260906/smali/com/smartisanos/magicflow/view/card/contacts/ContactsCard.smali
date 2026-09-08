.class public Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;
.super Lcom/smartisanos/magicflow/view/card/Card;
.source "ContactsCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$HorizontalContactsViewHolder;,
        Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$VerticalContactsViewHolder;,
        Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_TYPE:I = 0x1

.field private static final VERTICAL_TYPE:I


# instance fields
.field private mAdapter:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;

.field private mAddContacts:Landroid/widget/LinearLayout;

.field private mContactsTips:Landroid/widget/TextView;

.field private mFavoriteContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/i;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/Card;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mFavoriteContacts:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$1;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->refreshUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mFavoriteContacts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;Lcom/smartisanos/magicflow/h/i;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->checkPermissionAndStartCall(Lcom/smartisanos/magicflow/h/i;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkPermissionAndStartCall(Lcom/smartisanos/magicflow/h/i;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {p2, p1, v0, v1}, Lcom/smartisanos/magicflow/o/j;->a(Landroid/content/Context;ILcom/smartisanos/magicflow/o/j$c;Z)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    const-string v0, "A350058"

    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/i;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/i;->a:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/smartisanos/magicflow/o/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private refreshUI()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mAddContacts:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mContactsTips:Landroid/widget/TextView;

    const v1, 0x7f0d002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->FAVORITE_CONTACT_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mAddContacts:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 9
    sget-object v0, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->FAVORITE_CONTACT_LIST:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->setFavoriteContacts(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mFavoriteContacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mFavoriteContacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mContactsTips:Landroid/widget/TextView;

    const v3, 0x7f0d00e9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mAddContacts:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 2
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public onReadyToLoadData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->register(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->refreshUI()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onResume()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->updateContactsData(Z)V

    return-void
.end method

.method public setContentView()V
    .locals 2

    const v0, 0x7f0b002e

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/Card;->initView(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mAddContacts:Landroid/widget/LinearLayout;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mContactsTips:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mGridView:Landroid/widget/GridView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mAddContacts:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$2;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;-><init>(Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$1;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setFavoriteContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;->mFavoriteContacts:Ljava/util/List;

    return-void
.end method
