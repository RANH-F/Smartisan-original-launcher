.class public Landroid/support/constraint/b/j/i;
.super Landroid/support/constraint/b/j/f;
.source "Guideline.java"


# instance fields
.field protected k0:F

.field protected l0:I

.field protected m0:I

.field private n0:Landroid/support/constraint/b/j/e;

.field private o0:I

.field private p0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/support/constraint/b/j/f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Landroid/support/constraint/b/j/i;->k0:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/support/constraint/b/j/i;->l0:I

    .line 4
    iput v0, p0, Landroid/support/constraint/b/j/i;->m0:I

    .line 5
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iput-object v0, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/support/constraint/b/j/i;->o0:I

    .line 7
    iput-boolean v0, p0, Landroid/support/constraint/b/j/i;->p0:Z

    .line 8
    new-instance v1, Landroid/support/constraint/b/j/l;

    invoke-direct {v1}, Landroid/support/constraint/b/j/l;-><init>()V

    .line 9
    iget-object v1, p0, Landroid/support/constraint/b/j/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object v1, p0, Landroid/support/constraint/b/j/f;->B:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 12
    iget-object v2, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    iget-object v3, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/constraint/b/j/i;->o0:I

    return v0
.end method

.method public a(Landroid/support/constraint/b/j/e$d;)Landroid/support/constraint/b/j/e;
    .locals 2

    .line 1
    sget-object v0, Landroid/support/constraint/b/j/i$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :pswitch_1
    iget v0, p0, Landroid/support/constraint/b/j/i;->o0:I

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    return-object p1

    .line 4
    :pswitch_2
    iget v0, p0, Landroid/support/constraint/b/j/i;->o0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p1, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    return-object p1

    .line 6
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 6

    .line 7
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/b/j/i;->J()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 9
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {v5}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 10
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {v5}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 11
    iget v0, p0, Landroid/support/constraint/b/j/i;->l0:I

    if-eq v0, v2, :cond_1

    .line 12
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/b/j/i;->l0:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 13
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/b/j/i;->l0:I

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    goto/16 :goto_0

    .line 14
    :cond_1
    iget v0, p0, Landroid/support/constraint/b/j/i;->m0:I

    if-eq v0, v2, :cond_2

    .line 15
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/b/j/i;->m0:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 16
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/b/j/i;->m0:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    goto/16 :goto_0

    .line 17
    :cond_2
    iget v0, p0, Landroid/support/constraint/b/j/i;->k0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/b/j/f;->j()Landroid/support/constraint/b/j/f$b;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/b/j/f$b;->a:Landroid/support/constraint/b/j/f$b;

    if-ne v0, v1, :cond_6

    .line 18
    iget v0, p1, Landroid/support/constraint/b/j/f;->E:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/b/j/i;->k0:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 19
    iget-object v1, p0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v2}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 20
    iget-object v1, p0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    goto/16 :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v5}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 22
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v5}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 23
    iget v0, p0, Landroid/support/constraint/b/j/i;->l0:I

    if-eq v0, v2, :cond_4

    .line 24
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/b/j/i;->l0:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 25
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/b/j/i;->l0:I

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    goto :goto_0

    .line 26
    :cond_4
    iget v0, p0, Landroid/support/constraint/b/j/i;->m0:I

    if-eq v0, v2, :cond_5

    .line 27
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/b/j/i;->m0:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 28
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/b/j/i;->m0:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    goto :goto_0

    .line 29
    :cond_5
    iget v0, p0, Landroid/support/constraint/b/j/i;->k0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/b/j/f;->q()Landroid/support/constraint/b/j/f$b;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/b/j/f$b;->a:Landroid/support/constraint/b/j/f$b;

    if-ne v0, v1, :cond_6

    .line 30
    iget v0, p1, Landroid/support/constraint/b/j/f;->F:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/b/j/i;->k0:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 31
    iget-object v1, p0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {v2}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    .line 32
    iget-object v1, p0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Landroid/support/constraint/b/e;)V
    .locals 9

    .line 33
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b/j/g;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    sget-object v1, Landroid/support/constraint/b/j/e$d;->b:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v0, v1}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/j/e$d;)Landroid/support/constraint/b/j/e;

    move-result-object v1

    .line 35
    sget-object v2, Landroid/support/constraint/b/j/e$d;->d:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v0, v2}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/j/e$d;)Landroid/support/constraint/b/j/e;

    move-result-object v2

    .line 36
    iget-object v3, p0, Landroid/support/constraint/b/j/f;->D:Landroid/support/constraint/b/j/f;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v3, v3, v5

    sget-object v6, Landroid/support/constraint/b/j/f$b;->b:Landroid/support/constraint/b/j/f$b;

    if-ne v3, v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 37
    :goto_0
    iget v6, p0, Landroid/support/constraint/b/j/i;->o0:I

    if-nez v6, :cond_3

    .line 38
    sget-object v1, Landroid/support/constraint/b/j/e$d;->c:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v0, v1}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/j/e$d;)Landroid/support/constraint/b/j/e;

    move-result-object v1

    .line 39
    sget-object v2, Landroid/support/constraint/b/j/e$d;->e:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v0, v2}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/j/e$d;)Landroid/support/constraint/b/j/e;

    move-result-object v2

    .line 40
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->D:Landroid/support/constraint/b/j/f;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v0, v0, v4

    sget-object v3, Landroid/support/constraint/b/j/f$b;->b:Landroid/support/constraint/b/j/f$b;

    if-ne v0, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    .line 41
    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/constraint/b/j/i;->l0:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_4

    .line 42
    iget-object v0, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v1}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v1

    .line 44
    iget v6, p0, Landroid/support/constraint/b/j/i;->l0:I

    invoke-virtual {p1, v0, v1, v6, v4}, Landroid/support/constraint/b/e;->a(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;II)Landroid/support/constraint/b/b;

    if-eqz v3, :cond_6

    .line 45
    invoke-virtual {p1, v2}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Landroid/support/constraint/b/e;->b(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;II)V

    goto :goto_2

    .line 46
    :cond_4
    iget v0, p0, Landroid/support/constraint/b/j/i;->m0:I

    if-eq v0, v6, :cond_5

    .line 47
    iget-object v0, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v2}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v2

    .line 49
    iget v6, p0, Landroid/support/constraint/b/j/i;->m0:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Landroid/support/constraint/b/e;->a(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;II)Landroid/support/constraint/b/b;

    if-eqz v3, :cond_6

    .line 50
    invoke-virtual {p1, v1}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/support/constraint/b/e;->b(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;II)V

    .line 51
    invoke-virtual {p1, v2, v0, v5, v7}, Landroid/support/constraint/b/e;->b(Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;II)V

    goto :goto_2

    .line 52
    :cond_5
    iget v0, p0, Landroid/support/constraint/b/j/i;->k0:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    .line 53
    iget-object v0, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v4

    .line 54
    invoke-virtual {p1, v1}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v5

    .line 55
    invoke-virtual {p1, v2}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v6

    .line 56
    iget v7, p0, Landroid/support/constraint/b/j/i;->k0:F

    iget-boolean v8, p0, Landroid/support/constraint/b/j/i;->p0:Z

    move-object v3, p1

    .line 57
    invoke-static/range {v3 .. v8}, Landroid/support/constraint/b/e;->a(Landroid/support/constraint/b/e;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;Landroid/support/constraint/b/i;FZ)Landroid/support/constraint/b/b;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/support/constraint/b/e;->a(Landroid/support/constraint/b/b;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/b/j/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Landroid/support/constraint/b/e;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/b/e;->b(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget v0, p0, Landroid/support/constraint/b/j/i;->o0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/constraint/b/j/f;->r(I)V

    .line 5
    invoke-virtual {p0, v2}, Landroid/support/constraint/b/j/f;->s(I)V

    .line 6
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/b/j/f;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/b/j/f;->g(I)V

    .line 7
    invoke-virtual {p0, v2}, Landroid/support/constraint/b/j/f;->o(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/constraint/b/j/f;->r(I)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/support/constraint/b/j/f;->s(I)V

    .line 10
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/b/j/f;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/b/j/f;->o(I)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/support/constraint/b/j/f;->g(I)V

    :goto_0
    return-void
.end method

.method public e(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Landroid/support/constraint/b/j/i;->k0:F

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/support/constraint/b/j/i;->l0:I

    .line 3
    iput p1, p0, Landroid/support/constraint/b/j/i;->m0:I

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    iput v1, p0, Landroid/support/constraint/b/j/i;->k0:F

    .line 2
    iput p1, p0, Landroid/support/constraint/b/j/i;->l0:I

    .line 3
    iput v0, p0, Landroid/support/constraint/b/j/i;->m0:I

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    iput v1, p0, Landroid/support/constraint/b/j/i;->k0:F

    .line 2
    iput v0, p0, Landroid/support/constraint/b/j/i;->l0:I

    .line 3
    iput p1, p0, Landroid/support/constraint/b/j/i;->m0:I

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/constraint/b/j/i;->o0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/support/constraint/b/j/i;->o0:I

    .line 3
    iget-object p1, p0, Landroid/support/constraint/b/j/f;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget p1, p0, Landroid/support/constraint/b/j/i;->o0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iput-object p1, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iput-object p1, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    .line 7
    :goto_0
    iget-object p1, p0, Landroid/support/constraint/b/j/f;->B:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 9
    iget-object v1, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    iget-object v2, p0, Landroid/support/constraint/b/j/i;->n0:Landroid/support/constraint/b/j/e;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
