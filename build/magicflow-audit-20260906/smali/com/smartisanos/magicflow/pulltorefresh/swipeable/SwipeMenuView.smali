.class public Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;
.super Landroid/widget/LinearLayout;
.source "SwipeMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMenuContainer:Landroid/widget/LinearLayout;

.field private mMenuContainerHeight:I

.field private mMenuContainerWidth:I

.field private mMenuViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mSwipeListItemView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

.field private mSwipeMenuViewClickListener:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 9
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    .line 11
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 15
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    .line 18
    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    .line 19
    iput p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 20
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mSwipeListItemView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mSwipeMenuViewClickListener:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;

    return-object p0
.end method

.method private init()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    const/4 v3, -0x2

    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v4, v2}, Lcom/smartisanos/magicflow/pulltorefresh/DensityUtil;->dp2px(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    if-ltz v4, :cond_1

    iget-object v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v5, v4}, Lcom/smartisanos/magicflow/pulltorefresh/DensityUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    add-int/lit8 v5, v3, 0x1

    .line 12
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v6, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;

    invoke-direct {v6, p0, v3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    .line 15
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v3, v5

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getLastMenuRightEdge()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    return v0
.end method

.method public getMenuItemBottomEdge()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    return v0
.end method

.method public getMenuItemTopEdge()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    return v0
.end method

.method public getMenuViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mPosition:I

    return v0
.end method

.method public setMenuClickable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMenuContainerHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    return-void
.end method

.method public setMenuContainerWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    return-void
.end method

.method public setOnSwipeMenuViewClickListener(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mSwipeMenuViewClickListener:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mPosition:I

    return-void
.end method

.method public setSwipeListItemView(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->mSwipeListItemView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    return-void
.end method
