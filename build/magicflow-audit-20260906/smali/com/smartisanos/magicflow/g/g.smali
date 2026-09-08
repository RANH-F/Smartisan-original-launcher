.class Lcom/smartisanos/magicflow/g/g;
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
    invoke-direct {p0}, Lcom/smartisanos/magicflow/g/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    mul-float/2addr p1, p1

    sub-float p1, v1, p1

    float-to-double v2, p1

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    sub-float/2addr p1, v1

    mul-float/2addr p1, v0

    return p1

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    mul-float/2addr p1, p1

    sub-float p1, v1, p1

    float-to-double v3, p1

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    add-float/2addr p1, v1

    mul-float/2addr p1, v2

    return p1
.end method
