.class public Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
.super Ljava/lang/Object;
.source "TTCustomShadowBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:[I

.field private d:[F

.field private e:Landroid/graphics/LinearGradient;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ssxinmian8"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a:I

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ssxinxian3"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b:I

    const/16 v1, 0xa

    .line 6
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->f:I

    const/16 v1, 0x10

    .line 7
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->g:I

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a:I

    return-object p0
.end method

.method public a([I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->c:[I

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/widget/c;
    .locals 11

    .line 3
    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/widget/c;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->c:[I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->d:[F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->e:Landroid/graphics/LinearGradient;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->f:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->g:I

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/widget/c;-><init>(I[I[FILandroid/graphics/LinearGradient;IIII)V

    return-object v10
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b:I

    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->f:I

    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    return-object p0
.end method
