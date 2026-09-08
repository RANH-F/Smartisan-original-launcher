.class public Lsmartisan/widget/search/data/SearchConfigType;
.super Ljava/lang/Object;
.source "SearchConfigType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONFIG_BAIKE:Ljava/lang/String; = "config_baike"

.field public static final CONFIG_DICT:Ljava/lang/String; = "config_dictionary"

.field public static final CONFIG_SEARCH:Ljava/lang/String; = "config_search"

.field public static final CONFIG_THIRD:Ljava/lang/String; = "config_third_search"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsmartisan/widget/search/data/SearchConfigType;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DATAS:Ljava/lang/String; = "datas"

.field public static final KEY_MODE:Ljava/lang/String; = "mode"

.field public static final KEY_ORDER:Ljava/lang/String; = "order"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final MODE_FORCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SearchConfigType"


# instance fields
.field private isChecked:Z

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mOrder:I

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/search/data/SearchConfigType$2;

    invoke-direct {v0}, Lsmartisan/widget/search/data/SearchConfigType$2;-><init>()V

    sput-object v0, Lsmartisan/widget/search/data/SearchConfigType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->isChecked:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->isChecked:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mType:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mOrder:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mMode:I

    .line 9
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    .line 11
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    sget-object v1, Lsmartisan/widget/search/data/SearchConfigTypeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lsmartisan/widget/search/data/SearchConfigType$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/search/data/SearchConfigType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getByIdentifier(Ljava/lang/String;)Lsmartisan/widget/search/data/SearchConfigTypeData;
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/search/data/SearchConfigTypeData;

    .line 3
    invoke-virtual {v2}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultData()Lsmartisan/widget/search/data/SearchConfigTypeData;
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/search/data/SearchConfigTypeData;

    .line 3
    invoke-virtual {v1}, Lsmartisan/widget/search/data/SearchConfigTypeData;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not find default value for type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigType;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchConfigType"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/search/data/SearchConfigTypeData;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mMode:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mOrder:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hasDatas()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/data/SearchConfigType;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/search/data/SearchConfigType;->isChecked:Z

    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lsmartisan/widget/search/data/SearchConfigType$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/search/data/SearchConfigType$1;-><init>(Lsmartisan/widget/search/data/SearchConfigType;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/data/SearchConfigType;->mMode:I

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/data/SearchConfigType;->mOrder:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigType;->mType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/search/data/SearchConfigType;->getDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/search/data/SearchConfigTypeData;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lsmartisan/widget/search/data/SearchConfigTypeData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lsmartisan/widget/search/data/SearchConfigType;->mType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lsmartisan/widget/search/data/SearchConfigType;->mOrder:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lsmartisan/widget/search/data/SearchConfigType;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "{mType:%s,mOrder:%d,mMode:%d,mdatas:[%s]}\n"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDefaultData(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/search/data/SearchConfigType;->getByIdentifier(Ljava/lang/String;)Lsmartisan/widget/search/data/SearchConfigTypeData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/search/data/SearchConfigTypeData;

    if-eq v2, p1, :cond_1

    .line 3
    invoke-virtual {v2, v0}, Lsmartisan/widget/search/data/SearchConfigTypeData;->setDefault(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Lsmartisan/widget/search/data/SearchConfigTypeData;->setDefault(Z)V

    goto :goto_0

    :cond_2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigType;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lsmartisan/widget/search/data/SearchConfigType;->mOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lsmartisan/widget/search/data/SearchConfigType;->mMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigType;->mDatas:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
