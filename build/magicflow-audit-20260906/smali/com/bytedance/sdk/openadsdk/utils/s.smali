.class public Lcom/bytedance/sdk/openadsdk/utils/s;
.super Ljava/lang/Object;
.source "LoadUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/s$b;,
        Lcom/bytedance/sdk/openadsdk/utils/s$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/utils/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/s$b;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/s$b;-><init>(Lcom/bytedance/sdk/openadsdk/utils/s$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/s;->a:Lcom/bytedance/sdk/openadsdk/utils/s$a;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/s$a;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/s$a;-><init>(Lcom/bytedance/sdk/openadsdk/utils/s$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/s;->a:Lcom/bytedance/sdk/openadsdk/utils/s$a;

    :goto_0
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/s;->a:Lcom/bytedance/sdk/openadsdk/utils/s$a;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/s$a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
