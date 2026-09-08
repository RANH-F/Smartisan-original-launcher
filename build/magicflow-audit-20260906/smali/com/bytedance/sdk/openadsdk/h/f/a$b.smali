.class Lcom/bytedance/sdk/openadsdk/h/f/a$b;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/h/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f/a;-><init>(Lcom/bytedance/sdk/openadsdk/h/f/a$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/h/f/a;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/h/f/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/h/f/a;

    return-object v0
.end method
