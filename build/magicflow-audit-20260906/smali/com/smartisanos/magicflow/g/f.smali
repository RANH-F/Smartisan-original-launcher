.class Lcom/smartisanos/magicflow/g/f;
.super Ljava/lang/Object;
.source "AnimInterpolator.java"

# interfaces
.implements Lcom/smartisanos/magicflow/g/l;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/magicflow/g/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/g/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 3

    mul-float/2addr p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    float-to-double v1, p1

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    neg-double v1, v1

    double-to-float p1, v1

    sub-float/2addr p1, v0

    return p1
.end method
