.class public Lcom/pgl/sys/ces/out/StcSDKLiteFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/pgl/sys/ces/out/ISdkLite;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/pgl/sys/ces/out/ISdkLite;
    .locals 1

    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-object v0
.end method

.method public static getSDK(Landroid/content/Context;Ljava/lang/String;)Lcom/pgl/sys/ces/out/ISdkLite;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v0, :cond_1

    const-class v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v1, :cond_0

    const/16 v1, 0xff

    invoke-static {p0, p1, v1}, Lcom/pgl/sys/ces/b;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/pgl/sys/ces/b;

    move-result-object p0

    sput-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-object p0
.end method

.method public static getSDK(Landroid/content/Context;Ljava/lang/String;I)Lcom/pgl/sys/ces/out/ISdkLite;
    .locals 2

    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v0, :cond_1

    const-class v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/pgl/sys/ces/b;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/pgl/sys/ces/b;

    move-result-object p0

    sput-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-object p0
.end method
