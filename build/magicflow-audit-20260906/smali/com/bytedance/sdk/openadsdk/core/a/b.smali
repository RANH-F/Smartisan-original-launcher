.class public Lcom/bytedance/sdk/openadsdk/core/a/b;
.super Lcom/bytedance/sdk/openadsdk/core/a/c;
.source "ClickListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/a/b$a;
    }
.end annotation


# instance fields
.field protected b:Landroid/content/Context;

.field protected final c:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field protected final d:Ljava/lang/String;

.field protected final e:I

.field protected f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/bytedance/sdk/openadsdk/core/e/e;

.field protected i:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

.field protected j:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field protected k:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field protected l:Z

.field protected m:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field protected n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->l:Z

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:I

    return-void
.end method


# virtual methods
.method protected a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/e/e;
    .locals 1

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;-><init>()V

    .line 24
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p7, p8}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 30
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->b([I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 31
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 32
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->c([I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 33
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->d([I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->v:I

    .line 34
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->w:I

    .line 35
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->x:I

    .line 36
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/e/e$a;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/e$a;->a()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 19

    move-object/from16 v11, p0

    .line 8
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    .line 10
    :cond_0
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-wide v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/c;->t:J

    iget-wide v7, v11, Lcom/bytedance/sdk/openadsdk/core/a/c;->u:J

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v9, v1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v9, v0

    :goto_0
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    move-object v10, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 13
    invoke-virtual/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/e;

    .line 14
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->i:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    move-object/from16 v2, p1

    .line 15
    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/b$a;->a(Landroid/view/View;I)V

    .line 16
    :cond_4
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->o()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 17
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    .line 18
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:I

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v7, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Z)Z

    move-result v17

    if-nez v17, :cond_6

    .line 19
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/f;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return-void

    .line 22
    :cond_6
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v14, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v15, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/e;

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Ljava/util/Map;

    const-string v13, "click"

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    invoke-static/range {v12 .. v18}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/core/e/e;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->i:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->k:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Ljava/util/Map;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->l:Z

    return-void
.end method
