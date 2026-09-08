.class public Lcom/bytedance/sdk/openadsdk/component/splash/b;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/splash/b$a;
    }
.end annotation


# static fields
.field private static j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/component/splash/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private b:Lcom/bytedance/sdk/openadsdk/core/e/l;

.field private c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

.field private final d:Lcom/bytedance/sdk/openadsdk/core/o;

.field private e:Landroid/content/Context;

.field private final f:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field private i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field private k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Z

.field private p:J

.field private q:J

.field private r:J

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private w:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:J

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    .line 13
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d:Lcom/bytedance/sdk/openadsdk/core/o;

    .line 14
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->s()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->o:Z

    .line 17
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/component/splash/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/b;
    .locals 1

    .line 11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/e;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/e/n;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/n;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/n;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;
    .locals 8

    .line 149
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/n;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/n;->a()Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->d(Z)V

    .line 151
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/n;->a()Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const-string v7, "splash_ad"

    move-object v2, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    .line 152
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    return-object v0
.end method

.method private a(ILcom/bytedance/sdk/openadsdk/core/e/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/n;->a()Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/n;->a()Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->J()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/n;->a()Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/k;->M()Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "req_id"

    .line 54
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    move-object v1, p2

    :catchall_0
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/l;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/e/l;->a:Ljava/lang/String;

    .line 56
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p1

    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    :cond_3
    if-eqz p2, :cond_4

    .line 61
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    :cond_4
    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/core/e/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/e/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->p()I

    move-result v0

    const-string v1, "splashLoadAd"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "splash_type_concurrent_first_come_first_use=====\u5e76\u53d1\u8bf7\u6c42\u5e7f\u544a\u548ccheck\u7f13\u5b58\uff0c\u8c01\u5148\u5230\u7528\u8c01"

    .line 30
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b()Z

    :goto_0
    return-void

    :cond_2
    const-string v0, "splash_type_concurrent_priority_real_time=====\u5e76\u53d1\u8bf7\u6c42\u5e7f\u544a\u548ccheck\u7f13\u5b58\uff0c\u4f18\u5148\u4f7f\u7528\u5b9e\u65f6"

    .line 33
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b()Z

    return-void

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "splash_type_priorrity_cache_defualt=====\u4f18\u5148\u7f13\u5b58"

    .line 40
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "splash_type_priorrity_cache_defualt=====\u4f18\u5148\u7f13\u5b58--->\u6267\u884c\u7f13\u5b58\u5931\u8d25\uff0c\u8fdb\u884c\u7f51\u7edc\u8bf7\u6c42"

    .line 42
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_1

    :cond_4
    const-string v0, "splash_type_priorrity_cache_defualt=====\u4f18\u5148\u7f13\u5b58--->\u6267\u884c\u7f13\u5b58\u6210\u529f\uff01\uff01"

    .line 44
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "splash_type_real_time=====\u53ea\u8d70\u5b9e\u65f6"

    .line 47
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method private declared-synchronized a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/16 v0, 0x3a9c

    const/16 v1, 0x3a9b

    const/16 v2, 0x3a99

    const/4 v3, 0x1

    const/16 v4, 0x3a98

    if-ne p1, v4, :cond_0

    :try_start_0
    const-string v5, "splashLoadAd"

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splashAdTryCallback start....\u5b9e\u65f6\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    if-ne p1, v2, :cond_1

    const-string v5, "splashLoadAd"

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splashAdTryCallback start....\u7f13\u5b58\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    const-string v5, "splashLoadAd"

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splashAdTryCallback start....\u8d85\u65f6\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    const-string v5, "splashLoadAd"

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splashAdTryCallback start....\u6e32\u67d3\u8d85\u65f6\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string p1, "splashLoadAd"

    const-string p2, "splashAdTryCallback mSplashAdHasLoad==true \u5df2\u6210\u529f\u56de\u8c03\uff0c\u4e0d\u518d\u6267\u884c\u56de\u8c03\u64cd\u4f5c\uff01\uff01\uff01"

    .line 103
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :cond_4
    if-nez p4, :cond_f

    .line 105
    :try_start_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "splashLoadAd"

    const-string p3, "\u666e\u901a\u7c7b\u578b\u8d70\u8fd9\uff0c\u76f4\u63a5\u5931\u8d25\u56de\u8c03"

    .line 106
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    :goto_1
    if-ne p1, v4, :cond_9

    .line 107
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "splashLoadAd"

    const-string p2, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u5b9e\u65f6\u5148\u56de\uff0c\u7f13\u5b58\u8fd8\u6ca1\u56de\uff09...\u7b49\u5f85\u7f13\u5b58"

    .line 108
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    const-string p1, "splashLoadAd"

    const-string p3, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u7f13\u5b58\u5148\u56de\uff0c\u5b9e\u65f6\u540e\u56de\uff09...."

    .line 110
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->w:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    if-eqz p1, :cond_8

    const-string p1, "splashLoadAd"

    const-string p2, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u7f13\u5b58\u5148\u56de\uff0c\u5b9e\u65f6\u540e\u56de\uff09....\u5c1d\u8bd5\u56de\u8c03\u7f13\u5b58\u6210\u529f\uff01"

    .line 112
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->w:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :cond_8
    :try_start_3
    const-string p1, "splashLoadAd"

    const-string p3, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u7f13\u5b58\u5148\u56de\uff0c\u5b9e\u65f6\u540e\u56de\uff09....\u5c1d\u8bd5\u56de\u8c03\u7f13\u5b58\u5931\u8d25\uff01"

    .line 115
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    if-ne p1, v2, :cond_b

    .line 116
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "splashLoadAd"

    const-string p2, "splashAdTryCallback \u7f13\u5b58\u8bf7\u6c42\u5931\u8d25(\u7f13\u5b58\u5148\u56de\u6765)\uff0c\u5b9e\u65f6\u8fd8\u6ca1\u6709\u56de\u8c03....\u7b49\u5f85...\uff01"

    .line 117
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :cond_a
    :try_start_4
    const-string p1, "splashLoadAd"

    const-string p3, "splashAdTryCallback \u7f13\u5b58\u8bf7\u6c42\u5931\u8d25(\u7f13\u5b58\u5148\u56de\u6765)\uff0c\u5b9e\u65f6\u4e5f\u5931\u8d25....\u76f4\u63a5\u56de\u8c03\u51fa\u53bb\uff01"

    .line 119
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :cond_b
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_e

    if-ne p1, v0, :cond_e

    const-string p1, "splashLoadAd"

    const-string p3, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0cREQUEST_TYPE_TIMEOUT--->>>>"

    .line 121
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_e

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "splashLoadAd"

    const-string p2, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u7f13\u5b58\u6210\u529f\u76f4\u63a5\u56de\u8c03"

    .line 125
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->w:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :cond_c
    :try_start_5
    const-string p1, "splashLoadAd"

    const-string p3, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u76f4\u63a5\u5931\u8d25\u56de\u8c03"

    .line 128
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string p1, "splashLoadAd"

    const-string p3, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u7f13\u5b58\u4e5f\u5931\u8d25\u76f4\u63a5\u56de\u8c03\uff0c\u76f4\u63a5\u5931\u8d25\u56de\u8c03"

    .line 129
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_e
    :goto_2
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :cond_f
    if-nez p5, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    .line 132
    :try_start_6
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/e/n;->b()[B

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a([B)V

    .line 133
    :cond_10
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_12

    if-ne p1, v2, :cond_12

    .line 134
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_11

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_11

    .line 135
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_11

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_11

    const-string p1, "splashLoadAd"

    const-string p3, "\u7f13\u5b58\u8d4b\u503c\u7ed9resultTemp"

    .line 136
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->w:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const-string p1, "splashLoadAd"

    const-string p2, "\u5982\u679c\u7f13\u5b58\u5148\u56de\u6765,\u5b9e\u65f6\u8fd8\u6ca1\u6709\u56de\u6765\uff0c\u7b49\u5f85\u5b9e\u65f6\u56de\u6765"

    .line 138
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 140
    :cond_11
    :try_start_7
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_12

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p3, :cond_12

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a()Z

    move-result p3

    if-eqz p3, :cond_12

    const-string p1, "splashLoadAd"

    const-string p2, "\u6b64\u65f6\u5b9e\u65f6\u53ef\u80fd\u5728\u6e32\u67d3\uff0c\u907f\u514d\u7f13\u5b58\u7684\u6e32\u67d3\u6210\u529f\u540e\u76f4\u63a5\u88ab\u56de\u8c03"

    .line 141
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :cond_12
    if-ne p1, v4, :cond_13

    :try_start_8
    const-string p3, "splashLoadAd"

    const-string p4, "splashAdTryCallback \u5b9e\u65f6\u6216\u6e32\u67d3\u6210\u529f\u56de\u8c03......\uff01"

    .line 143
    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const-string p3, "splashLoadAd"

    .line 144
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "splashAdTryCallback..\uff08 \u662f\u5426\u7f13\u5b58\u5df2check\u6210\u529f\uff1a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, " || \u662f\u5426\u6e32\u67d3\u8d85\u65f6\uff1a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p5, 0x0

    if-ne p1, v1, :cond_14

    move v0, v3

    goto :goto_3

    :cond_14
    move v0, p5

    :goto_3
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " || \u662f\u5426\u4e3a\u5b9e\u65f6\u8bf7\u6c42"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v4, :cond_15

    move p5, v3

    :cond_15
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, "\uff09 && \u662f\u5426\u6e32\u67d3\u6210\u529f\uff1a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_16

    if-eq p1, v4, :cond_16

    if-ne p1, v1, :cond_17

    :cond_16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 146
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V

    .line 147
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 148
    :cond_17
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 5

    const-string v0, "splashLoadAd"

    const-string v1, "try LoadSplashAdFromNetwork......"

    .line 62
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/e/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/i/l;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/l;

    const/4 v3, 0x2

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/e/l;->e:I

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d:Lcom/bytedance/sdk/openadsdk/core/o;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/l;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    invoke-interface {v2, p1, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/l;ILcom/bytedance/sdk/openadsdk/core/o$b;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "splashLoadAd"

    const-string v1, "onCallback ......"

    .line 153
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f()V

    if-nez p1, :cond_0

    const-string p1, "splashAdListener is null, then return"

    .line 155
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    const-string v0, "splashAdListener is null, then return"

    .line 159
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;)V

    .line 160
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    if-ne v0, v1, :cond_1

    .line 161
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 162
    :cond_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 164
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    const/4 v4, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v1, :cond_3

    const/4 p1, -0x2

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 169
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onTimeout()V

    goto :goto_0

    .line 170
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/f/a;->d(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    iget v3, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->b:I

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/f/a;->c(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz p1, :cond_6

    .line 175
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    :cond_6
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 178
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 180
    :cond_7
    :try_start_3
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 181
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    if-ne v0, v1, :cond_8

    .line 182
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 183
    :cond_8
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/e/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .locals 10

    .line 68
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/e/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 70
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/e/k;->A()Lcom/bytedance/sdk/openadsdk/core/e/j;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/e/k;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/j;

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/j;->a()Ljava/lang/String;

    move-result-object v9

    .line 73
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/j;->b()I

    move-result v0

    .line 74
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/e/k;->w()Lcom/bytedance/sdk/openadsdk/core/e/r;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v1

    .line 75
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->q:J

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:J

    if-eqz v6, :cond_3

    const/4 v1, 0x2

    .line 77
    :cond_3
    invoke-static {v5, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;I)V

    .line 78
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/core/e/k;ZLcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V

    invoke-static {p2, v9, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/utils/n$a;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .locals 10

    const-string v0, "splashLoadAd"

    const-string v1, "\u6267\u884c checkAdFromServer \u68c0\u6d4b\u7f13\u5b58...."

    .line 81
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/n;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/n;->a()Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object v0

    .line 84
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/e/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v6

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v1

    .line 86
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->J()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->M()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/f/a/d;Lcom/bytedance/sdk/openadsdk/core/e/n;Ljava/lang/String;)V

    .line 88
    invoke-interface {v1, v2, v0, v9}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    goto :goto_0

    :cond_0
    const-string p2, "checkAdFromServer check fail !!!!"

    .line 89
    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "checkAdFromServer check fail !!!! ---> tryLoadSplashAdFromNetwork !!!"

    .line 91
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 93
    invoke-direct {p0, v2, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/e/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v9

    const-string p2, "checkAdFromServer check fail !!!! ---> return callback !!!"

    .line 94
    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a99

    .line 95
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 80
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->renderExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .locals 1

    .line 185
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->d(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->g(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e()V

    return-void
.end method

.method private b()Z
    .locals 11

    const-string v0, "splashLoadAd"

    const-string v1, "try checkSpashAdCacheIsValidAndTryShowAd......"

    .line 2
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3a99

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/e/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v9

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u6ca1\u6709\u7f13\u5b58\u6570\u636e.........."

    .line 6
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, -0xc

    const/16 v1, 0x3a99

    .line 8
    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const/4 v5, 0x2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v6, -0xc

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v1

    move-object v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    :cond_1
    return v2

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;)V

    const-string v1, "======== \u7f13\u5b58\u8fc7\u671f ========"

    .line 11
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/16 v0, -0xb

    const/16 v1, 0x3a99

    .line 13
    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const/4 v5, 0x2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v6, -0xb

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v1

    move-object v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/e/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    :cond_4
    return v2

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d()V

    return v4
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->p()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$b;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e()V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->o:Z

    return p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a$b;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/l;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/l;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->q:J

    return-wide v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:J

    return-wide v0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 7

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v3, "SplashAdLoadManager"

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a()V

    const-string v0, "\u5c1d\u8bd5\u4ece\u7f13\u5b58\u4e2d\u53d6"

    .line 191
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f()V

    const-string v0, "\u5f00\u59cb\u9884\u52a0\u8f7d"

    .line 193
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 195
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const-string v4, "splashLoadAd"

    if-ne v0, v3, :cond_3

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "MSG_USER_TIME_OUT----7-"

    .line 198
    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/e/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 200
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;

    invoke-direct {v6, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_3
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 202
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 204
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->p()I

    move-result p1

    const/4 v5, 0x4

    if-eqz p1, :cond_c

    if-eq p1, v1, :cond_9

    if-eq p1, v3, :cond_7

    if-eq p1, v0, :cond_5

    goto :goto_3

    .line 206
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "\u8c01\u56de\u6765\u7528\u8c01//--mCacheTTSplashAd"

    .line 207
    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move v0, v5

    goto :goto_1

    :cond_6
    move-object p1, v2

    .line 209
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz v1, :cond_d

    const-string p1, "\u8c01\u56de\u6765\u7528\u8c01//--mRealNetWorkTTSplashAd"

    .line 210
    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    goto :goto_4

    .line 212
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_8

    const-string v1, "\u8d85\u65f6\u4f7f\u7528\u5b9e\u65f6--mRealNetWorkTTSplashAd"

    .line 213
    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 214
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "\u8d85\u65f6\u4f7f\u7528\u5b9e\u65f6//--mCacheTTSplashAd"

    .line 215
    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    goto :goto_2

    .line 217
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 218
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    :goto_2
    move v0, v5

    goto :goto_4

    .line 219
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    move-object p1, v2

    goto :goto_4

    .line 220
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    :cond_d
    :goto_4
    if-eqz p1, :cond_e

    .line 221
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 222
    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/e/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .locals 2

    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-gtz p3, :cond_0

    const/16 p3, 0xbb8

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 p2, 0x2

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    add-int/lit16 p1, p3, -0x12c

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p3

    .line 18
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/e/l;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/e/l;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/l;

    .line 20
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/bytedance/sdk/openadsdk/core/e/l;->f:J

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p3

    .line 22
    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/l;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/e/l;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->b(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a()V

    return-void
.end method
