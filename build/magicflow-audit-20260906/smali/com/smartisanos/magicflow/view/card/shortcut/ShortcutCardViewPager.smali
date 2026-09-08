.class public Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ShortcutCardViewPager.java"


# static fields
.field private static sLastPage:Z = false

.field private static sNeedInterceptTouch:Z = false


# instance fields
.field private downX:F

.field private downY:F

.field private log:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method private checkIfLastPage()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->sLastPage:Z

    .line 3
    sget-boolean v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->sLastPage:Z

    return v0

    :cond_1
    return v1
.end method

.method public static cleanCachedTouchData()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->sNeedInterceptTouch:Z

    .line 2
    sput-boolean v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->sLastPage:Z

    return-void
.end method

.method public static isLastPage()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->sLastPage:Z

    return v0
.end method

.method public static isNeedInterceptTouch()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->sNeedInterceptTouch:Z

    return v0
.end method

.method private setInterceptTouch(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->sNeedInterceptTouch:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v0

    .line 4
    iget v2, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->downX:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float p1, p1

    .line 5
    iget v2, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->downY:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->checkIfLastPage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->setInterceptTouch(Z)V

    return v2

    :cond_1
    if-lez v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->checkIfLastPage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->setInterceptTouch(Z)V

    return v2

    .line 10
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le v0, p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "onInterceptTouchEvent ACTION_MOVE setInterceptTouch(true)"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->setInterceptTouch(Z)V

    return v1

    .line 13
    :cond_3
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->setInterceptTouch(Z)V

    return v2

    .line 14
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->downX:F

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->downY:F

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->checkIfLastPage()Z

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "onInterceptTouchEvent ACTION_DOWN setInterceptTouch(true)"

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->setInterceptTouch(Z)V

    .line 19
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->downX:F

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->downY:F

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->setInterceptTouch(Z)V

    .line 5
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
