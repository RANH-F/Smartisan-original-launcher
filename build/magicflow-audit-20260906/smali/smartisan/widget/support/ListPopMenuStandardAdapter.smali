.class public Lsmartisan/widget/support/ListPopMenuStandardAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListPopMenuStandardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lsmartisan/widget/support/SmartisanMenuItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final STYLE_REMOVABLE:I = 0x2

.field public static final STYLE_SELECTED:I = 0x1


# instance fields
.field private mCloseIconClickListener:Landroid/view/View$OnClickListener;

.field private mCloseIconVisible:Z

.field private mHoverListener:Landroid/view/View$OnHoverListener;

.field private mItemStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lsmartisan/widget/support/SmartisanMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mItemStyle:I

    .line 7
    iput-boolean p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mCloseIconVisible:Z

    .line 8
    new-instance p1, Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;

    invoke-direct {p1, p0}, Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;-><init>(Lsmartisan/widget/support/ListPopMenuStandardAdapter;)V

    iput-object p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Lsmartisan/widget/support/SmartisanMenuItem;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mItemStyle:I

    .line 15
    iput-boolean p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mCloseIconVisible:Z

    .line 16
    new-instance p1, Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;

    invoke-direct {p1, p0}, Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;-><init>(Lsmartisan/widget/support/ListPopMenuStandardAdapter;)V

    iput-object p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lsmartisan/widget/support/SmartisanMenuItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mItemStyle:I

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mCloseIconVisible:Z

    .line 4
    new-instance p1, Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;

    invoke-direct {p1, p0}, Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;-><init>(Lsmartisan/widget/support/ListPopMenuStandardAdapter;)V

    iput-object p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lsmartisan/widget/support/SmartisanMenuItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mItemStyle:I

    .line 11
    iput-boolean p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mCloseIconVisible:Z

    .line 12
    new-instance p1, Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;

    invoke-direct {p1, p0}, Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;-><init>(Lsmartisan/widget/support/ListPopMenuStandardAdapter;)V

    iput-object p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method private getRemovableItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lsmartisan/widget/support/PopupMenuRemovableListItem;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lsmartisan/widget/support/PopupMenuRemovableListItem;-><init>(Landroid/content/Context;)V

    move-object p3, p2

    goto :goto_0

    .line 2
    :cond_0
    move-object p3, p2

    check-cast p3, Lsmartisan/widget/support/PopupMenuRemovableListItem;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 3
    :goto_0
    iget-boolean v0, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mCloseIconVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2, v1}, Lsmartisan/widget/support/PopupMenuRemovableListItem;->setCloseIconVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 5
    invoke-virtual {p2, v0}, Lsmartisan/widget/support/PopupMenuRemovableListItem;->setCloseIconVisibility(I)V

    .line 6
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/support/SmartisanMenuItem;

    if-eqz p1, :cond_4

    .line 7
    invoke-interface {p1}, Lsmartisan/widget/support/SmartisanMenuItem;->hasMenuIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2}, Lsmartisan/widget/support/PopupMenuRemovableListItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {p2}, Lsmartisan/widget/support/PopupMenuRemovableListItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Lsmartisan/widget/support/SmartisanMenuItem;->setMenuIcon(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p2, v0}, Lsmartisan/widget/support/PopupMenuRemovableListItem;->setMenuIcon(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lsmartisan/widget/support/PopupMenuRemovableListItem;->getCloseIconView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    :cond_3
    invoke-interface {p1}, Lsmartisan/widget/support/SmartisanMenuItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lsmartisan/widget/support/PopupMenuRemovableListItem;->setMenuTitle(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mCloseIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Lsmartisan/widget/support/PopupMenuRemovableListItem;->setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object p3
.end method

.method private getSelectedItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lsmartisan/widget/support/PopupMenuStandardListItem;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lsmartisan/widget/support/PopupMenuStandardListItem;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    move-object p3, p2

    goto :goto_0

    .line 4
    :cond_1
    move-object p3, p2

    check-cast p3, Lsmartisan/widget/support/PopupMenuStandardListItem;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/support/SmartisanMenuItem;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Lsmartisan/widget/support/SmartisanMenuItem;->hasMenuIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p3}, Lsmartisan/widget/support/PopupMenuStandardListItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {p3}, Lsmartisan/widget/support/PopupMenuStandardListItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Lsmartisan/widget/support/SmartisanMenuItem;->setMenuIcon(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p3, v0}, Lsmartisan/widget/support/PopupMenuStandardListItem;->setMenuIcon(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :goto_1
    invoke-interface {p1}, Lsmartisan/widget/support/SmartisanMenuItem;->isSelected()Z

    move-result v0

    invoke-virtual {p3, v0}, Lsmartisan/widget/support/PopupMenuStandardListItem;->setChecked(Z)V

    .line 12
    invoke-interface {p1}, Lsmartisan/widget/support/SmartisanMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lsmartisan/widget/support/PopupMenuStandardListItem;->setMenuTitle(Ljava/lang/CharSequence;)V

    .line 13
    instance-of v0, p1, Lsmartisan/widget/support/AbsSmartisanMenuItem;

    if-eqz v0, :cond_3

    .line 14
    check-cast p1, Lsmartisan/widget/support/AbsSmartisanMenuItem;

    invoke-virtual {p1}, Lsmartisan/widget/support/AbsSmartisanMenuItem;->getSubtitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p3, p1}, Lsmartisan/widget/support/PopupMenuStandardListItem;->setMenuSubtitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mItemStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->getRemovableItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->getSelectedItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mCloseIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mCloseIconVisible:Z

    return-void
.end method

.method public setMenuItemStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter;->mItemStyle:I

    return-void
.end method
