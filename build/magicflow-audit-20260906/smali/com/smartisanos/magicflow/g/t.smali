.class Lcom/smartisanos/magicflow/g/t;
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
    invoke-direct {p0}, Lcom/smartisanos/magicflow/g/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0

    :cond_0
    const/high16 v1, -0x41000000    # -0.5f

    sub-float/2addr p1, v0

    mul-float v2, p1, p1

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v2, v1

    return v2
.end method
