.class Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;
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
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/b;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
