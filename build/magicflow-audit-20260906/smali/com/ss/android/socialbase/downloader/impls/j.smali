.class public Lcom/ss/android/socialbase/downloader/impls/j;
.super Ljava/lang/Object;
.source "DefaultRetryDelayTimeCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)J
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-wide/16 p1, 0xbb8

    return-wide p1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const-wide/16 p1, 0x3a98

    return-wide p1

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    const-wide/16 p1, 0x7530

    return-wide p1

    :cond_2
    if-le p1, p2, :cond_3

    const-wide/32 p1, 0x493e0

    return-wide p1

    :cond_3
    const-wide/16 p1, 0x0

    return-wide p1
.end method
