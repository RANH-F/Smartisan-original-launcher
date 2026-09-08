.class public Lsmartisan/widget/BHMDrawerItem;
.super Ljava/lang/Object;
.source "BHMDrawerItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsmartisan/widget/BHMDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_VIEW_TYPE_COUNT:I = 0x2

.field public static final LAST_VIEW_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final VIEW_HEADER:I = 0x1

.field public static final VIEW_ITEM:I


# instance fields
.field private isEnabled:Z

.field private isShowAlert:Z

.field private isShowProgressBar:Z

.field private mCount:Ljava/lang/String;

.field private mCountColor:I

.field private mIconResId:I

.field private mPaddingLeft:I

.field private mSubTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/BHMDrawerItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/BHMDrawerItem;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lsmartisan/widget/BHMDrawerItem$1;

    invoke-direct {v0}, Lsmartisan/widget/BHMDrawerItem$1;-><init>()V

    sput-object v0, Lsmartisan/widget/BHMDrawerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, ""

    .line 3
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/BHMDrawerItem;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    .line 6
    iput p1, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/BHMDrawerItem;->calculateEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/BHMDrawerItem;->setEnabled(Z)V

    .line 8
    iput-object p2, p0, Lsmartisan/widget/BHMDrawerItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;IZZLjava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/BHMDrawerItem;-><init>(ILjava/lang/String;)V

    .line 10
    iput p3, p0, Lsmartisan/widget/BHMDrawerItem;->mIconResId:I

    .line 11
    iput-object p4, p0, Lsmartisan/widget/BHMDrawerItem;->mCount:Ljava/lang/String;

    .line 12
    iput p5, p0, Lsmartisan/widget/BHMDrawerItem;->mCountColor:I

    .line 13
    iput-boolean p6, p0, Lsmartisan/widget/BHMDrawerItem;->isShowProgressBar:Z

    .line 14
    iput-boolean p7, p0, Lsmartisan/widget/BHMDrawerItem;->isShowAlert:Z

    .line 15
    iput-object p8, p0, Lsmartisan/widget/BHMDrawerItem;->mSubTitle:Ljava/lang/String;

    .line 16
    iput p9, p0, Lsmartisan/widget/BHMDrawerItem;->mPaddingLeft:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsmartisan/widget/BHMDrawerItem;->mTitle:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/BHMDrawerItem;->mIconResId:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsmartisan/widget/BHMDrawerItem;->mCount:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/BHMDrawerItem;->mCountColor:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lsmartisan/widget/BHMDrawerItem;->isEnabled:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lsmartisan/widget/BHMDrawerItem;->isShowProgressBar:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lsmartisan/widget/BHMDrawerItem;->isShowAlert:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BHMDrawerItem;->mSubTitle:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/BHMDrawerItem;->mPaddingLeft:I

    return-void
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$layout;->bhm_header_view:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    :goto_0
    iget-object p2, p0, Lsmartisan/widget/BHMDrawerItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private getItemView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lsmartisan/widget/BHMItemView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lsmartisan/widget/BHMItemView;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$layout;->bhm_item_view:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/BHMItemView;

    .line 5
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/BHMDrawerItem;->mTitle:Ljava/lang/String;

    iget v2, p0, Lsmartisan/widget/BHMDrawerItem;->mIconResId:I

    iget-object v3, p0, Lsmartisan/widget/BHMDrawerItem;->mCount:Ljava/lang/String;

    iget v4, p0, Lsmartisan/widget/BHMDrawerItem;->mCountColor:I

    iget-boolean v5, p0, Lsmartisan/widget/BHMDrawerItem;->isShowProgressBar:Z

    iget-boolean v6, p0, Lsmartisan/widget/BHMDrawerItem;->isShowAlert:Z

    iget-object v7, p0, Lsmartisan/widget/BHMDrawerItem;->mSubTitle:Ljava/lang/String;

    iget v8, p0, Lsmartisan/widget/BHMDrawerItem;->mPaddingLeft:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lsmartisan/widget/BHMItemView;->bind(Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;I)V

    return-object p1
.end method


# virtual methods
.method public calculateEnabled()Z
    .locals 4

    .line 1
    iget v0, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lsmartisan/widget/BHMDrawerItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BHMDrawerItem.isEnabled() for type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCountColor()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/BHMDrawerItem;->mCountColor:I

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/BHMDrawerItem;->mIconResId:I

    return v0
.end method

.method public getNumberCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMDrawerItem;->mCount:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/BHMDrawerItem;->mPaddingLeft:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMDrawerItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMDrawerItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p1, Lsmartisan/widget/BHMDrawerItem;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BHMDrawerItem.getView() for custom type="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/BHMDrawerItem;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/BHMDrawerItem;->getItemView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BHMDrawerItem;->isEnabled:Z

    return v0
.end method

.method public isShowAlert()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BHMDrawerItem;->isShowAlert:Z

    return v0
.end method

.method public isShowProgressBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BHMDrawerItem;->isShowProgressBar:Z

    return v0
.end method

.method public setCountColor(I)Lsmartisan/widget/BHMDrawerItem;
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BHMDrawerItem;->mCountColor:I

    return-object p0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BHMDrawerItem;->isEnabled:Z

    return-void
.end method

.method public setIconResId(I)Lsmartisan/widget/BHMDrawerItem;
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BHMDrawerItem;->mIconResId:I

    return-object p0
.end method

.method public setNumberCount(Ljava/lang/String;)Lsmartisan/widget/BHMDrawerItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHMDrawerItem;->mCount:Ljava/lang/String;

    return-object p0
.end method

.method public setPaddingLeft(I)Lsmartisan/widget/BHMDrawerItem;
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BHMDrawerItem;->mPaddingLeft:I

    return-object p0
.end method

.method public setShowAlert(Z)Lsmartisan/widget/BHMDrawerItem;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BHMDrawerItem;->isShowAlert:Z

    return-object p0
.end method

.method public setShowProgressBar(Z)Lsmartisan/widget/BHMDrawerItem;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BHMDrawerItem;->isShowProgressBar:Z

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lsmartisan/widget/BHMDrawerItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHMDrawerItem;->mSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lsmartisan/widget/BHMDrawerItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHMDrawerItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setViewType(I)Lsmartisan/widget/BHMDrawerItem;
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lsmartisan/widget/BHMDrawerItem;->mViewType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lsmartisan/widget/BHMDrawerItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lsmartisan/widget/BHMDrawerItem;->mIconResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lsmartisan/widget/BHMDrawerItem;->mCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lsmartisan/widget/BHMDrawerItem;->mCountColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lsmartisan/widget/BHMDrawerItem;->isEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-boolean p2, p0, Lsmartisan/widget/BHMDrawerItem;->isShowProgressBar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-boolean p2, p0, Lsmartisan/widget/BHMDrawerItem;->isShowAlert:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lsmartisan/widget/BHMDrawerItem;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget p2, p0, Lsmartisan/widget/BHMDrawerItem;->mPaddingLeft:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
