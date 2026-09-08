.class public Lcom/smartisanos/magicflow/g/c0;
.super Ljava/lang/Object;
.source "Vector3f.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/g/c0;->a:F

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/g/c0;->b:F

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/g/c0;->c:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/smartisanos/magicflow/g/c0;->a:F

    .line 11
    iput p2, p0, Lcom/smartisanos/magicflow/g/c0;->b:F

    .line 12
    iput p3, p0, Lcom/smartisanos/magicflow/g/c0;->c:F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/g/c0;->a:F

    int-to-float p1, p2

    .line 7
    iput p1, p0, Lcom/smartisanos/magicflow/g/c0;->b:F

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/smartisanos/magicflow/g/c0;->c:F

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float p1, p1

    .line 14
    iput p1, p0, Lcom/smartisanos/magicflow/g/c0;->a:F

    int-to-float p1, p2

    .line 15
    iput p1, p0, Lcom/smartisanos/magicflow/g/c0;->b:F

    int-to-float p1, p3

    .line 16
    iput p1, p0, Lcom/smartisanos/magicflow/g/c0;->c:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/g/c0;->a:F

    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/g/c0;->b:F

    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/g/c0;->c:F

    return v0
.end method

.method protected clone()Lcom/smartisanos/magicflow/g/c0;
    .locals 4

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/g/c0;

    iget v1, p0, Lcom/smartisanos/magicflow/g/c0;->a:F

    iget v2, p0, Lcom/smartisanos/magicflow/g/c0;->b:F

    iget v3, p0, Lcom/smartisanos/magicflow/g/c0;->c:F

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/magicflow/g/c0;-><init>(FFF)V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/g/c0;->clone()Lcom/smartisanos/magicflow/g/c0;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/smartisanos/magicflow/g/c0;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/smartisanos/magicflow/g/c0;

    .line 3
    iget v1, p0, Lcom/smartisanos/magicflow/g/c0;->a:F

    iget v2, p1, Lcom/smartisanos/magicflow/g/c0;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/smartisanos/magicflow/g/c0;->b:F

    iget v2, p1, Lcom/smartisanos/magicflow/g/c0;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/smartisanos/magicflow/g/c0;->c:F

    iget p1, p1, Lcom/smartisanos/magicflow/g/c0;->c:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/magicflow/g/c0;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/magicflow/g/c0;->b:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/magicflow/g/c0;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
