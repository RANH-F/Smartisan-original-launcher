.class Lcom/smartisanos/magicflow/g/e;
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
    iput v0, p0, Lcom/smartisanos/magicflow/g/e;->a:F

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/g/e;->a:F

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/g/e;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    mul-float v2, p1, p1

    add-float v3, v0, v1

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    return v2
.end method
