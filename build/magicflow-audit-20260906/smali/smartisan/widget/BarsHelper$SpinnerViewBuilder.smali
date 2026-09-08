.class public Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
.super Ljava/lang/Object;
.source "BarsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/BarsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpinnerViewBuilder"
.end annotation


# instance fields
.field private mCenterContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterLeftIconRef:I

.field private mCenterTitle:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsRangeVerticalScroll:Z

.field private mSpinnerStyle:I

.field private mSubTitle:Ljava/lang/String;

.field private mSubTitleTextColor:I

.field private mTitleTextColor:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mCenterContent:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lsmartisan/widget/BarsHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lsmartisan/widget/SmartisanSpinnerView;
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mCenterContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mIsRangeVerticalScroll:Z

    .line 2
    new-instance v0, Lsmartisan/widget/SmartisanSpinnerView;

    iget-object v1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;-><init>(Landroid/content/Context;)V

    .line 3
    iget-boolean v1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mIsRangeVerticalScroll:Z

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;->setIsNeedVerticalScroll(Z)V

    .line 4
    iget v1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mCenterLeftIconRef:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;->setCenterLeftIcon(I)V

    .line 5
    iget-object v1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mCenterContent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mCenterTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lsmartisan/widget/SmartisanSpinnerView;->setSpinnerPickText([Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;->setSubContentText(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mSpinnerStyle:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;->setSpinnerStyle(I)V

    return-object v0
.end method

.method public setCenterContent(Ljava/util/List;)Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mCenterContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mCenterContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setCenterLeftIconRef(I)Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mCenterLeftIconRef:I

    return-object p0
.end method

.method public setCenterTitle(Ljava/lang/String;)Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mCenterTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setRangeVerticalScroll(Z)Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mIsRangeVerticalScroll:Z

    return-object p0
.end method

.method public setSpinnerStyle(I)Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mSpinnerStyle:I

    return-object p0
.end method

.method public setSubTitle(Ljava/lang/String;)Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setSubTitleTextColor(I)Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mSubTitleTextColor:I

    return-object p0
.end method

.method public setTitleTextColor(I)Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BarsHelper$SpinnerViewBuilder;->mTitleTextColor:I

    return-object p0
.end method
