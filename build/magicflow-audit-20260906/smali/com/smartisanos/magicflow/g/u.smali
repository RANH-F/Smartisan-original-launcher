.class Lcom/smartisanos/magicflow/g/u;
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
    invoke-direct {p0}, Lcom/smartisanos/magicflow/g/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    sub-float/2addr v1, v0

    neg-float p1, v1

    return p1
.end method
