.class public Lcom/ss/android/socialbase/downloader/impls/c;
.super Ljava/lang/Object;
.source "DefaultChunkCntCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    const-wide/32 v0, 0xa00000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-wide/32 v0, 0x3200000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-wide/32 v0, 0x6400000

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1
.end method
