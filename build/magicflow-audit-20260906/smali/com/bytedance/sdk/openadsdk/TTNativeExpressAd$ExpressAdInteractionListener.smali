.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
.super Ljava/lang/Object;
.source "TTNativeExpressAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExpressAdInteractionListener"
.end annotation


# virtual methods
.method public abstract onAdClicked(Landroid/view/View;I)V
.end method

.method public abstract onAdShow(Landroid/view/View;I)V
.end method

.method public abstract onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
.end method

.method public abstract onRenderSuccess(Landroid/view/View;FF)V
.end method
