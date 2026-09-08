.class Lsmartisan/widget/SmartisanDatePickerEx$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SmartisanDatePickerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanDatePickerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsmartisan/widget/SmartisanDatePickerEx$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState$1;

    invoke-direct {v0}, Lsmartisan/widget/SmartisanDatePickerEx$SavedState$1;-><init>()V

    sput-object v0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mYear:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mMonth:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lsmartisan/widget/SmartisanDatePickerEx$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iput p2, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mYear:I

    .line 5
    iput p3, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mMonth:I

    .line 6
    iput p4, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILsmartisan/widget/SmartisanDatePickerEx$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1000(Lsmartisan/widget/SmartisanDatePickerEx$SavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mMonth:I

    return p0
.end method

.method static synthetic access$1100(Lsmartisan/widget/SmartisanDatePickerEx$SavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mDay:I

    return p0
.end method

.method static synthetic access$900(Lsmartisan/widget/SmartisanDatePickerEx$SavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mYear:I

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lsmartisan/widget/SmartisanDatePickerEx$SavedState;->mDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
