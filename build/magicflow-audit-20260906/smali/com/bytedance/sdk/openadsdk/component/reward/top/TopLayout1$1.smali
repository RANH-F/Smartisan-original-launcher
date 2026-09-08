.class Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;
.super Ljava/lang/Object;
.source "TopLayout1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;Z)Z

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_mute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_unmute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/b;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method
