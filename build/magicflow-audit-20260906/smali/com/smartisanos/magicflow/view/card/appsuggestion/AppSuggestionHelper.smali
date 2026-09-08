.class public Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;
.super Ljava/lang/Object;
.source "AppSuggestionHelper.java"


# static fields
.field public static final APP_STORE_PACKAGE:Ljava/lang/String; = "com.smartisanos.appstore"

.field public static final BROWSER_PACKAGE:Ljava/lang/String; = "com.android.browser"

.field private static final CAMERA_PACKAGE:Ljava/lang/String; = "com.android.camera2"

.field public static final DEF_APP_PACKAGE:[Ljava/lang/String;

.field private static final GALLERY_PACKAGE:Ljava/lang/String; = "com.android.gallery3d"

.field public static final MAX_APP_SUGGESTION_COUNT:I = 0x4

.field private static appSubstitutePackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "com.smartisanos.appstore"

    const-string v1, "com.android.browser"

    const-string v2, "com.android.camera2"

    const-string v3, "com.android.gallery3d"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->DEF_APP_PACKAGE:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->appSubstitutePackage:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawableNeedReset(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->scaleImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/graphics/Bitmap;)F

    move-result p0

    .line 4
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetDrawable area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fb70a3d70a3d70aL    # 0.09

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getAppSuggestionInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 5
    new-instance v4, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    invoke-direct {v4, v3}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->getRealAppSuggestionInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstSubstituteAppPackage()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->appSubstitutePackage:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getRealAppSuggestionInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->appSubstitutePackage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->appSubstitutePackage:Ljava/util/List;

    sget-object v2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->DEF_APP_PACKAGE:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    .line 5
    sget-object v3, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->appSubstitutePackage:Ljava/util/List;

    iget-object v2, v2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    move v3, v1

    :goto_1
    rsub-int/lit8 v4, v0, 0x4

    if-ge v3, v4, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->substitutePackageSizeHasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    new-instance v4, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    invoke-static {}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->getFirstSubstituteAppPackage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    .line 11
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->loadAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v5

    iget-object v3, v3, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/smartisanos/magicflow/o/n;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    .line 13
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 14
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_8

    :goto_3
    if-ge v1, v2, :cond_8

    .line 15
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->substitutePackageSizeHasNext()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    new-instance v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    invoke-static {}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->getFirstSubstituteAppPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->loadAppIcon()Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-object p0
.end method

.method private static scaleImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x40

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 5
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 8
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p0, v6, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static substitutePackageSizeHasNext()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->appSubstitutePackage:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public static updateAppSuggestionCache(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    .line 4
    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->substitutePackageSizeHasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    invoke-static {}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->getFirstSubstituteAppPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->loadAppIcon()Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return p1
.end method
