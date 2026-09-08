.class final Lsmartisan/widget/SmartisanDateTimePicker$SavedState$1;
.super Ljava/lang/Object;
.source "SmartisanDateTimePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanDateTimePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsmartisan/widget/SmartisanDateTimePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lsmartisan/widget/SmartisanDateTimePicker$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsmartisan/widget/SmartisanDateTimePicker$SavedState;
    .locals 2

    .line 2
    new-instance v0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;-><init>(Landroid/os/Parcel;Lsmartisan/widget/SmartisanDateTimePicker$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState$1;->newArray(I)[Lsmartisan/widget/SmartisanDateTimePicker$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lsmartisan/widget/SmartisanDateTimePicker$SavedState;
    .locals 0

    .line 2
    new-array p1, p1, [Lsmartisan/widget/SmartisanDateTimePicker$SavedState;

    return-object p1
.end method
