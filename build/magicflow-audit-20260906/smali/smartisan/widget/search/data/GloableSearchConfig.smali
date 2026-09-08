.class public Lsmartisan/widget/search/data/GloableSearchConfig;
.super Ljava/lang/Object;
.source "GloableSearchConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsmartisan/widget/search/data/GloableSearchConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CONFIGS:Ljava/lang/String; = "types"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private id:I

.field private mConfigTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigType;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/search/data/GloableSearchConfig$2;

    invoke-direct {v0}, Lsmartisan/widget/search/data/GloableSearchConfig$2;-><init>()V

    sput-object v0, Lsmartisan/widget/search/data/GloableSearchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->id:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mVersion:I

    .line 6
    iget-object v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    .line 8
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    sget-object v1, Lsmartisan/widget/search/data/SearchConfigType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lsmartisan/widget/search/data/GloableSearchConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/search/data/GloableSearchConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfigTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->id:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mVersion:I

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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

    check-cast v2, Lsmartisan/widget/search/data/SearchConfigType;

    .line 3
    invoke-virtual {v2}, Lsmartisan/widget/search/data/SearchConfigType;->hasDatas()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public setConfigTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigType;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lsmartisan/widget/search/data/GloableSearchConfig$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/search/data/GloableSearchConfig$1;-><init>(Lsmartisan/widget/search/data/GloableSearchConfig;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->id:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/search/data/GloableSearchConfig;->getConfigTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/search/data/SearchConfigType;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lsmartisan/widget/search/data/SearchConfigType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    iget v3, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "{version:%s,configs[\n%s]}"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDefaultTypes(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/search/data/SearchConfigType;

    .line 3
    invoke-virtual {v1}, Lsmartisan/widget/search/data/SearchConfigType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lsmartisan/widget/search/data/SearchConfigTypeHelper;->getDefaultType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsmartisan/widget/search/data/SearchConfigType;->updateDefaultData(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lsmartisan/widget/search/data/GloableSearchConfig;->mConfigTypes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
