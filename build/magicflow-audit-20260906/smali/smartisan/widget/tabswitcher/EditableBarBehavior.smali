.class public Lsmartisan/widget/tabswitcher/EditableBarBehavior;
.super Lsmartisan/widget/tabswitcher/PickPutBehavior;
.source "EditableBarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;
    }
.end annotation


# static fields
.field private static final EDITABLE_TAB_SIZE:I = 0x5


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/view/ViewGroup;

.field private final mMoreTab:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/tabswitcher/model/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private rects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lsmartisan/widget/tabswitcher/model/ITabManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/tabswitcher/PickPutBehavior;-><init>()V

    .line 2
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mContainer:Landroid/view/ViewGroup;

    .line 3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mResources:Landroid/content/res/Resources;

    .line 4
    iput-object p2, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

    .line 5
    iput-boolean p3, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mMoreTab:Z

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->initChildren()V

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->reset()V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mContainer:Landroid/view/ViewGroup;

    new-instance p2, Lsmartisan/widget/tabswitcher/EditableBarBehavior$1;

    invoke-direct {p2, p0}, Lsmartisan/widget/tabswitcher/EditableBarBehavior$1;-><init>(Lsmartisan/widget/tabswitcher/EditableBarBehavior;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$002(Lsmartisan/widget/tabswitcher/EditableBarBehavior;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->rects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lsmartisan/widget/tabswitcher/EditableBarBehavior;)Landroid/content/res/Resources;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method private findIndex(FF)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->initRects()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->rects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->rects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private findTab(FF)Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;
    .locals 7

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->initRects()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->rects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->rects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    move v5, v0

    if-ltz v5, :cond_2

    .line 4
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabs:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lsmartisan/widget/tabswitcher/model/Tab;

    .line 5
    invoke-interface {v4}, Lsmartisan/widget/tabswitcher/model/Tab;->switchable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;

    iget-object p2, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->rects:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/graphics/Rect;

    iget-boolean v6, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mMoreTab:Z

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;-><init>(Lsmartisan/widget/tabswitcher/EditableBarBehavior;Landroid/graphics/Rect;Lsmartisan/widget/tabswitcher/model/Tab;IZ)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private initChildren()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->children:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->children:Ljava/util/List;

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initRects()V
    .locals 8

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->rects:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->rects:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    iget-object v4, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->children:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 5
    invoke-virtual {v4}, Landroid/widget/RadioButton;->getMeasuredWidth()I

    move-result v5

    .line 6
    invoke-virtual {v4}, Landroid/widget/RadioButton;->getMeasuredHeight()I

    move-result v6

    .line 7
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->getLocationOnScreen([I)V

    .line 9
    aget v4, v1, v2

    iput v4, v7, Landroid/graphics/Rect;->left:I

    .line 10
    aget v4, v1, v2

    add-int/2addr v4, v5

    iput v4, v7, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x1

    .line 11
    aget v5, v1, v4

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 12
    aget v4, v1, v4

    add-int/2addr v4, v6

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 13
    iget-object v4, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->rects:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initTabs()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mMoreTab:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/ITabManager;->getMoreTabs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabs:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/ITabManager;->getTabs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabs:Ljava/util/List;

    :goto_0
    return-void
.end method

.method private replaceTabList(ILsmartisan/widget/tabswitcher/model/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/tabswitcher/model/Tab;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

    invoke-interface {v0, p2, p1}, Lsmartisan/widget/tabswitcher/model/ITabManager;->replaceTabList(Lsmartisan/widget/tabswitcher/model/Tab;Lsmartisan/widget/tabswitcher/model/Tab;)V

    return-void
.end method


# virtual methods
.method public arouse(FF)Lsmartisan/widget/tabswitcher/model/TabBrick;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public cancelPick(Lsmartisan/widget/tabswitcher/model/TabBrick;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;

    invoke-virtual {p1}, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->getIndex()I

    move-result p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public disarouse(Lsmartisan/widget/tabswitcher/model/TabBrick;)V
    .locals 0

    return-void
.end method

.method public peek(FF)Lsmartisan/widget/tabswitcher/model/TabBrick;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->findTab(FF)Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;

    move-result-object p1

    return-object p1
.end method

.method public pick(FF)Lsmartisan/widget/tabswitcher/model/TabBrick;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->findTab(FF)Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->children:Ljava/util/List;

    invoke-virtual {p1}, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->getIndex()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public put(ILsmartisan/widget/tabswitcher/model/TabBrick;FF)V
    .locals 1

    .line 1
    invoke-direct {p0, p3, p4}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->findIndex(FF)I

    move-result p3

    if-ltz p3, :cond_2

    .line 2
    iget-object p4, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->children:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/RadioButton;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p4, p1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p2}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getTab()Lsmartisan/widget/tabswitcher/model/Tab;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/Tab;->getTextResId()I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/widget/RadioButton;->setText(I)V

    .line 6
    iget-boolean p2, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mMoreTab:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/Tab;->getMoreTabDrawableResId()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/Tab;->getDrawableResId()I

    move-result p2

    :goto_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p4, v0, p2, v0, v0}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 8
    invoke-virtual {p4, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 9
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/Tab;->getId()I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/widget/RadioButton;->setId(I)V

    .line 10
    invoke-direct {p0, p3, p1}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->replaceTabList(ILsmartisan/widget/tabswitcher/model/Tab;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabManager:Lsmartisan/widget/tabswitcher/model/ITabManager;

    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/ITabManager;->init()V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->initTabs()V

    return-void
.end method

.method public update(Lsmartisan/widget/tabswitcher/model/TabBrick;FF)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->findIndex(FF)I

    move-result p2

    if-ltz p2, :cond_1

    .line 2
    iget-object p3, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->children:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 3
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getTab()Lsmartisan/widget/tabswitcher/model/Tab;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/Tab;->getTextResId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 5
    iget-boolean v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mMoreTab:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/Tab;->getMoreTabDrawableResId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/Tab;->getDrawableResId()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p3, v1, v0, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 7
    invoke-virtual {p3, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 8
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/Tab;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 9
    iget-object p3, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->mTabs:Ljava/util/List;

    invoke-interface {p3, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
