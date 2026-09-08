.class public interface abstract Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;
.super Ljava/lang/Object;
.source "ITTAppDownloadListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onIdle()V
.end method

.method public abstract onInstalled(Ljava/lang/String;Ljava/lang/String;)V
.end method
