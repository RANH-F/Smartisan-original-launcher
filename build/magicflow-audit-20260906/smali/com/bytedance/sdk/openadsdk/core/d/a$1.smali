.class Lcom/bytedance/sdk/openadsdk/core/d/a$1;
.super Ljava/lang/Object;
.source "TTInteractionExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/e/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    const-string v0, "TTInteractionExpressAd"

    const-string v1, "ExpressView SHOW"

    .line 9
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->y()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Landroid/view/View;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->e(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->f(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->e(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->e(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->e(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i()V

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->e(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g()V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExpressView onWindowFocusChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTInteractionExpressAd"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    :cond_0
    return-void
.end method
