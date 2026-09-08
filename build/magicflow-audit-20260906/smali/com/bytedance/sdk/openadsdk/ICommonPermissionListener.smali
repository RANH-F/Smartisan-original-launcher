.class public interface abstract Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;
.super Ljava/lang/Object;
.source "ICommonPermissionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDenied(Ljava/lang/String;)V
.end method

.method public abstract onGranted()V
.end method
