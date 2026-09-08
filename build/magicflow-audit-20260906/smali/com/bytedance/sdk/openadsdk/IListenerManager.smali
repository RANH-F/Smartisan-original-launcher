.class public interface abstract Lcom/bytedance/sdk/openadsdk/IListenerManager;
.super Ljava/lang/Object;
.source "IListenerManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract broadcastDialogListener(Ljava/lang/String;I)V
.end method

.method public abstract broadcastPermissionListener(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract executeFullVideoCallback(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
.end method

.method public abstract registerDialogListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;)V
.end method

.method public abstract registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V
.end method

.method public abstract registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
.end method

.method public abstract registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V
.end method

.method public abstract registerTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
.end method

.method public abstract unregisterTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
.end method
