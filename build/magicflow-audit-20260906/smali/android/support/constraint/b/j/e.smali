.class public Landroid/support/constraint/b/j/e;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/b/j/e$b;,
        Landroid/support/constraint/b/j/e$c;,
        Landroid/support/constraint/b/j/e$d;
    }
.end annotation


# instance fields
.field private a:Landroid/support/constraint/b/j/m;

.field final b:Landroid/support/constraint/b/j/f;

.field final c:Landroid/support/constraint/b/j/e$d;

.field d:Landroid/support/constraint/b/j/e;

.field public e:I

.field f:I

.field private g:Landroid/support/constraint/b/j/e$c;

.field private h:I

.field i:Landroid/support/constraint/b/i;


# direct methods
.method public constructor <init>(Landroid/support/constraint/b/j/f;Landroid/support/constraint/b/j/e$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/constraint/b/j/m;

    invoke-direct {v0, p0}, Landroid/support/constraint/b/j/m;-><init>(Landroid/support/constraint/b/j/e;)V

    iput-object v0, p0, Landroid/support/constraint/b/j/e;->a:Landroid/support/constraint/b/j/m;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/support/constraint/b/j/e;->e:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroid/support/constraint/b/j/e;->f:I

    .line 5
    sget-object v1, Landroid/support/constraint/b/j/e$c;->a:Landroid/support/constraint/b/j/e$c;

    iput-object v1, p0, Landroid/support/constraint/b/j/e;->g:Landroid/support/constraint/b/j/e$c;

    .line 6
    sget-object v1, Landroid/support/constraint/b/j/e$b;->a:Landroid/support/constraint/b/j/e$b;

    .line 7
    iput v0, p0, Landroid/support/constraint/b/j/e;->h:I

    .line 8
    iput-object p1, p0, Landroid/support/constraint/b/j/e;->b:Landroid/support/constraint/b/j/f;

    .line 9
    iput-object p2, p0, Landroid/support/constraint/b/j/e;->c:Landroid/support/constraint/b/j/e$d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, Landroid/support/constraint/b/j/e;->h:I

    return v0
.end method

.method public a(Landroid/support/constraint/b/c;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/support/constraint/b/i;

    sget-object v0, Landroid/support/constraint/b/i$a;->a:Landroid/support/constraint/b/i$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/support/constraint/b/i;-><init>(Landroid/support/constraint/b/i$a;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/b/i;->a()V

    :goto_0
    return-void
.end method

.method public a(Landroid/support/constraint/b/j/e;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->h()Landroid/support/constraint/b/j/e$d;

    move-result-object v1

    .line 19
    iget-object v2, p0, Landroid/support/constraint/b/j/e;->c:Landroid/support/constraint/b/j/e$d;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 20
    sget-object v1, Landroid/support/constraint/b/j/e$d;->f:Landroid/support/constraint/b/j/e$d;

    if-ne v2, v1, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->c()Landroid/support/constraint/b/j/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/b/j/f;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/b/j/e;->c()Landroid/support/constraint/b/j/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/b/j/f;->x()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    .line 22
    :cond_3
    sget-object v4, Landroid/support/constraint/b/j/e$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroid/support/constraint/b/j/e;->c:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v0

    .line 24
    :pswitch_1
    sget-object v2, Landroid/support/constraint/b/j/e$d;->c:Landroid/support/constraint/b/j/e$d;

    if-eq v1, v2, :cond_5

    sget-object v2, Landroid/support/constraint/b/j/e$d;->e:Landroid/support/constraint/b/j/e$d;

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    .line 25
    :goto_1
    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->c()Landroid/support/constraint/b/j/f;

    move-result-object p1

    instance-of p1, p1, Landroid/support/constraint/b/j/i;

    if-eqz p1, :cond_8

    if-nez v2, :cond_7

    .line 26
    sget-object p1, Landroid/support/constraint/b/j/e$d;->i:Landroid/support/constraint/b/j/e$d;

    if-ne v1, p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v2, v3

    :cond_8
    :goto_3
    return v2

    .line 27
    :pswitch_2
    sget-object v2, Landroid/support/constraint/b/j/e$d;->b:Landroid/support/constraint/b/j/e$d;

    if-eq v1, v2, :cond_a

    sget-object v2, Landroid/support/constraint/b/j/e$d;->d:Landroid/support/constraint/b/j/e$d;

    if-ne v1, v2, :cond_9

    goto :goto_4

    :cond_9
    move v2, v0

    goto :goto_5

    :cond_a
    :goto_4
    move v2, v3

    .line 28
    :goto_5
    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->c()Landroid/support/constraint/b/j/f;

    move-result-object p1

    instance-of p1, p1, Landroid/support/constraint/b/j/i;

    if-eqz p1, :cond_d

    if-nez v2, :cond_c

    .line 29
    sget-object p1, Landroid/support/constraint/b/j/e$d;->h:Landroid/support/constraint/b/j/e$d;

    if-ne v1, p1, :cond_b

    goto :goto_6

    :cond_b
    move v2, v0

    goto :goto_7

    :cond_c
    :goto_6
    move v2, v3

    :cond_d
    :goto_7
    return v2

    .line 30
    :pswitch_3
    sget-object p1, Landroid/support/constraint/b/j/e$d;->f:Landroid/support/constraint/b/j/e$d;

    if-eq v1, p1, :cond_e

    sget-object p1, Landroid/support/constraint/b/j/e$d;->h:Landroid/support/constraint/b/j/e$d;

    if-eq v1, p1, :cond_e

    sget-object p1, Landroid/support/constraint/b/j/e$d;->i:Landroid/support/constraint/b/j/e$d;

    if-eq v1, p1, :cond_e

    move v0, v3

    :cond_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/support/constraint/b/j/e;IILandroid/support/constraint/b/j/e$c;IZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    .line 7
    iput v1, p0, Landroid/support/constraint/b/j/e;->e:I

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroid/support/constraint/b/j/e;->f:I

    .line 9
    sget-object p1, Landroid/support/constraint/b/j/e$c;->a:Landroid/support/constraint/b/j/e$c;

    iput-object p1, p0, Landroid/support/constraint/b/j/e;->g:Landroid/support/constraint/b/j/e$c;

    const/4 p1, 0x2

    .line 10
    iput p1, p0, Landroid/support/constraint/b/j/e;->h:I

    return v0

    :cond_0
    if-nez p6, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Landroid/support/constraint/b/j/e;->a(Landroid/support/constraint/b/j/e;)Z

    move-result p6

    if-nez p6, :cond_1

    return v1

    .line 12
    :cond_1
    iput-object p1, p0, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-lez p2, :cond_2

    .line 13
    iput p2, p0, Landroid/support/constraint/b/j/e;->e:I

    goto :goto_0

    .line 14
    :cond_2
    iput v1, p0, Landroid/support/constraint/b/j/e;->e:I

    .line 15
    :goto_0
    iput p3, p0, Landroid/support/constraint/b/j/e;->f:I

    .line 16
    iput-object p4, p0, Landroid/support/constraint/b/j/e;->g:Landroid/support/constraint/b/j/e$c;

    .line 17
    iput p5, p0, Landroid/support/constraint/b/j/e;->h:I

    return v0
.end method

.method public a(Landroid/support/constraint/b/j/e;ILandroid/support/constraint/b/j/e$c;I)Z
    .locals 7

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 5
    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/b/j/e;->a(Landroid/support/constraint/b/j/e;IILandroid/support/constraint/b/j/e$c;IZ)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/e;->b:Landroid/support/constraint/b/j/f;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/f;->r()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Landroid/support/constraint/b/j/e;->f:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/constraint/b/j/e;->b:Landroid/support/constraint/b/j/f;

    .line 3
    invoke-virtual {v0}, Landroid/support/constraint/b/j/f;->r()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Landroid/support/constraint/b/j/e;->f:I

    return v0

    .line 5
    :cond_1
    iget v0, p0, Landroid/support/constraint/b/j/e;->e:I

    return v0
.end method

.method public c()Landroid/support/constraint/b/j/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/e;->b:Landroid/support/constraint/b/j/f;

    return-object v0
.end method

.method public d()Landroid/support/constraint/b/j/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/e;->a:Landroid/support/constraint/b/j/m;

    return-object v0
.end method

.method public e()Landroid/support/constraint/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    return-object v0
.end method

.method public f()Landroid/support/constraint/b/j/e$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/e;->g:Landroid/support/constraint/b/j/e$c;

    return-object v0
.end method

.method public g()Landroid/support/constraint/b/j/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    return-object v0
.end method

.method public h()Landroid/support/constraint/b/j/e$d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/e;->c:Landroid/support/constraint/b/j/e$d;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/constraint/b/j/e;->e:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Landroid/support/constraint/b/j/e;->f:I

    .line 4
    sget-object v1, Landroid/support/constraint/b/j/e$c;->b:Landroid/support/constraint/b/j/e$c;

    iput-object v1, p0, Landroid/support/constraint/b/j/e;->g:Landroid/support/constraint/b/j/e$c;

    .line 5
    iput v0, p0, Landroid/support/constraint/b/j/e;->h:I

    .line 6
    sget-object v0, Landroid/support/constraint/b/j/e$b;->a:Landroid/support/constraint/b/j/e$b;

    .line 7
    iget-object v0, p0, Landroid/support/constraint/b/j/e;->a:Landroid/support/constraint/b/j/m;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/m;->d()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/b/j/e;->b:Landroid/support/constraint/b/j/f;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/b/j/e;->c:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
