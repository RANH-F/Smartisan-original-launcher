.class public Lcom/smartisanos/magicflow/view/CubicInterpolator;
.super Ljava/lang/Object;
.source "CubicInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final IN:Lcom/smartisanos/magicflow/view/CubicInterpolator;

.field public static final INOUT:Lcom/smartisanos/magicflow/view/CubicInterpolator;

.field public static final OUT:Lcom/smartisanos/magicflow/view/CubicInterpolator;

.field private static final PI:F = 3.1415927f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/CubicInterpolator$1;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/CubicInterpolator$1;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/view/CubicInterpolator;->IN:Lcom/smartisanos/magicflow/view/CubicInterpolator;

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/CubicInterpolator$2;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/CubicInterpolator$2;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/view/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/view/CubicInterpolator;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/view/CubicInterpolator$3;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/CubicInterpolator$3;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/view/CubicInterpolator;->INOUT:Lcom/smartisanos/magicflow/view/CubicInterpolator;

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
    .locals 0

    return p1
.end method
