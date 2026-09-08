.class public Lsmartisan/widget/BarsHelper$TabBuilder;
.super Ljava/lang/Object;
.source "BarsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/BarsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabBuilder"
.end annotation


# static fields
.field private static final MAX_NUM_TAB:I = 0x4


# instance fields
.field private mBar:Lsmartisan/widget/TitleBar;

.field private mBigTabWidth:I

.field private mBtnDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHasGap:Z

.field private mIsAttachTab:Z

.field private mIsBigFilterTwoTabs:Z

.field private mNormalTabWidth:I

.field private mSpecTabWidth:I

.field private mStrData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWithDrawableWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lsmartisan/widget/TitleBar;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mStrData:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mBtnDrawables:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mBar:Lsmartisan/widget/TitleBar;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$dimen;->filter_tab_normal_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mNormalTabWidth:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$dimen;->filter_tab_big_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mBigTabWidth:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$dimen;->filter_tab_special_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mSpecTabWidth:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->filter_tab_with_drawable_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mWithDrawableWidth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lsmartisan/widget/TitleBar;Lsmartisan/widget/BarsHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/BarsHelper$TabBuilder;-><init>(Landroid/content/Context;Lsmartisan/widget/TitleBar;)V

    return-void
.end method

.method private adjustSmartisanStyle(Lsmartisan/widget/ButtonTabGroup;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mStrData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget-object v2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mBtnDrawables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget v1, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mWithDrawableWidth:I

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 4
    iget-boolean v2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mIsBigFilterTwoTabs:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mNormalTabWidth:I

    if-eqz v2, :cond_2

    .line 6
    iget v1, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mBigTabWidth:I

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 7
    iget-boolean v1, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mIsAttachTab:Z

    if-eqz v1, :cond_3

    .line 8
    iget v1, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mSpecTabWidth:I

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    mul-int/2addr v1, v0

    .line 9
    invoke-virtual {p1, v1}, Lsmartisan/widget/ButtonTabGroup;->setWidth(I)V

    return-void
.end method


# virtual methods
.method public build()Lsmartisan/widget/ButtonTabGroup;
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mStrData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lsmartisan/widget/ButtonTabGroup;

    iget-object v2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lsmartisan/widget/ButtonTabGroup;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mBtnDrawables:Ljava/util/List;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ButtonTabGroup;->setButtonDrawable(Ljava/util/List;)V

    .line 4
    iget-object v2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mStrData:Ljava/util/List;

    iget-boolean v3, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mHasGap:Z

    invoke-virtual {v0, v2, v3}, Lsmartisan/widget/ButtonTabGroup;->setButtonGroupData(Ljava/util/List;Z)V

    .line 5
    invoke-virtual {v0}, Lsmartisan/widget/ButtonTabGroup;->setup()V

    .line 6
    iget-boolean v2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mIsAttachTab:Z

    if-eqz v2, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lsmartisan/widget/BarsHelper$TabBuilder;->adjustSmartisanStyle(Lsmartisan/widget/ButtonTabGroup;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mHasGap:Z

    xor-int/2addr v1, v2

    .line 9
    iget-object v2, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mBar:Lsmartisan/widget/TitleBar;

    invoke-virtual {v2, v1}, Lsmartisan/widget/TitleBar;->generateSingleCenterViewLayoutParams(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public setAttachMode(Z)Lsmartisan/widget/BarsHelper$TabBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mIsAttachTab:Z

    return-object p0
.end method

.method public setBigFilterTwoTabs(Z)Lsmartisan/widget/BarsHelper$TabBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mIsBigFilterTwoTabs:Z

    return-object p0
.end method

.method public setBtnDrawables(Ljava/util/List;)Lsmartisan/widget/BarsHelper$TabBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lsmartisan/widget/BarsHelper$TabBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mBtnDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mBtnDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public setData(Ljava/util/List;Ljava/util/List;)Lsmartisan/widget/BarsHelper$TabBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lsmartisan/widget/BarsHelper$TabBuilder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/BarsHelper$TabBuilder;->setStringData(Ljava/util/List;)Lsmartisan/widget/BarsHelper$TabBuilder;

    .line 2
    invoke-virtual {p0, p2}, Lsmartisan/widget/BarsHelper$TabBuilder;->setBtnDrawables(Ljava/util/List;)Lsmartisan/widget/BarsHelper$TabBuilder;

    return-object p0
.end method

.method public setHasGap(Z)Lsmartisan/widget/BarsHelper$TabBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mHasGap:Z

    return-object p0
.end method

.method public setStringData(Ljava/util/List;)Lsmartisan/widget/BarsHelper$TabBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lsmartisan/widget/BarsHelper$TabBuilder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mStrData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$TabBuilder;->mStrData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
