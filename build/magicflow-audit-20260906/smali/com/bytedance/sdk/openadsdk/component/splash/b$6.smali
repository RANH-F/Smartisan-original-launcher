.class Lcom/bytedance/sdk/openadsdk/component/splash/b$6;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/f/a/d;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/e/n;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/f/a/d;Lcom/bytedance/sdk/openadsdk/core/e/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->c:Lcom/bytedance/sdk/openadsdk/core/e/n;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZJJ)V

    const-string p4, "splashLoadAd"

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "check \u6210\u529f\u56de\u8c03......."

    .line 3
    invoke-static {p4, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 p2, 0x3a99

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->c:Lcom/bytedance/sdk/openadsdk/core/e/n;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->d:Ljava/lang/String;

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SplashAdLoadManager"

    const-string p2, "\u5f00\u5c4f\u89c6\u9891\u7f13\u5b58\u5e7f\u544a\u4e0d\u5728\u6295\u653e\u671f\u6216\u672c\u6b21\u8c03\u7528\u5df2\u56de\u8c03\u51fa\u53bb"

    .line 7
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u5e76\u53d1\u8bf7\u6c42\u5f00\u5c4f\u89c6\u9891check \u5931\u8d25 \u65e0\u9700\u518d\u7f51\u7edc\u8bf7\u6c42"

    .line 9
    invoke-static {p4, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 p2, 0x3a99

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->c:Lcom/bytedance/sdk/openadsdk/core/e/n;

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;)V

    return-void
.end method
