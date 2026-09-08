.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a$1;
.super Ljava/lang/Object;
.source "ExpressAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
