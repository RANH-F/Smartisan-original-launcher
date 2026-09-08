.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;
.super Ljava/lang/Object;
.source "TmplDiffManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/i/m;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "md5"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    .line 6
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/e/p;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/e/p;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/p;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/p;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/p;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/p;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/e/p;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/p;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/e/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/p;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/e/p;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/p;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/e/p;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/p;

    move-result-object v0

    .line 17
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/e/p;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/p;

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V

    .line 20
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/p;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
