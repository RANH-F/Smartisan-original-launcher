.class public Lsmartisan/widget/calendar/DateTimeSavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "DateTimeSavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsmartisan/widget/calendar/DateTimeSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentMills:J

.field private mMaxMills:J

.field private mMinMills:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/calendar/DateTimeSavedState$1;

    invoke-direct {v0}, Lsmartisan/widget/calendar/DateTimeSavedState$1;-><init>()V

    sput-object v0, Lsmartisan/widget/calendar/DateTimeSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mCurrentMills:J

    .line 10
    iput-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMinMills:J

    .line 11
    iput-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMaxMills:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMinMills:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mCurrentMills:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMaxMills:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;JJJ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mCurrentMills:J

    .line 3
    iput-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMinMills:J

    .line 4
    iput-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMaxMills:J

    .line 5
    iput-wide p2, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMinMills:J

    .line 6
    iput-wide p4, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mCurrentMills:J

    .line 7
    iput-wide p6, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMaxMills:J

    return-void
.end method


# virtual methods
.method public getCurrentMills()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mCurrentMills:J

    return-wide v0
.end method

.method public getMaxMills()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMaxMills:J

    return-wide v0
.end method

.method public getMinMills()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMinMills:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMinMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mCurrentMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-wide v0, p0, Lsmartisan/widget/calendar/DateTimeSavedState;->mMaxMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
