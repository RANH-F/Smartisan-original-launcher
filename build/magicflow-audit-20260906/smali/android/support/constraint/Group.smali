.class public Landroid/support/constraint/Group;
.super Landroid/support/constraint/ConstraintHelper;
.source "Group.java"


# virtual methods
.method public a(Landroid/support/constraint/ConstraintLayout;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$a;

    .line 4
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$a;->k0:Landroid/support/constraint/b/j/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/b/j/f;->o(I)V

    .line 5
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$a;->k0:Landroid/support/constraint/b/j/f;

    invoke-virtual {p1, v1}, Landroid/support/constraint/b/j/f;->g(I)V

    return-void
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->a(Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/support/constraint/ConstraintHelper;->e:Z

    return-void
.end method

.method public c(Landroid/support/constraint/ConstraintLayout;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Landroid/support/constraint/ConstraintHelper;->b:I

    if-ge v4, v5, :cond_2

    .line 5
    iget-object v5, p0, Landroid/support/constraint/ConstraintHelper;->a:[I

    aget v5, v5, v4

    .line 6
    invoke-virtual {p1, v5}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v6, v1, v3

    if-lez v6, :cond_1

    .line 8
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_1

    .line 9
    invoke-virtual {v5, v1}, Landroid/view/View;->setElevation(F)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
