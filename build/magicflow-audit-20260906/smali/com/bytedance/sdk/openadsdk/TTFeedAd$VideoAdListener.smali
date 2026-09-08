.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;
.super Ljava/lang/Object;
.source "TTFeedAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTFeedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoAdListener"
.end annotation


# virtual methods
.method public abstract onProgressUpdate(JJ)V
.end method

.method public abstract onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
.end method

.method public abstract onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
.end method

.method public abstract onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
.end method

.method public abstract onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
.end method

.method public abstract onVideoError(II)V
.end method

.method public abstract onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
.end method
