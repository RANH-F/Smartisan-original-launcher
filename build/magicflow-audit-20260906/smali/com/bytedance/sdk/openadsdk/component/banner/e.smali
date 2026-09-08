.class public Lcom/bytedance/sdk/openadsdk/component/banner/e;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTBannerAd;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

.field private final b:Lcom/bytedance/sdk/openadsdk/component/banner/a;

.field private final c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private e:I

.field private f:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field private g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

.field private h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field private i:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private final j:Lcom/bytedance/sdk/openadsdk/component/banner/b;

.field private k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private l:Ljava/lang/String;

.field private m:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/component/banner/a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "banner_ad"

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b:Lcom/bytedance/sdk/openadsdk/component/banner/a;

    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/a;->b()Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 7
    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-direct {p3, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/banner/b;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->j:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 3

    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 41
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_0

    .line 42
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .locals 2

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->j:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 12
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a(Landroid/graphics/Bitmap;)V

    .line 13
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/a;->b()Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 16
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    .line 17
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 20
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_2

    .line 27
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 28
    :cond_2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;)V

    .line 31
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d()Landroid/view/View;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/a/b;->b(Landroid/view/View;)V

    .line 32
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 33
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/banner/e$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 34
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz p1, :cond_3

    .line 37
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    :cond_3
    const/4 p1, 0x1

    .line 38
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/e;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c()V

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/component/banner/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    .line 5
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a()V

    :cond_0
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    return-object v0
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->i:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object p1
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->y()I

    move-result v0

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->U()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBannerInteractionListener(Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    :cond_0
    return-void
.end method

.method public setShowDislikeIcon(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    return-void
.end method

.method public setSlideIntervalTime(I)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const-string v0, "slide_banner_ad"

    .line 1
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->l:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b()Lcom/bytedance/sdk/openadsdk/component/banner/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b:Lcom/bytedance/sdk/openadsdk/component/banner/a;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(I)V

    const v0, 0x1d4c0

    const/16 v1, 0x7530

    if-ge p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    .line 5
    :cond_2
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->e:I

    .line 6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    return-void
.end method
