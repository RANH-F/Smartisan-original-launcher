.class public Lsmartisan/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static sSystemPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    .line 2
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.smartisanos.calculator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.smartisanos.gamestore"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.smartisanos.weather"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.smartisanos.notes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.smartisanos.recharge"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.android.musicfx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.smartisanos.recorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.smartisanos.cloudgallery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.smartisanos.textboom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    const-string v1, "com.sohu.inputmethod.sogou.chuizi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPopupIntent(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;IIIF)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Landroid/content/Intent;",
            "IIIF)",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$anim;->revone_popup_fade_in:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    const/high16 v1, 0x18000000

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ne p5, v5, :cond_0

    if-eqz p0, :cond_0

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lsmartisan/InvokeApi$p;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5
    invoke-static {v3}, Lsmartisan/InvokeApi$l;->a(Z)Landroid/graphics/Rect;

    move-result-object p0

    .line 6
    iget p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/2addr p4, v4

    add-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/2addr p4, v4

    sub-int/2addr p3, p4

    .line 7
    iget p4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p5

    div-int/2addr p5, v4

    add-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p5

    div-int/2addr p5, v4

    sub-int/2addr p4, p5

    .line 8
    iget p5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p6

    div-int/2addr p6, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v4

    sub-int/2addr p6, v2

    sub-int/2addr p5, p6

    .line 9
    iget p6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v4

    sub-int/2addr p1, p0

    sub-int/2addr p6, p1

    .line 10
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, p0}, Lsmartisan/InvokeApi$b;->a(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    const-string p0, "window-type"

    const-string p1, "window_floating_in_application_center"

    .line 11
    invoke-static {p2, p0, p1}, Lsmartisan/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    new-instance p0, Landroid/util/Pair;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-array p0, v4, [I

    .line 14
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-array v6, v4, [I

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17
    invoke-static {p1, v5}, Lsmartisan/InvokeApi$p;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 18
    iget v6, v5, Landroid/graphics/Rect;->left:I

    aget v2, p0, v2

    add-int/2addr v6, v2

    .line 19
    iget v2, v5, Landroid/graphics/Rect;->top:I

    aget p0, p0, v3

    add-int/2addr v2, p0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p5, :cond_4

    if-eq p5, v3, :cond_3

    if-eq p5, v4, :cond_2

    const/4 v4, 0x3

    if-eq p5, v4, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    div-int/lit8 v4, p1, 0x2

    add-int/2addr v2, v4

    .line 23
    new-instance v5, Landroid/graphics/Rect;

    sub-int p3, v6, p3

    int-to-float v4, v2

    int-to-float p4, p4

    mul-float v8, p4, p6

    sub-float v8, v4, v8

    float-to-int v8, v8

    sub-float/2addr v7, p6

    mul-float/2addr p4, v7

    add-float/2addr v4, p4

    float-to-int p4, v4

    invoke-direct {v5, p3, v8, v6, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    add-int/2addr v6, p0

    .line 24
    div-int/lit8 v4, p1, 0x2

    add-int/2addr v2, v4

    .line 25
    new-instance v5, Landroid/graphics/Rect;

    int-to-float v4, v2

    int-to-float p4, p4

    mul-float v8, p4, p6

    sub-float v8, v4, v8

    float-to-int v8, v8

    add-int/2addr p3, v6

    sub-float/2addr v7, p6

    mul-float/2addr p4, v7

    add-float/2addr v4, p4

    float-to-int p4, v4

    invoke-direct {v5, v6, v8, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 26
    :cond_3
    div-int/lit8 v4, p0, 0x2

    add-int/2addr v6, v4

    .line 27
    new-instance v5, Landroid/graphics/Rect;

    int-to-float v4, v6

    int-to-float p3, p3

    mul-float v8, p6, p3

    sub-float v8, v4, v8

    float-to-int v8, v8

    sub-int p4, v2, p4

    sub-float/2addr v7, p6

    mul-float/2addr v7, p3

    add-float/2addr v4, v7

    float-to-int p3, v4

    invoke-direct {v5, v8, p4, p3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 28
    :cond_4
    div-int/lit8 v4, p0, 0x2

    add-int/2addr v6, v4

    add-int/2addr v2, p1

    .line 29
    new-instance v5, Landroid/graphics/Rect;

    int-to-float v4, v6

    int-to-float p3, p3

    mul-float v8, p6, p3

    sub-float v8, v4, v8

    float-to-int v8, v8

    sub-float/2addr v7, p6

    mul-float/2addr v7, p3

    add-float/2addr v4, v7

    float-to-int p3, v4

    add-int/2addr p4, v2

    invoke-direct {v5, v8, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    if-eqz v5, :cond_5

    .line 30
    invoke-static {v0, v5}, Lsmartisan/InvokeApi$b;->a(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    :cond_5
    const-string p3, "smt_window_floating"

    .line 31
    invoke-static {p2, p3, v3}, Lsmartisan/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "smt_window_arrow_direct"

    .line 33
    invoke-static {p2, p3, p5}, Lsmartisan/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;I)V

    const-string p3, "smt_window_arrow_xoffset"

    .line 34
    invoke-static {p2, p3, v6}, Lsmartisan/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;I)V

    const-string p3, "smt_window_arrow_yoffset"

    .line 35
    invoke-static {p2, p3, v2}, Lsmartisan/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;I)V

    const-string p3, "smt_window_view_width"

    .line 36
    invoke-static {p2, p3, p0}, Lsmartisan/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;I)V

    const-string p0, "smt_window_view_height"

    .line 37
    invoke-static {p2, p0, p1}, Lsmartisan/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 38
    new-instance p0, Landroid/util/Pair;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static buildPopupIntent(Landroid/view/View;Landroid/content/Intent;IIIF)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Intent;",
            "IIIF)",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lsmartisan/util/Utils;->buildPopupIntent(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;IIIF)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static caculateTextWidth(Landroid/widget/TextView;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static checkArgument(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static dipTopx(Landroid/content/Context;D)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p0, p1

    return p0
.end method

.method public static getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lsmartisan/InvokeApi$g;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lsmartisan/InvokeApi$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentActiveNetwork(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lsmartisan/util/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDrawableHeight(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public static getDrawableWidth(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public static getTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private static getValidPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lsmartisan/util/Utils;->sSystemPackageList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static handleActivityNotFound(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/ActivityNotFoundException;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lsmartisan/util/Utils;->getValidPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Lsmartisan/util/Utils;->showAppNotExistDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    throw p2
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lsmartisan/util/Utils;->getCurrentActiveNetwork(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTextEllipsized(Landroid/widget/TextView;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p0

    if-lez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static resetTextViewFontSizeAttr(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1
    invoke-static {p1, v0}, Lsmartisan/InvokeApi$m;->a(Landroid/widget/TextView;F)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static setMaxTextSizeForTextView(Landroid/widget/TextView;F)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0, p1}, Lsmartisan/InvokeApi$m;->a(Landroid/widget/TextView;F)V

    :cond_0
    return-void
.end method

.method private static showAppNotExistDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lsmartisan/widget/R$string;->dlg_title_notice:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$string;->install_message:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$string;->install_text:I

    new-instance v2, Lsmartisan/util/Utils$1;

    invoke-direct {v2, p1, p0}, Lsmartisan/util/Utils$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {p0, p1, v0}, Lsmartisan/util/Utils;->handleActivityNotFound(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/ActivityNotFoundException;)V

    :goto_0
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2
    invoke-static {p0, p1, p2}, Lsmartisan/util/Utils;->handleActivityNotFound(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/ActivityNotFoundException;)V

    :goto_0
    return-void
.end method

.method public static startPopupActivity(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;IIIF)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lsmartisan/util/Utils;->buildPopupIntent(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;IIIF)Landroid/util/Pair;

    move-result-object p1

    .line 2
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p4

    const-string p5, "smt_pop_pre_taskid"

    invoke-static {p3, p5, p4}, Lsmartisan/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3
    :try_start_0
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/content/Intent;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p0, p2, p1}, Lsmartisan/util/Utils;->handleActivityNotFound(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/ActivityNotFoundException;)V

    :goto_0
    return-void
.end method

.method public static startPopupActivityForResult(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;IIIFI)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lsmartisan/util/Utils;->buildPopupIntent(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;IIIF)Landroid/util/Pair;

    move-result-object p1

    .line 2
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p4

    const-string p5, "smt_pop_pre_taskid"

    invoke-static {p3, p5, p4}, Lsmartisan/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3
    :try_start_0
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/content/Intent;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p3, p7, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p0, p2, p1}, Lsmartisan/util/Utils;->handleActivityNotFound(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/ActivityNotFoundException;)V

    :goto_0
    return-void
.end method
