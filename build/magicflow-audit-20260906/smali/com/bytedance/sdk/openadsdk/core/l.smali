.class public Lcom/bytedance/sdk/openadsdk/core/l;
.super Landroid/app/Dialog;
.source "InsertAdDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/l$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Lcom/bytedance/sdk/openadsdk/core/l$a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/l;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    if-nez p2, :cond_0

    const-string p2, "tt_wg_insert_dialog"

    .line 2
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->i:Z

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/l;)Lcom/bytedance/sdk/openadsdk/core/l$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/l;->h:Lcom/bytedance/sdk/openadsdk/core/l$a;

    return-object p0
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    const-string v3, "tt_insert_ad_layout"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->a:Landroid/view/View;

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    const-string v3, "tt_insert_ad_img"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Landroid/widget/ImageView;

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    const-string v3, "tt_insert_dislike_icon_img"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->d:Landroid/widget/ImageView;

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    const-string v3, "tt_insert_ad_logo"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->e:Landroid/widget/ImageView;

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    const-string v3, "tt_insert_ad_text"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->f:Landroid/widget/TextView;

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    const-string v3, "tt_insert_express_ad_fl"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/widget/FrameLayout;

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v1

    .line 16
    div-int/lit8 v2, v1, 0x3

    .line 17
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->i:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->e:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->i:Z

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->f:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->i:Z

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->i:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Landroid/content/Context;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->d:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;IIII)V

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/l;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/l$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/l$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(ZLcom/bytedance/sdk/openadsdk/core/l$a;)V
    .locals 2

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->i:Z

    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->h:Lcom/bytedance/sdk/openadsdk/core/l$a;

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/l;->a()V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->h:Lcom/bytedance/sdk/openadsdk/core/l$a;

    if-eqz p1, :cond_0

    .line 6
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/l;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/widget/FrameLayout;

    invoke-interface {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/l$a;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method
