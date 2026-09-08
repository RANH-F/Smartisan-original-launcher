.class public Landroid/support/constraint/b/j/q;
.super Landroid/support/constraint/b/j/f;
.source "WidgetContainer.java"


# instance fields
.field protected k0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/b/j/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/constraint/b/j/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-super {p0}, Landroid/support/constraint/b/j/f;->D()V

    return-void
.end method

.method public H()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/support/constraint/b/j/f;->H()V

    .line 2
    iget-object v0, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/b/j/f;

    .line 5
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->g()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->h()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/b/j/f;->b(II)V

    .line 6
    instance-of v3, v2, Landroid/support/constraint/b/j/g;

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Landroid/support/constraint/b/j/f;->H()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public J()Landroid/support/constraint/b/j/g;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object v0

    .line 2
    instance-of v1, p0, Landroid/support/constraint/b/j/g;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p0

    check-cast v1, Landroid/support/constraint/b/j/g;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object v2

    .line 5
    instance-of v3, v0, Landroid/support/constraint/b/j/g;

    if-eqz v3, :cond_1

    .line 6
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/b/j/g;

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public K()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/constraint/b/j/q;->H()V

    .line 2
    iget-object v0, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/b/j/f;

    .line 5
    instance-of v3, v2, Landroid/support/constraint/b/j/q;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Landroid/support/constraint/b/j/q;

    invoke-virtual {v2}, Landroid/support/constraint/b/j/q;->K()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(Landroid/support/constraint/b/c;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/c;)V

    .line 2
    iget-object v0, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/b/j/f;

    .line 4
    invoke-virtual {v2, p1}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 3

    .line 6
    invoke-super {p0, p1, p2}, Landroid/support/constraint/b/j/f;->b(II)V

    .line 7
    iget-object p1, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 8
    iget-object v0, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b/j/f;

    .line 9
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->o()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/b/j/f;->b(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/b/j/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b/j/q;

    .line 4
    invoke-virtual {v0, p1}, Landroid/support/constraint/b/j/q;->c(Landroid/support/constraint/b/j/f;)V

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/j/f;)V

    return-void
.end method

.method public c(Landroid/support/constraint/b/j/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/j/f;)V

    return-void
.end method
