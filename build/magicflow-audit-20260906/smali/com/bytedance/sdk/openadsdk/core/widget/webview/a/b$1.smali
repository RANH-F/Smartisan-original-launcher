.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d()V

    return-void
.end method
