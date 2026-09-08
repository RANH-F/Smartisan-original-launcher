.class public Lsmartisan/widget/support/GroupMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupMenuAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DIVIDER_MENU:Ljava/lang/String; = "Divider"

.field private static final DIVIDER_TYPE:I = 0x1

.field private static final NORMAL_TYPE:I


# instance fields
.field private mDividerMenuItem:Landroid/view/MenuItem;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    iget-object v0, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenuItemList:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const-string v0, "Divider"

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mDividerMenuItem:Landroid/view/MenuItem;

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/support/GroupMenuAdapter;->addDividerMenuItem()V

    return-void
.end method

.method private addDividerMenuItem()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/support/GroupMenuAdapter;->sortByGroup()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    iget-object v2, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenuItemList:Ljava/util/List;

    iget-object v3, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mDividerMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sortByGroup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenuItemList:Ljava/util/List;

    new-instance v1, Lsmartisan/widget/support/GroupMenuAdapter$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/support/GroupMenuAdapter$1;-><init>(Lsmartisan/widget/support/GroupMenuAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/support/GroupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

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
    invoke-virtual {p0, p1}, Lsmartisan/widget/support/GroupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mDividerMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/support/GroupMenuAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    sget p1, Lsmartisan/widget/R$drawable;->popup_menu_item_divider:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-object p2

    :cond_1
    if-nez p2, :cond_2

    .line 4
    new-instance p2, Lsmartisan/widget/support/PopupMenuLongPressedListItem;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lsmartisan/widget/support/PopupMenuLongPressedListItem;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_2
    check-cast p2, Lsmartisan/widget/support/PopupMenuLongPressedListItem;

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/support/GroupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p3

    check-cast p3, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p2, p3, p1}, Lsmartisan/widget/support/PopupMenuLongPressedListItem;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lsmartisan/widget/support/GroupMenuAdapter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, p3}, Lsmartisan/widget/support/GroupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method
