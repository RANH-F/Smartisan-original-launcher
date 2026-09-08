.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
.super Ljava/lang/Object;
.source "TTRewardVideoAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RewardAdInteractionListener"
.end annotation


# virtual methods
.method public abstract onAdClose()V
.end method

.method public abstract onAdShow()V
.end method

.method public abstract onAdVideoBarClick()V
.end method

.method public abstract onRewardVerify(ZILjava/lang/String;)V
.end method

.method public abstract onSkippedVideo()V
.end method

.method public abstract onVideoComplete()V
.end method

.method public abstract onVideoError()V
.end method
