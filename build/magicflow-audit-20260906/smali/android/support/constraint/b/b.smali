.class public Landroid/support/constraint/b/b;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroid/support/constraint/b/e$a;


# instance fields
.field a:Landroid/support/constraint/b/i;

.field b:F

.field c:Z

.field public final d:Landroid/support/constraint/b/a;

.field e:Z


# direct methods
.method public constructor <init>(Landroid/support/constraint/b/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/support/constraint/b/b;->b:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/constraint/b/b;->e:Z

    .line 5
    new-instance v0, Landroid/support/constraint/b/a;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/b/a;-><init>(Landroid/support/constraint/b/b;Landroid/support/constraint/b/c;)V

    iput-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    return-void
.end method


# virtual methods
.method public a(FFFLandroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;)Landroid/support/constraint/b/b;
    .locals 4

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroid/support/constraint/b/b;->b:F

    cmpl-float v1, p2, v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    cmpl-float v1, p1, p3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    .line 15
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p4, v3}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 16
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p5, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    goto :goto_1

    :cond_1
    cmpl-float v0, p3, v0

    if-nez v0, :cond_2

    .line 17
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p6, v3}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 18
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p7, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    goto :goto_1

    :cond_2
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    .line 19
    iget-object p2, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p2, p4, v3}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 20
    iget-object p2, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p2, p5, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 21
    iget-object p2, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p2, p7, p1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 22
    iget-object p2, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    neg-float p1, p1

    invoke-virtual {p2, p6, p1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    goto :goto_1

    .line 23
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p4, v3}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 24
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p5, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 25
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p7, v3}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 26
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p6, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    :goto_1
    return-object p0
.end method

.method public a(Landroid/support/constraint/b/e;I)Landroid/support/constraint/b/b;
    .locals 3

    .line 46
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/b/e;->a(ILjava/lang/String;)Landroid/support/constraint/b/i;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 47
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/b/e;->a(ILjava/lang/String;)Landroid/support/constraint/b/i;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    return-object p0
.end method

.method a(Landroid/support/constraint/b/i;I)Landroid/support/constraint/b/b;
    .locals 1

    .line 6
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    return-object p0
.end method

.method public a(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;I)Landroid/support/constraint/b/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-gez p3, :cond_0

    mul-int/lit8 p3, p3, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p3, p3

    .line 1
    iput p3, p0, Landroid/support/constraint/b/b;->b:F

    :cond_1
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0, p1, p3}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 3
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 5
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    :goto_0
    return-object p0
.end method

.method a(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;IFLandroid/support/constraint/b/i;Landroid/support/constraint/b/i;I)Landroid/support/constraint/b/b;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 27
    iget-object p3, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p3, p1, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 28
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p6, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 29
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    return-object p0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p4, v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_2

    .line 30
    iget-object p4, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p4, p1, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 31
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p2, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 32
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p5, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 33
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p6, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 34
    iput p1, p0, Landroid/support/constraint/b/b;->b:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_3

    .line 35
    iget-object p4, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p4, p1, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 36
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    int-to-float p1, p3

    .line 37
    iput p1, p0, Landroid/support/constraint/b/b;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v1, p4, v0

    if-ltz v1, :cond_4

    .line 38
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p5, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 39
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p6, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    int-to-float p1, p7

    .line 40
    iput p1, p0, Landroid/support/constraint/b/b;->b:F

    goto :goto_0

    .line 41
    :cond_4
    iget-object v1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    sub-float v3, v0, p4

    mul-float v4, v3, v0

    invoke-virtual {v1, p1, v4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 42
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    mul-float v1, v3, v2

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 43
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    mul-float/2addr v2, p4

    invoke-virtual {p1, p5, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 44
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    mul-float/2addr v0, p4

    invoke-virtual {p1, p6, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v3

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p1, p2

    .line 45
    iput p1, p0, Landroid/support/constraint/b/b;->b:F

    :cond_6
    :goto_0
    return-object p0
.end method

.method a(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;F)Landroid/support/constraint/b/b;
    .locals 2

    .line 48
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 49
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 50
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p3, p4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    return-object p0
.end method

.method public a(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;I)Landroid/support/constraint/b/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    .line 7
    iput p4, p0, Landroid/support/constraint/b/b;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0, p1, p4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 9
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 10
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p3, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 12
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p2, p4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 13
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p3, p4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    :goto_0
    return-object p0
.end method

.method public a(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;F)Landroid/support/constraint/b/b;
    .locals 2

    .line 51
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 52
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 53
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p3, p5}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 54
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    neg-float p2, p5

    invoke-virtual {p1, p4, p2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    return-object p0
.end method

.method public a(Landroid/support/constraint/b/e;[Z)Landroid/support/constraint/b/i;
    .locals 1

    .line 62
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/b/a;->a([ZLandroid/support/constraint/b/i;)Landroid/support/constraint/b/i;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .locals 2

    .line 55
    iget v0, p0, Landroid/support/constraint/b/b;->b:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    .line 56
    iput v0, p0, Landroid/support/constraint/b/b;->b:F

    .line 57
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0}, Landroid/support/constraint/b/a;->b()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/constraint/b/e$a;)V
    .locals 5

    .line 63
    instance-of v0, p1, Landroid/support/constraint/b/b;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Landroid/support/constraint/b/b;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    .line 66
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0}, Landroid/support/constraint/b/a;->a()V

    const/4 v0, 0x0

    .line 67
    :goto_0
    iget-object v1, p1, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    iget v2, v1, Landroid/support/constraint/b/a;->a:I

    if-ge v0, v2, :cond_0

    .line 68
    invoke-virtual {v1, v0}, Landroid/support/constraint/b/a;->a(I)Landroid/support/constraint/b/i;

    move-result-object v1

    .line 69
    iget-object v2, p1, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v2, v0}, Landroid/support/constraint/b/a;->b(I)F

    move-result v2

    .line 70
    iget-object v3, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/support/constraint/b/i;)V
    .locals 3

    .line 71
    iget v0, p1, Landroid/support/constraint/b/i;->d:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/high16 v1, 0x447a0000    # 1000.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const v1, 0x49742400    # 1000000.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const v1, 0x4e6e6b28    # 1.0E9f

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const v1, 0x5368d4a5    # 1.0E12f

    .line 72
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    return-void
.end method

.method a(Landroid/support/constraint/b/e;)Z
    .locals 2

    .line 58
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0, p1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/e;)Landroid/support/constraint/b/i;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/b/b;->d(Landroid/support/constraint/b/i;)V

    const/4 p1, 0x0

    .line 60
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    iget v1, v1, Landroid/support/constraint/b/a;->a:I

    if-nez v1, :cond_1

    .line 61
    iput-boolean v0, p0, Landroid/support/constraint/b/b;->e:Z

    :cond_1
    return p1
.end method

.method b(Landroid/support/constraint/b/i;I)Landroid/support/constraint/b/b;
    .locals 0

    .line 3
    iput-object p1, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    int-to-float p2, p2

    .line 4
    iput p2, p1, Landroid/support/constraint/b/i;->e:F

    .line 5
    iput p2, p0, Landroid/support/constraint/b/b;->b:F

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/support/constraint/b/b;->e:Z

    return-object p0
.end method

.method public b(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;I)Landroid/support/constraint/b/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    .line 7
    iput p4, p0, Landroid/support/constraint/b/b;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0, p1, p4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 9
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 10
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p3, p4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 12
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p2, p4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 13
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p3, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    :goto_0
    return-object p0
.end method

.method public b(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;F)Landroid/support/constraint/b/b;
    .locals 2

    .line 14
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p3, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 15
    iget-object p3, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p3, p4, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 16
    iget-object p3, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-virtual {p3, p1, p4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    .line 17
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, p2, p4}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    neg-float p1, p5

    .line 18
    iput p1, p0, Landroid/support/constraint/b/b;->b:F

    return-object p0
.end method

.method b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/constraint/b/i;->g:Landroid/support/constraint/b/i$a;

    sget-object v1, Landroid/support/constraint/b/i$a;->a:Landroid/support/constraint/b/i$a;

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/b/b;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b(Landroid/support/constraint/b/i;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0, p1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/support/constraint/b/i;I)Landroid/support/constraint/b/b;
    .locals 1

    if-gez p2, :cond_0

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 1
    iput p2, p0, Landroid/support/constraint/b/b;->b:F

    .line 2
    iget-object p2, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    .line 3
    iput p2, p0, Landroid/support/constraint/b/b;->b:F

    .line 4
    iget-object p2, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v0}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    :goto_0
    return-object p0
.end method

.method c(Landroid/support/constraint/b/i;)Landroid/support/constraint/b/i;
    .locals 2

    .line 5
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/constraint/b/a;->a([ZLandroid/support/constraint/b/i;)Landroid/support/constraint/b/i;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 2

    .line 6
    iget-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/b/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    iget v0, v0, Landroid/support/constraint/b/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0}, Landroid/support/constraint/b/a;->a()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/support/constraint/b/b;->b:F

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    .line 2
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v0}, Landroid/support/constraint/b/a;->a()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/support/constraint/b/b;->b:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/constraint/b/b;->e:Z

    return-void
.end method

.method d(Landroid/support/constraint/b/i;)V
    .locals 3

    .line 5
    iget-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    .line 6
    iget-object v2, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;F)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/support/constraint/b/a;->a(Landroid/support/constraint/b/i;Z)F

    move-result v0

    mul-float/2addr v0, v1

    .line 9
    iput-object p1, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 10
    :cond_1
    iget p1, p0, Landroid/support/constraint/b/b;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/b/b;->b:F

    .line 11
    iget-object p1, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {p1, v0}, Landroid/support/constraint/b/a;->a(F)V

    return-void
.end method

.method e()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget v1, p0, Landroid/support/constraint/b/b;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/constraint/b/b;->b:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    .line 7
    :goto_1
    iget-object v5, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    iget v5, v5, Landroid/support/constraint/b/a;->a:I

    :goto_2
    if-ge v3, v5, :cond_8

    .line 8
    iget-object v6, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v6, v3}, Landroid/support/constraint/b/a;->a(I)Landroid/support/constraint/b/i;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_6

    .line 9
    :cond_2
    iget-object v7, p0, Landroid/support/constraint/b/b;->d:Landroid/support/constraint/b/a;

    invoke-virtual {v7, v3}, Landroid/support/constraint/b/a;->b(I)F

    move-result v7

    cmpl-float v8, v7, v2

    if-nez v8, :cond_3

    goto/16 :goto_6

    .line 10
    :cond_3
    invoke-virtual {v6}, Landroid/support/constraint/b/i;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v9, -0x40800000    # -1.0f

    if-nez v1, :cond_4

    cmpg-float v1, v7, v2

    if-gez v1, :cond_6

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    if-lez v8, :cond_5

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 13
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    mul-float/2addr v7, v9

    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_7

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 15
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move v1, v4

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_8
    if-nez v1, :cond_9

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public getKey()Landroid/support/constraint/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/b;->a:Landroid/support/constraint/b/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/constraint/b/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
