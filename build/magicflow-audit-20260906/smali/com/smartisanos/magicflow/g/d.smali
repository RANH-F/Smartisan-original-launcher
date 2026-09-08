.class Lcom/smartisanos/magicflow/g/d;
.super Ljava/lang/Object;
.source "AnimInterpolator.java"

# interfaces
.implements Lcom/smartisanos/magicflow/g/l;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/g/d;->a:F

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/g/d;->a:F

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 6

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/g/d;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v2

    const v4, 0x3fc33333    # 1.525f

    const/high16 v5, 0x3f000000    # 0.5f

    if-gez v3, :cond_0

    mul-float v1, p1, p1

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v5

    return v1

    :cond_0
    sub-float/2addr p1, v1

    mul-float v3, p1, p1

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    mul-float/2addr v3, v5

    return v3
.end method
