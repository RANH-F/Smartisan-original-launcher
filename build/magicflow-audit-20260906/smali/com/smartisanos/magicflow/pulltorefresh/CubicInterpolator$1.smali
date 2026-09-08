.class final Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator$1;
.super Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;
.source "CubicInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CubicInterpolator.IN"

    return-object v0
.end method
