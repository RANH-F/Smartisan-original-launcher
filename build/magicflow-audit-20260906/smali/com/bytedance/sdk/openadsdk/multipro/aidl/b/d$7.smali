.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;
.super Ljava/lang/Object;
.source "RewardVideoListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;->onRewardVerify(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;ZILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->d:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->a:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->b:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->d:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->d:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->a:Z

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->b:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onRewardVerify(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method
