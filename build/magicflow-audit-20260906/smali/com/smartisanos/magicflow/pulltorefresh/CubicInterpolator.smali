.class public Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;
.super Ljava/lang/Object;
.source "CubicInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static IN:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

.field public static final INOUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

.field public static final OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator$1;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator$1;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->IN:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator$2;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator$2;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator$3;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator$3;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->INOUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
