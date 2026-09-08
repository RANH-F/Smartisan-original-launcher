.class public Landroid/support/constraint/b/j/k;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 1
    sput-object v0, Landroid/support/constraint/b/j/k;->a:[Z

    return-void
.end method

.method static a(ILandroid/support/constraint/b/j/f;)V
    .locals 16

    move-object/from16 v0, p1

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->I()V

    .line 30
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    .line 31
    iget-object v2, v0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {v2}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v2

    .line 32
    iget-object v3, v0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    invoke-virtual {v3}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v3

    .line 33
    iget-object v4, v0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    invoke-virtual {v4}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v4

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    .line 34
    :goto_0
    iget-object v9, v0, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v9, v9, v7

    sget-object v10, Landroid/support/constraint/b/j/f$b;->c:Landroid/support/constraint/b/j/f$b;

    if-ne v9, v10, :cond_1

    .line 35
    invoke-static {v0, v7}, Landroid/support/constraint/b/j/k;->a(Landroid/support/constraint/b/j/f;I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    .line 36
    :goto_1
    iget v10, v1, Landroid/support/constraint/b/j/m;->h:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_13

    iget v10, v3, Landroid/support/constraint/b/j/m;->h:I

    if-eq v10, v12, :cond_13

    .line 37
    iget-object v10, v0, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v10, v10, v7

    sget-object v7, Landroid/support/constraint/b/j/f$b;->a:Landroid/support/constraint/b/j/f$b;

    if-eq v10, v7, :cond_b

    if-eqz v9, :cond_2

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->r()I

    move-result v7

    if-ne v7, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v9, :cond_13

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->s()I

    move-result v7

    .line 40
    invoke-virtual {v1, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 41
    invoke-virtual {v3, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 42
    iget-object v9, v0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget-object v9, v9, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v9, :cond_4

    iget-object v9, v0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget-object v9, v9, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v9, :cond_4

    if-eqz v6, :cond_3

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto/16 :goto_3

    .line 44
    :cond_3
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    goto/16 :goto_3

    .line 45
    :cond_4
    iget-object v9, v0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget-object v9, v9, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v9, :cond_6

    iget-object v9, v0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget-object v9, v9, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v9, :cond_6

    if-eqz v6, :cond_5

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto/16 :goto_3

    .line 47
    :cond_5
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    goto/16 :goto_3

    .line 48
    :cond_6
    iget-object v9, v0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget-object v9, v9, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v9, :cond_8

    iget-object v9, v0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget-object v9, v9, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v9, :cond_8

    if-eqz v6, :cond_7

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto/16 :goto_3

    :cond_7
    neg-int v7, v7

    .line 50
    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    goto/16 :goto_3

    .line 51
    :cond_8
    iget-object v9, v0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget-object v9, v9, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v9, :cond_13

    iget-object v9, v0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget-object v9, v9, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v9, :cond_13

    if-eqz v6, :cond_9

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/support/constraint/b/j/o;->a(Landroid/support/constraint/b/j/o;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/constraint/b/j/o;->a(Landroid/support/constraint/b/j/o;)V

    .line 54
    :cond_9
    iget v9, v0, Landroid/support/constraint/b/j/f;->G:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_a

    .line 55
    invoke-virtual {v1, v11}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 56
    invoke-virtual {v3, v11}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 57
    invoke-virtual {v1, v3, v13}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    .line 58
    invoke-virtual {v3, v1, v13}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    goto/16 :goto_3

    .line 59
    :cond_a
    invoke-virtual {v1, v15}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 60
    invoke-virtual {v3, v15}, Landroid/support/constraint/b/j/m;->b(I)V

    neg-int v9, v7

    int-to-float v9, v9

    .line 61
    invoke-virtual {v1, v3, v9}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    int-to-float v9, v7

    .line 62
    invoke-virtual {v3, v1, v9}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    .line 63
    invoke-virtual {v0, v7}, Landroid/support/constraint/b/j/f;->o(I)V

    goto/16 :goto_3

    .line 64
    :cond_b
    :goto_2
    iget-object v7, v0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v7, :cond_d

    iget-object v7, v0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v7, :cond_d

    .line 65
    invoke-virtual {v1, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 66
    invoke-virtual {v3, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    if-eqz v6, :cond_c

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto/16 :goto_3

    .line 68
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->s()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    goto/16 :goto_3

    .line 69
    :cond_d
    iget-object v7, v0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v7, :cond_f

    iget-object v7, v0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v7, :cond_f

    .line 70
    invoke-virtual {v1, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 71
    invoke-virtual {v3, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    if-eqz v6, :cond_e

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto/16 :goto_3

    .line 73
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->s()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    goto :goto_3

    .line 74
    :cond_f
    iget-object v7, v0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v7, :cond_11

    iget-object v7, v0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v7, :cond_11

    .line 75
    invoke-virtual {v1, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 76
    invoke-virtual {v3, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->s()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    if-eqz v6, :cond_10

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto :goto_3

    .line 79
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->s()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    goto :goto_3

    .line 80
    :cond_11
    iget-object v7, v0, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v7, :cond_13

    iget-object v7, v0, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v7, :cond_13

    .line 81
    invoke-virtual {v1, v15}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 82
    invoke-virtual {v3, v15}, Landroid/support/constraint/b/j/m;->b(I)V

    if-eqz v6, :cond_12

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/constraint/b/j/o;->a(Landroid/support/constraint/b/j/o;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/b/j/o;->a(Landroid/support/constraint/b/j/o;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto :goto_3

    .line 87
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->s()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->s()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    .line 89
    :cond_13
    :goto_3
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v1, v1, v8

    sget-object v3, Landroid/support/constraint/b/j/f$b;->c:Landroid/support/constraint/b/j/f$b;

    if-ne v1, v3, :cond_14

    .line 90
    invoke-static {v0, v8}, Landroid/support/constraint/b/j/k;->a(Landroid/support/constraint/b/j/f;I)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v8

    goto :goto_4

    :cond_14
    const/4 v1, 0x0

    .line 91
    :goto_4
    iget v3, v2, Landroid/support/constraint/b/j/m;->h:I

    if-eq v3, v12, :cond_26

    iget v3, v4, Landroid/support/constraint/b/j/m;->h:I

    if-eq v3, v12, :cond_26

    .line 92
    iget-object v3, v0, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v3, v3, v8

    sget-object v7, Landroid/support/constraint/b/j/f$b;->a:Landroid/support/constraint/b/j/f$b;

    if-eq v3, v7, :cond_1e

    if-eqz v1, :cond_15

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->r()I

    move-result v3

    if-ne v3, v5, :cond_15

    goto/16 :goto_5

    :cond_15
    if-eqz v1, :cond_26

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->i()I

    move-result v1

    .line 95
    invoke-virtual {v2, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 96
    invoke-virtual {v4, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 97
    iget-object v3, v0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget-object v3, v3, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v3, :cond_17

    iget-object v3, v0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget-object v3, v3, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v3, :cond_17

    if-eqz v6, :cond_16

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto/16 :goto_a

    .line 99
    :cond_16
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    goto/16 :goto_a

    .line 100
    :cond_17
    iget-object v3, v0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget-object v3, v3, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget-object v3, v3, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v3, :cond_19

    if-eqz v6, :cond_18

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto/16 :goto_a

    .line 102
    :cond_18
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    goto/16 :goto_a

    .line 103
    :cond_19
    iget-object v3, v0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget-object v3, v3, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v3, :cond_1b

    iget-object v3, v0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget-object v3, v3, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v3, :cond_1b

    if-eqz v6, :cond_1a

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto/16 :goto_a

    :cond_1a
    neg-int v0, v1

    .line 105
    invoke-virtual {v2, v4, v0}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    goto/16 :goto_a

    .line 106
    :cond_1b
    iget-object v3, v0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget-object v3, v3, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v3, :cond_26

    iget-object v3, v0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget-object v3, v3, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v3, :cond_26

    if-eqz v6, :cond_1c

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/constraint/b/j/o;->a(Landroid/support/constraint/b/j/o;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/constraint/b/j/o;->a(Landroid/support/constraint/b/j/o;)V

    .line 109
    :cond_1c
    iget v3, v0, Landroid/support/constraint/b/j/f;->G:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_1d

    .line 110
    invoke-virtual {v2, v11}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 111
    invoke-virtual {v4, v11}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 112
    invoke-virtual {v2, v4, v13}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    .line 113
    invoke-virtual {v4, v2, v13}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    goto/16 :goto_a

    .line 114
    :cond_1d
    invoke-virtual {v2, v15}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 115
    invoke-virtual {v4, v15}, Landroid/support/constraint/b/j/m;->b(I)V

    neg-int v3, v1

    int-to-float v3, v3

    .line 116
    invoke-virtual {v2, v4, v3}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    int-to-float v3, v1

    .line 117
    invoke-virtual {v4, v2, v3}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/support/constraint/b/j/f;->g(I)V

    .line 119
    iget v1, v0, Landroid/support/constraint/b/j/f;->Q:I

    if-lez v1, :cond_26

    .line 120
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->w:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/b/j/f;->Q:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    goto/16 :goto_a

    .line 121
    :cond_1e
    :goto_5
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v1, :cond_20

    iget-object v1, v0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v1, :cond_20

    .line 122
    invoke-virtual {v2, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 123
    invoke-virtual {v4, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    if-eqz v6, :cond_1f

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto :goto_6

    .line 125
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->i()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    .line 126
    :goto_6
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->w:Landroid/support/constraint/b/j/e;

    iget-object v3, v1, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v3, :cond_26

    .line 127
    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 128
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->w:Landroid/support/constraint/b/j/e;

    .line 129
    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/b/j/f;->Q:I

    neg-int v0, v0

    .line 130
    invoke-virtual {v2, v8, v1, v0}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    goto/16 :goto_a

    .line 131
    :cond_20
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v1, :cond_22

    .line 132
    invoke-virtual {v2, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 133
    invoke-virtual {v4, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    if-eqz v6, :cond_21

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto :goto_7

    .line 135
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->i()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    .line 136
    :goto_7
    iget v1, v0, Landroid/support/constraint/b/j/f;->Q:I

    if-lez v1, :cond_26

    .line 137
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->w:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/b/j/f;->Q:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    goto/16 :goto_a

    .line 138
    :cond_22
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-nez v1, :cond_24

    iget-object v1, v0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v1, :cond_24

    .line 139
    invoke-virtual {v2, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 140
    invoke-virtual {v4, v8}, Landroid/support/constraint/b/j/m;->b(I)V

    if-eqz v6, :cond_23

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    goto :goto_8

    .line 142
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->i()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;I)V

    .line 143
    :goto_8
    iget v1, v0, Landroid/support/constraint/b/j/f;->Q:I

    if-lez v1, :cond_26

    .line 144
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->w:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/b/j/f;->Q:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    goto :goto_a

    .line 145
    :cond_24
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v1, :cond_26

    .line 146
    invoke-virtual {v2, v15}, Landroid/support/constraint/b/j/m;->b(I)V

    .line 147
    invoke-virtual {v4, v15}, Landroid/support/constraint/b/j/m;->b(I)V

    if-eqz v6, :cond_25

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;ILandroid/support/constraint/b/j/n;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->l()Landroid/support/constraint/b/j/n;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/constraint/b/j/o;->a(Landroid/support/constraint/b/j/o;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->m()Landroid/support/constraint/b/j/n;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/constraint/b/j/o;->a(Landroid/support/constraint/b/j/o;)V

    goto :goto_9

    .line 152
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->i()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/b/j/f;->i()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/b/j/m;->b(Landroid/support/constraint/b/j/m;F)V

    .line 154
    :goto_9
    iget v1, v0, Landroid/support/constraint/b/j/f;->Q:I

    if-lez v1, :cond_26

    .line 155
    iget-object v1, v0, Landroid/support/constraint/b/j/f;->w:Landroid/support/constraint/b/j/e;

    invoke-virtual {v1}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/b/j/f;->Q:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/b/j/m;->a(ILandroid/support/constraint/b/j/m;I)V

    :cond_26
    :goto_a
    return-void
.end method

.method static a(Landroid/support/constraint/b/j/f;II)V
    .locals 4

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 242
    iget-object v2, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v2

    .line 243
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object v3

    iget-object v3, v3, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {v3}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/b/j/m;->f:Landroid/support/constraint/b/j/m;

    .line 244
    iget-object v2, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v2

    int-to-float p2, p2

    iput p2, v2, Landroid/support/constraint/b/j/m;->g:F

    .line 245
    iget-object p2, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p2

    const/4 v2, 0x1

    iput v2, p2, Landroid/support/constraint/b/j/o;->b:I

    .line 246
    iget-object p2, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p2

    iget-object v3, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v0, v3, v0

    .line 247
    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v0

    iput-object v0, p2, Landroid/support/constraint/b/j/m;->f:Landroid/support/constraint/b/j/m;

    .line 248
    iget-object p2, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p2

    .line 249
    invoke-virtual {p0, p1}, Landroid/support/constraint/b/j/f;->d(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p2, Landroid/support/constraint/b/j/m;->g:F

    .line 250
    iget-object p0, p0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object p0

    iput v2, p0, Landroid/support/constraint/b/j/o;->b:I

    return-void
.end method

.method static a(Landroid/support/constraint/b/j/g;Landroid/support/constraint/b/e;Landroid/support/constraint/b/j/f;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/b/j/f$b;->b:Landroid/support/constraint/b/j/f$b;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/b/j/f$b;->d:Landroid/support/constraint/b/j/f$b;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p2, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget v0, v0, Landroid/support/constraint/b/j/e;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->s()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget v2, v2, Landroid/support/constraint/b/j/e;->e:I

    sub-int/2addr v1, v2

    .line 4
    iget-object v2, p2, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v2}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    .line 5
    iget-object v2, p2, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v2}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    .line 6
    iget-object v2, p2, Landroid/support/constraint/b/j/f;->s:Landroid/support/constraint/b/j/e;

    iget-object v2, v2, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/b/e;->a(Landroid/support/constraint/b/i;I)V

    .line 7
    iget-object v2, p2, Landroid/support/constraint/b/j/f;->u:Landroid/support/constraint/b/j/e;

    iget-object v2, v2, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/b/e;->a(Landroid/support/constraint/b/i;I)V

    .line 8
    iput v3, p2, Landroid/support/constraint/b/j/f;->a:I

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/b/j/f;->a(II)V

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/b/j/f$b;->b:Landroid/support/constraint/b/j/f$b;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/b/j/f$b;->d:Landroid/support/constraint/b/j/f$b;

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p2, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget v0, v0, Landroid/support/constraint/b/j/e;->e:I

    .line 12
    invoke-virtual {p0}, Landroid/support/constraint/b/j/f;->i()I

    move-result p0

    iget-object v1, p2, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget v1, v1, Landroid/support/constraint/b/j/e;->e:I

    sub-int/2addr p0, v1

    .line 13
    iget-object v1, p2, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v1}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    .line 14
    iget-object v1, p2, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v1}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    .line 15
    iget-object v1, p2, Landroid/support/constraint/b/j/f;->t:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/b/e;->a(Landroid/support/constraint/b/i;I)V

    .line 16
    iget-object v1, p2, Landroid/support/constraint/b/j/f;->v:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    invoke-virtual {p1, v1, p0}, Landroid/support/constraint/b/e;->a(Landroid/support/constraint/b/i;I)V

    .line 17
    iget v1, p2, Landroid/support/constraint/b/j/f;->Q:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/b/j/f;->r()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 18
    :cond_1
    iget-object v1, p2, Landroid/support/constraint/b/j/f;->w:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1, v1}, Landroid/support/constraint/b/e;->a(Ljava/lang/Object;)Landroid/support/constraint/b/i;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    .line 19
    iget-object v1, p2, Landroid/support/constraint/b/j/f;->w:Landroid/support/constraint/b/j/e;

    iget-object v1, v1, Landroid/support/constraint/b/j/e;->i:Landroid/support/constraint/b/i;

    iget v2, p2, Landroid/support/constraint/b/j/f;->Q:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/support/constraint/b/e;->a(Landroid/support/constraint/b/i;I)V

    .line 20
    :cond_2
    iput v3, p2, Landroid/support/constraint/b/j/f;->b:I

    .line 21
    invoke-virtual {p2, v0, p0}, Landroid/support/constraint/b/j/f;->e(II)V

    :cond_3
    return-void
.end method

.method private static a(Landroid/support/constraint/b/j/f;I)Z
    .locals 4

    .line 22
    iget-object v0, p0, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v1, v0, p1

    sget-object v2, Landroid/support/constraint/b/j/f$b;->c:Landroid/support/constraint/b/j/f$b;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    .line 23
    :cond_0
    iget v1, p0, Landroid/support/constraint/b/j/f;->G:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 24
    :goto_0
    aget-object p0, v0, v2

    sget-object p1, Landroid/support/constraint/b/j/f$b;->c:Landroid/support/constraint/b/j/f$b;

    if-ne p0, p1, :cond_2

    :cond_2
    return v3

    :cond_3
    if-nez p1, :cond_6

    .line 25
    iget p1, p0, Landroid/support/constraint/b/j/f;->e:I

    if-eqz p1, :cond_4

    return v3

    .line 26
    :cond_4
    iget p1, p0, Landroid/support/constraint/b/j/f;->h:I

    if-nez p1, :cond_5

    iget p0, p0, Landroid/support/constraint/b/j/f;->i:I

    if-eqz p0, :cond_8

    :cond_5
    return v3

    .line 27
    :cond_6
    iget p1, p0, Landroid/support/constraint/b/j/f;->f:I

    if-eqz p1, :cond_7

    return v3

    .line 28
    :cond_7
    iget p1, p0, Landroid/support/constraint/b/j/f;->k:I

    if-nez p1, :cond_9

    iget p0, p0, Landroid/support/constraint/b/j/f;->l:I

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    return v2

    :cond_9
    :goto_1
    return v3
.end method

.method static a(Landroid/support/constraint/b/j/g;Landroid/support/constraint/b/e;IILandroid/support/constraint/b/j/d;)Z
    .locals 24

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 156
    iget-object v3, v2, Landroid/support/constraint/b/j/d;->a:Landroid/support/constraint/b/j/f;

    .line 157
    iget-object v4, v2, Landroid/support/constraint/b/j/d;->c:Landroid/support/constraint/b/j/f;

    .line 158
    iget-object v5, v2, Landroid/support/constraint/b/j/d;->b:Landroid/support/constraint/b/j/f;

    .line 159
    iget-object v6, v2, Landroid/support/constraint/b/j/d;->d:Landroid/support/constraint/b/j/f;

    .line 160
    iget-object v7, v2, Landroid/support/constraint/b/j/d;->e:Landroid/support/constraint/b/j/f;

    .line 161
    iget v8, v2, Landroid/support/constraint/b/j/d;->k:F

    .line 162
    iget-object v9, v2, Landroid/support/constraint/b/j/d;->f:Landroid/support/constraint/b/j/f;

    .line 163
    iget-object v2, v2, Landroid/support/constraint/b/j/d;->g:Landroid/support/constraint/b/j/f;

    move-object/from16 v9, p0

    .line 164
    iget-object v2, v9, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v2, v2, v1

    sget-object v9, Landroid/support/constraint/b/j/f$b;->b:Landroid/support/constraint/b/j/f$b;

    const/4 v2, 0x2

    const/4 v10, 0x1

    if-nez v1, :cond_3

    .line 165
    iget v11, v7, Landroid/support/constraint/b/j/f;->e0:I

    if-nez v11, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 166
    :goto_0
    iget v12, v7, Landroid/support/constraint/b/j/f;->e0:I

    if-ne v12, v10, :cond_1

    move v12, v10

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 167
    :goto_1
    iget v7, v7, Landroid/support/constraint/b/j/f;->e0:I

    if-ne v7, v2, :cond_2

    :goto_2
    move v2, v10

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    goto :goto_5

    .line 168
    :cond_3
    iget v11, v7, Landroid/support/constraint/b/j/f;->f0:I

    if-nez v11, :cond_4

    move v11, v10

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 169
    :goto_3
    iget v12, v7, Landroid/support/constraint/b/j/f;->f0:I

    if-ne v12, v10, :cond_5

    move v12, v10

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 170
    :goto_4
    iget v7, v7, Landroid/support/constraint/b/j/f;->f0:I

    if-ne v7, v2, :cond_2

    goto :goto_2

    :goto_5
    move-object v14, v3

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_6
    const/16 v7, 0x8

    if-nez v13, :cond_14

    .line 171
    invoke-virtual {v14}, Landroid/support/constraint/b/j/f;->r()I

    move-result v9

    if-eq v9, v7, :cond_9

    add-int/lit8 v15, v15, 0x1

    if-nez v1, :cond_6

    .line 172
    invoke-virtual {v14}, Landroid/support/constraint/b/j/f;->s()I

    move-result v9

    goto :goto_7

    .line 173
    :cond_6
    invoke-virtual {v14}, Landroid/support/constraint/b/j/f;->i()I

    move-result v9

    :goto_7
    int-to-float v9, v9

    add-float v16, v16, v9

    if-eq v14, v5, :cond_7

    .line 174
    iget-object v9, v14, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/b/j/e;->b()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    :cond_7
    if-eq v14, v6, :cond_8

    .line 175
    iget-object v9, v14, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    add-int/lit8 v19, p3, 0x1

    aget-object v9, v9, v19

    invoke-virtual {v9}, Landroid/support/constraint/b/j/e;->b()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    .line 176
    :cond_8
    iget-object v9, v14, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/b/j/e;->b()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 177
    iget-object v9, v14, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    add-int/lit8 v19, p3, 0x1

    aget-object v9, v9, v19

    invoke-virtual {v9}, Landroid/support/constraint/b/j/e;->b()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 178
    :cond_9
    iget-object v9, v14, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v9, v9, p3

    .line 179
    invoke-virtual {v14}, Landroid/support/constraint/b/j/f;->r()I

    move-result v9

    if-eq v9, v7, :cond_10

    iget-object v7, v14, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v7, v7, v1

    sget-object v9, Landroid/support/constraint/b/j/f$b;->c:Landroid/support/constraint/b/j/f$b;

    if-ne v7, v9, :cond_10

    add-int/lit8 v10, v10, 0x1

    if-nez v1, :cond_c

    .line 180
    iget v7, v14, Landroid/support/constraint/b/j/f;->e:I

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    return v7

    :cond_a
    const/4 v7, 0x0

    .line 181
    iget v9, v14, Landroid/support/constraint/b/j/f;->h:I

    if-nez v9, :cond_b

    iget v9, v14, Landroid/support/constraint/b/j/f;->i:I

    if-eqz v9, :cond_e

    :cond_b
    return v7

    :cond_c
    const/4 v7, 0x0

    .line 182
    iget v9, v14, Landroid/support/constraint/b/j/f;->f:I

    if-eqz v9, :cond_d

    return v7

    .line 183
    :cond_d
    iget v9, v14, Landroid/support/constraint/b/j/f;->k:I

    if-nez v9, :cond_f

    iget v9, v14, Landroid/support/constraint/b/j/f;->l:I

    if-eqz v9, :cond_e

    goto :goto_8

    .line 184
    :cond_e
    iget v9, v14, Landroid/support/constraint/b/j/f;->G:F

    const/16 v18, 0x0

    cmpl-float v9, v9, v18

    if-eqz v9, :cond_10

    :cond_f
    :goto_8
    return v7

    .line 185
    :cond_10
    iget-object v7, v14, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    add-int/lit8 v9, p3, 0x1

    aget-object v7, v7, v9

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v7, :cond_12

    .line 186
    iget-object v7, v7, Landroid/support/constraint/b/j/e;->b:Landroid/support/constraint/b/j/f;

    .line 187
    iget-object v9, v7, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    move-object/from16 v20, v7

    aget-object v7, v9, p3

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    if-eqz v7, :cond_12

    aget-object v7, v9, p3

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->d:Landroid/support/constraint/b/j/e;

    iget-object v7, v7, Landroid/support/constraint/b/j/e;->b:Landroid/support/constraint/b/j/f;

    if-eq v7, v14, :cond_11

    goto :goto_9

    :cond_11
    move-object/from16 v19, v20

    goto :goto_a

    :cond_12
    :goto_9
    const/16 v19, 0x0

    :goto_a
    if-eqz v19, :cond_13

    move-object/from16 v14, v19

    goto/16 :goto_6

    :cond_13
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 188
    :cond_14
    iget-object v9, v3, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v9

    .line 189
    iget-object v13, v4, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    add-int/lit8 v19, p3, 0x1

    aget-object v13, v13, v19

    invoke-virtual {v13}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v13

    .line 190
    iget-object v7, v9, Landroid/support/constraint/b/j/m;->d:Landroid/support/constraint/b/j/m;

    if-eqz v7, :cond_3c

    move-object/from16 v21, v3

    iget-object v3, v13, Landroid/support/constraint/b/j/m;->d:Landroid/support/constraint/b/j/m;

    if-nez v3, :cond_15

    goto/16 :goto_20

    .line 191
    :cond_15
    iget v7, v7, Landroid/support/constraint/b/j/o;->b:I

    const/4 v0, 0x1

    if-ne v7, v0, :cond_3b

    iget v3, v3, Landroid/support/constraint/b/j/o;->b:I

    if-eq v3, v0, :cond_16

    goto/16 :goto_1f

    :cond_16
    if-lez v10, :cond_17

    if-eq v10, v15, :cond_17

    const/4 v0, 0x0

    return v0

    :cond_17
    if-nez v2, :cond_19

    if-nez v11, :cond_19

    if-eqz v12, :cond_18

    goto :goto_b

    :cond_18
    const/4 v7, 0x0

    goto :goto_d

    :cond_19
    :goto_b
    if-eqz v5, :cond_1a

    .line 192
    iget-object v0, v5, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->b()I

    move-result v0

    int-to-float v7, v0

    goto :goto_c

    :cond_1a
    const/4 v7, 0x0

    :goto_c
    if-eqz v6, :cond_1b

    .line 193
    iget-object v0, v6, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v0, v0, v19

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v7, v0

    .line 194
    :cond_1b
    :goto_d
    iget-object v0, v9, Landroid/support/constraint/b/j/m;->d:Landroid/support/constraint/b/j/m;

    iget v0, v0, Landroid/support/constraint/b/j/m;->g:F

    .line 195
    iget-object v3, v13, Landroid/support/constraint/b/j/m;->d:Landroid/support/constraint/b/j/m;

    iget v3, v3, Landroid/support/constraint/b/j/m;->g:F

    cmpg-float v6, v0, v3

    if-gez v6, :cond_1c

    sub-float/2addr v3, v0

    goto :goto_e

    :cond_1c
    sub-float v3, v0, v3

    :goto_e
    sub-float v3, v3, v16

    const-wide/16 v22, 0x1

    if-lez v10, :cond_25

    if-ne v10, v15, :cond_25

    .line 196
    invoke-virtual {v14}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v14}, Landroid/support/constraint/b/j/f;->k()Landroid/support/constraint/b/j/f;

    move-result-object v2

    iget-object v2, v2, Landroid/support/constraint/b/j/f;->C:[Landroid/support/constraint/b/j/f$b;

    aget-object v2, v2, v1

    sget-object v5, Landroid/support/constraint/b/j/f$b;->b:Landroid/support/constraint/b/j/f$b;

    if-ne v2, v5, :cond_1d

    const/4 v2, 0x0

    return v2

    :cond_1d
    add-float v3, v3, v16

    sub-float v3, v3, v17

    move v2, v0

    move-object/from16 v0, v21

    :goto_f
    if-eqz v0, :cond_24

    .line 197
    sget-object v5, Landroid/support/constraint/b/e;->q:Landroid/support/constraint/b/f;

    if-eqz v5, :cond_1e

    .line 198
    iget-wide v6, v5, Landroid/support/constraint/b/f;->z:J

    sub-long v6, v6, v22

    iput-wide v6, v5, Landroid/support/constraint/b/f;->z:J

    .line 199
    iget-wide v6, v5, Landroid/support/constraint/b/f;->r:J

    add-long v6, v6, v22

    iput-wide v6, v5, Landroid/support/constraint/b/f;->r:J

    .line 200
    iget-wide v6, v5, Landroid/support/constraint/b/f;->x:J

    add-long v6, v6, v22

    iput-wide v6, v5, Landroid/support/constraint/b/f;->x:J

    .line 201
    :cond_1e
    iget-object v5, v0, Landroid/support/constraint/b/j/f;->i0:[Landroid/support/constraint/b/j/f;

    aget-object v5, v5, v1

    if-nez v5, :cond_20

    if-ne v0, v4, :cond_1f

    goto :goto_10

    :cond_1f
    move-object/from16 v13, p1

    goto :goto_12

    :cond_20
    :goto_10
    int-to-float v6, v10

    div-float v6, v3, v6

    const/4 v7, 0x0

    cmpl-float v11, v8, v7

    if-lez v11, :cond_22

    .line 202
    iget-object v6, v0, Landroid/support/constraint/b/j/f;->g0:[F

    aget v7, v6, v1

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v7, v7, v11

    if-nez v7, :cond_21

    const/4 v7, 0x0

    goto :goto_11

    .line 203
    :cond_21
    aget v6, v6, v1

    mul-float/2addr v6, v3

    div-float/2addr v6, v8

    :cond_22
    move v7, v6

    .line 204
    :goto_11
    invoke-virtual {v0}, Landroid/support/constraint/b/j/f;->r()I

    move-result v6

    const/16 v11, 0x8

    if-ne v6, v11, :cond_23

    const/4 v7, 0x0

    .line 205
    :cond_23
    iget-object v6, v0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/b/j/e;->b()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    .line 206
    iget-object v6, v0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v6

    iget-object v11, v9, Landroid/support/constraint/b/j/m;->f:Landroid/support/constraint/b/j/m;

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;F)V

    .line 207
    iget-object v6, v0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v6, v6, v19

    invoke-virtual {v6}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v6

    iget-object v11, v9, Landroid/support/constraint/b/j/m;->f:Landroid/support/constraint/b/j/m;

    add-float/2addr v2, v7

    invoke-virtual {v6, v11, v2}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;F)V

    .line 208
    iget-object v6, v0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v6

    move-object/from16 v13, p1

    invoke-virtual {v6, v13}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/e;)V

    .line 209
    iget-object v6, v0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v6, v6, v19

    invoke-virtual {v6}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/e;)V

    .line 210
    iget-object v0, v0, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v0, v0, v19

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    :goto_12
    move-object v0, v5

    goto/16 :goto_f

    :cond_24
    const/4 v0, 0x1

    return v0

    :cond_25
    move-object/from16 v13, p1

    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_26

    const/4 v2, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_26
    if-eqz v2, :cond_2b

    sub-float/2addr v3, v7

    move-object/from16 v2, v21

    .line 211
    invoke-virtual {v2, v1}, Landroid/support/constraint/b/j/f;->b(I)F

    move-result v5

    mul-float/2addr v3, v5

    add-float/2addr v0, v3

    :goto_13
    if-eqz v2, :cond_2c

    .line 212
    sget-object v3, Landroid/support/constraint/b/e;->q:Landroid/support/constraint/b/f;

    if-eqz v3, :cond_27

    .line 213
    iget-wide v5, v3, Landroid/support/constraint/b/f;->z:J

    sub-long v5, v5, v22

    iput-wide v5, v3, Landroid/support/constraint/b/f;->z:J

    .line 214
    iget-wide v5, v3, Landroid/support/constraint/b/f;->r:J

    add-long v5, v5, v22

    iput-wide v5, v3, Landroid/support/constraint/b/f;->r:J

    .line 215
    iget-wide v5, v3, Landroid/support/constraint/b/f;->x:J

    add-long v5, v5, v22

    iput-wide v5, v3, Landroid/support/constraint/b/f;->x:J

    .line 216
    :cond_27
    iget-object v3, v2, Landroid/support/constraint/b/j/f;->i0:[Landroid/support/constraint/b/j/f;

    aget-object v3, v3, v1

    if-nez v3, :cond_28

    if-ne v2, v4, :cond_2a

    :cond_28
    if-nez v1, :cond_29

    .line 217
    invoke-virtual {v2}, Landroid/support/constraint/b/j/f;->s()I

    move-result v5

    goto :goto_14

    .line 218
    :cond_29
    invoke-virtual {v2}, Landroid/support/constraint/b/j/f;->i()I

    move-result v5

    :goto_14
    int-to-float v5, v5

    .line 219
    iget-object v6, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/b/j/e;->b()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    .line 220
    iget-object v6, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v6

    iget-object v7, v9, Landroid/support/constraint/b/j/m;->f:Landroid/support/constraint/b/j/m;

    invoke-virtual {v6, v7, v0}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;F)V

    .line 221
    iget-object v6, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v6, v6, v19

    invoke-virtual {v6}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v6

    iget-object v7, v9, Landroid/support/constraint/b/j/m;->f:Landroid/support/constraint/b/j/m;

    add-float/2addr v0, v5

    invoke-virtual {v6, v7, v0}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;F)V

    .line 222
    iget-object v5, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/e;)V

    .line 223
    iget-object v5, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v5, v5, v19

    invoke-virtual {v5}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/e;)V

    .line 224
    iget-object v2, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Landroid/support/constraint/b/j/e;->b()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    :cond_2a
    move-object v2, v3

    goto :goto_13

    :cond_2b
    move-object/from16 v2, v21

    if-nez v11, :cond_2d

    if-eqz v12, :cond_2c

    goto :goto_15

    :cond_2c
    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_2d
    :goto_15
    if-eqz v11, :cond_2e

    :goto_16
    sub-float/2addr v3, v7

    goto :goto_17

    :cond_2e
    if-eqz v12, :cond_2f

    goto :goto_16

    :cond_2f
    :goto_17
    add-int/lit8 v6, v15, 0x1

    int-to-float v6, v6

    div-float v6, v3, v6

    if-eqz v12, :cond_31

    const/4 v7, 0x1

    if-le v15, v7, :cond_30

    add-int/lit8 v6, v15, -0x1

    int-to-float v6, v6

    goto :goto_18

    :cond_30
    const/high16 v6, 0x40000000    # 2.0f

    :goto_18
    div-float v6, v3, v6

    .line 225
    :cond_31
    invoke-virtual {v2}, Landroid/support/constraint/b/j/f;->r()I

    move-result v3

    const/16 v7, 0x8

    if-eq v3, v7, :cond_32

    add-float v3, v0, v6

    goto :goto_19

    :cond_32
    move v3, v0

    :goto_19
    if-eqz v12, :cond_33

    const/4 v7, 0x1

    if-le v15, v7, :cond_33

    .line 226
    iget-object v3, v5, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/b/j/e;->b()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    :cond_33
    if-eqz v11, :cond_34

    if-eqz v5, :cond_34

    .line 227
    iget-object v0, v5, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    :cond_34
    :goto_1a
    if-eqz v2, :cond_2c

    .line 228
    sget-object v0, Landroid/support/constraint/b/e;->q:Landroid/support/constraint/b/f;

    if-eqz v0, :cond_35

    .line 229
    iget-wide v7, v0, Landroid/support/constraint/b/f;->z:J

    sub-long v7, v7, v22

    iput-wide v7, v0, Landroid/support/constraint/b/f;->z:J

    .line 230
    iget-wide v7, v0, Landroid/support/constraint/b/f;->r:J

    add-long v7, v7, v22

    iput-wide v7, v0, Landroid/support/constraint/b/f;->r:J

    .line 231
    iget-wide v7, v0, Landroid/support/constraint/b/f;->x:J

    add-long v7, v7, v22

    iput-wide v7, v0, Landroid/support/constraint/b/f;->x:J

    .line 232
    :cond_35
    iget-object v0, v2, Landroid/support/constraint/b/j/f;->i0:[Landroid/support/constraint/b/j/f;

    aget-object v0, v0, v1

    if-nez v0, :cond_37

    if-ne v2, v4, :cond_36

    goto :goto_1b

    :cond_36
    const/16 v7, 0x8

    goto :goto_1d

    :cond_37
    :goto_1b
    if-nez v1, :cond_38

    .line 233
    invoke-virtual {v2}, Landroid/support/constraint/b/j/f;->s()I

    move-result v7

    goto :goto_1c

    .line 234
    :cond_38
    invoke-virtual {v2}, Landroid/support/constraint/b/j/f;->i()I

    move-result v7

    :goto_1c
    int-to-float v7, v7

    if-eq v2, v5, :cond_39

    .line 235
    iget-object v8, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/b/j/e;->b()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v3, v8

    .line 236
    :cond_39
    iget-object v8, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v8

    iget-object v10, v9, Landroid/support/constraint/b/j/m;->f:Landroid/support/constraint/b/j/m;

    invoke-virtual {v8, v10, v3}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;F)V

    .line 237
    iget-object v8, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v8, v8, v19

    invoke-virtual {v8}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v8

    iget-object v10, v9, Landroid/support/constraint/b/j/m;->f:Landroid/support/constraint/b/j/m;

    add-float v11, v3, v7

    invoke-virtual {v8, v10, v11}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/j/m;F)V

    .line 238
    iget-object v8, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/e;)V

    .line 239
    iget-object v8, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v8, v8, v19

    invoke-virtual {v8}, Landroid/support/constraint/b/j/e;->d()Landroid/support/constraint/b/j/m;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/support/constraint/b/j/m;->a(Landroid/support/constraint/b/e;)V

    .line 240
    iget-object v2, v2, Landroid/support/constraint/b/j/f;->A:[Landroid/support/constraint/b/j/e;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Landroid/support/constraint/b/j/e;->b()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v7, v2

    add-float/2addr v3, v7

    if-eqz v0, :cond_36

    .line 241
    invoke-virtual {v0}, Landroid/support/constraint/b/j/f;->r()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_3a

    add-float/2addr v3, v6

    :cond_3a
    :goto_1d
    move-object v2, v0

    goto/16 :goto_1a

    :goto_1e
    return v0

    :cond_3b
    :goto_1f
    const/4 v0, 0x0

    return v0

    :cond_3c
    :goto_20
    const/4 v0, 0x0

    return v0
.end method
