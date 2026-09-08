.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;
.super Lcom/bytedance/sdk/openadsdk/core/a/a;
.source "ExpressClickCreativeListener.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/e/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/e/e;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->v:I

    const/4 v2, 0x0

    .line 2
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->w:I

    .line 3
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->x:I

    .line 4
    invoke-static/range {p9 .. p9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;)[I

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 5
    array-length v5, v3

    if-ne v5, v4, :cond_0

    .line 6
    aget v5, v3, v2

    .line 7
    aget v6, v3, v1

    .line 8
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    move/from16 v8, p1

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v5

    .line 9
    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    move/from16 v9, p2

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v6

    .line 10
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    move/from16 v10, p3

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v5

    .line 11
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    move/from16 v11, p4

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v6

    goto :goto_0

    :cond_0
    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move v5, v2

    move v6, v5

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    :goto_0
    new-array v11, v4, [I

    new-array v4, v4, [I

    .line 12
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v12, :cond_1

    .line 13
    iget-wide v13, v12, Lcom/bytedance/sdk/openadsdk/core/e/i;->e:J

    .line 14
    iget-wide v1, v12, Lcom/bytedance/sdk/openadsdk/core/e/i;->f:J

    .line 15
    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget v12, v12, Lcom/bytedance/sdk/openadsdk/core/e/i;->g:I

    int-to-float v12, v12

    invoke-static {v15, v12}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v12, v5

    const/4 v5, 0x0

    aput v12, v11, v5

    .line 16
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget v12, v12, Lcom/bytedance/sdk/openadsdk/core/e/i;->h:I

    int-to-float v12, v12

    invoke-static {v5, v12}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aput v5, v11, v6

    .line 17
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget v6, v6, Lcom/bytedance/sdk/openadsdk/core/e/i;->i:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 18
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget v12, v12, Lcom/bytedance/sdk/openadsdk/core/e/i;->j:I

    int-to-float v12, v12

    invoke-static {v6, v12}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    const/4 v12, 0x0

    aput v5, v4, v12

    const/4 v5, 0x1

    aput v6, v4, v5

    goto :goto_1

    :cond_1
    move-wide/from16 v13, p5

    move-wide/from16 v1, p7

    .line 19
    :goto_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;-><init>()V

    .line 20
    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v5

    .line 21
    invoke-virtual {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v5

    .line 22
    invoke-virtual {v5, v9}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v5

    .line 23
    invoke-virtual {v5, v10}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v5

    .line 24
    invoke-virtual {v5, v13, v14}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v5

    .line 25
    invoke-virtual {v5, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->b([I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v1

    .line 28
    invoke-static/range {p9 .. p9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->c([I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->d([I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->v:I

    .line 30
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->w:I

    .line 31
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->x:I

    .line 32
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->a()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v1

    return-object v1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-void
.end method
