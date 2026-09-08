.class public Lcom/bytedance/sdk/openadsdk/component/splash/e;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field private e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

.field private f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

.field private g:Z

.field private h:J

.field private i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private r:Ljava/lang/String;

.field private s:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private t:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Z

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 14
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/k;->T()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    .line 15
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 16
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 19
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:J

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l:Z

    .line 23
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    .line 26
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 31
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/k;->T()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    .line 32
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 34
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:J

    return-wide p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .locals 2

    .line 43
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setCountDownTime(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/e/k;)V
    .locals 6

    .line 6
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 9
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 11
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 15
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x3

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "splash_show_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;I)V

    .line 19
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;)V

    .line 20
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 21
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Ljava/util/Map;)V

    .line 22
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;)V

    .line 23
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;I)V

    .line 24
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;)V

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 26
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Ljava/util/Map;)V

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 37
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 38
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    .line 39
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;JLcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;

    move-result-object v11

    .line 40
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 41
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o()J

    move-result-wide v8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q()I

    move-result v10

    move-object v6, p1

    move-object v7, p2

    .line 42
    invoke-static/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->w()Lcom/bytedance/sdk/openadsdk/core/e/r;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVideoViewVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setImageViewVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVoiceViewListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m:Z

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVideoViewVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setImageViewVisibility(I)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->g()I

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setAdlogoViewVisibility(I)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setAdlogoViewVisibility(I)V

    .line 17
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->Q()I

    move-result v0

    if-gtz v0, :cond_4

    const/4 v0, 0x3

    .line 18
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(I)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->Q()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    .line 20
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(I)V

    .line 21
    :goto_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e()V

    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d()V

    return-void
.end method

.method private b([B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 23
    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    aget-byte v2, p1, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_0

    aget-byte v2, p1, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte p1, p1, v2

    const/16 v2, 0x46

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    return-object p0
.end method

.method private c()Z
    .locals 12

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/d;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoCachePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wzj"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->J()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->M()Ljava/lang/String;

    move-result-object v8

    iget-boolean v11, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o:Z

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    .line 7
    invoke-virtual/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j:Lcom/bytedance/sdk/openadsdk/component/splash/d;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->u()Lcom/bytedance/sdk/openadsdk/core/e/k$a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->w()Lcom/bytedance/sdk/openadsdk/core/e/r;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->s:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    return-object p0
.end method

.method private e()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->w()Lcom/bytedance/sdk/openadsdk/core/e/r;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v2, 0x3

    .line 9
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setAdType(I)V

    .line 10
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 13
    :cond_2
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "splash_show_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;I)V

    .line 18
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Ljava/util/Map;)V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getDislikeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b;->b(Landroid/view/View;)V

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setSkipListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->t:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/e/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g:Z

    return p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n:Z

    return p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/component/splash/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h:J

    return-wide v0
.end method


# virtual methods
.method a([B)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setGifView([B)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->C()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->C()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/j;->b()I

    move-result v0

    .line 33
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/n;->a([BI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->u()Lcom/bytedance/sdk/openadsdk/core/e/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->y()I

    move-result v0

    :goto_0
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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->U()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSplashView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->w()Lcom/bytedance/sdk/openadsdk/core/e/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    return-object v0
.end method

.method public renderExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->t:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    :cond_0
    return-void
.end method

.method public setNotAllowSdkCountdown()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g:Z

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setSkipIconVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    return-void
.end method
