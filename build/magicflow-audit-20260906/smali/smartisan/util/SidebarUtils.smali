.class public Lsmartisan/util/SidebarUtils;
.super Ljava/lang/Object;
.source "SidebarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dragFile(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static dragFile(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static dragFile(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static dragFile(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static dragImage(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static dragLink(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public static dragLink(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static dragLink(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static dragText(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public static dragText(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static dragText(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static getAdjustedRawX(Landroid/view/View;Landroid/view/MotionEvent;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getAdjustedRawY(Landroid/view/View;Landroid/view/MotionEvent;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSidebarModeState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSidebarFocused(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isSidebarShowing(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static requestEnterLastMode()V
    .locals 0

    return-void
.end method

.method public static resetWindowForTemp()V
    .locals 0

    return-void
.end method

.method public static updateOngoing(Landroid/content/ComponentName;IILjava/lang/CharSequence;I)V
    .locals 0

    return-void
.end method
