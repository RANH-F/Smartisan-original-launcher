.class Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/g$1;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/e$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/g$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/g$1;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/component/reward/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download video file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", preload: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g$1;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;->a:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RewardVideoLoadManager"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g$1;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g$1;

    iget-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;->a:Z

    if-nez v0, :cond_1

    .line 5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g$1;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoCached()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g$1;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    :cond_2
    :goto_0
    return-void
.end method
