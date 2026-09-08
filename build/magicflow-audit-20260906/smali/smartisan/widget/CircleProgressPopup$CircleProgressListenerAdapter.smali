.class public abstract Lsmartisan/widget/CircleProgressPopup$CircleProgressListenerAdapter;
.super Ljava/lang/Object;
.source "CircleProgressPopup.java"

# interfaces
.implements Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/CircleProgressPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CircleProgressListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public complete()V
    .locals 0

    return-void
.end method
