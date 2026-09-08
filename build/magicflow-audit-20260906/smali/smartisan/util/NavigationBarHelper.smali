.class public Lsmartisan/util/NavigationBarHelper;
.super Ljava/lang/Object;
.source "NavigationBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;
    }
.end annotation


# static fields
.field private static mNavigationBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Lsmartisan/util/NavigationBarHelper;->mNavigationBarHeight:I

    if-nez v0, :cond_0

    const-string v0, "dimen"

    const-string v1, "navigation_bar_height"

    .line 2
    invoke-static {v0, v1}, Lsmartisan/InvokeApi$c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lsmartisan/util/NavigationBarHelper;->mNavigationBarHeight:I

    .line 4
    :cond_0
    sget p0, Lsmartisan/util/NavigationBarHelper;->mNavigationBarHeight:I

    return p0
.end method

.method public static isNavigationBarShown(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "navigation_bar_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nav_fixed_mode"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    :cond_0
    return v1
.end method

.method public static isSmartisanDelta()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static navigationBarStatusChanged(Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-interface {p0, p1}, Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;->onApplyNavigationBarStatusChange(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    invoke-interface {p0, p1}, Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;->onApplyNavigationBarStatusChange(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static needAutoAdapter(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-static {p0}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result p0

    .line 3
    invoke-static {}, Lsmartisan/util/NavigationBarHelper;->isSmartisanDelta()Z

    move-result v3

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static setAutoAdapterNavigationBarEnabled(Landroid/view/View;Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lsmartisan/util/NavigationBarHelper;->needAutoAdapter(Landroid/content/Context;)Z

    move-result v1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 5
    new-instance p2, Lsmartisan/util/NavigationBarHelper$2;

    invoke-direct {p2, p1}, Lsmartisan/util/NavigationBarHelper$2;-><init>(Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 6
    invoke-static {v0}, Lsmartisan/util/NavigationBarHelper;->isNavigationBarShown(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;->onApplyNavigationBarStatusChange(Z)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 8
    invoke-static {v0}, Lsmartisan/util/NavigationBarHelper;->isNavigationBarShown(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;->onApplyNavigationBarStatusChange(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static setAutoAdapterNavigationBarEnabled(Landroid/view/View;Z)V
    .locals 1

    .line 1
    instance-of v0, p0, Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;

    invoke-static {p0, v0, p1}, Lsmartisan/util/NavigationBarHelper;->setAutoAdapterNavigationBarEnabled(Landroid/view/View;Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;Z)V

    :cond_0
    return-void
.end method

.method public static setBottomPaddingWhenNavigationBarStatusChange(Landroid/view/View;)V
    .locals 4

    .line 1
    instance-of v0, p0, Lsmartisan/widget/letters/QuickBarEx;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lsmartisan/widget/letters/QuickBarEx;

    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->getLetterBar()Lsmartisan/widget/letters/LettersBar;

    move-result-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/widget/ListView;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 5
    new-instance v3, Lsmartisan/util/NavigationBarHelper$1;

    invoke-direct {v3, v2, p0, v0}, Lsmartisan/util/NavigationBarHelper$1;-><init>(ILandroid/view/View;Z)V

    invoke-static {p0, v3, v1}, Lsmartisan/util/NavigationBarHelper;->setAutoAdapterNavigationBarEnabled(Landroid/view/View;Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;Z)V

    return-void
.end method
