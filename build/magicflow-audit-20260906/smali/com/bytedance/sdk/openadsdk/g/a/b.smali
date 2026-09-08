.class public Lcom/bytedance/sdk/openadsdk/g/a/b;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/a/b$a;,
        Lcom/bytedance/sdk/openadsdk/g/a/b$c;,
        Lcom/bytedance/sdk/openadsdk/g/a/b$d;,
        Lcom/bytedance/sdk/openadsdk/g/a/b$b;
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/a/d/o;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/b$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/a/d/o;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->c:Landroid/os/Handler;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->d:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->a:Lc/b/a/a/d/o;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/g/a/b$a;
    .locals 1

    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/b$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/a/b$a;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .locals 8

    .line 7
    new-instance v7, Lcom/bytedance/sdk/openadsdk/g/a/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/a/b$4;

    invoke-direct {v2, p0, p5, p1}, Lcom/bytedance/sdk/openadsdk/g/a/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, v7

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/g/a/c;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    return-object v7
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$d;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->a()Z

    move-result v0

    .line 9
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    .line 11
    new-instance v3, Lcom/bytedance/sdk/openadsdk/g/a/b$c;

    iget-object v4, p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->e:[B

    invoke-direct {v3, v4, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$c;-><init>([BLcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/g/a/b$b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v3, Lcom/bytedance/sdk/openadsdk/g/a/b$c;

    iget-object v4, p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->d:Lc/b/a/a/f/a;

    invoke-direct {v3, v4, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$c;-><init>(Lc/b/a/a/f/a;Lcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/g/a/b$b;->b(Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/g/a/a$a;->a:[B

    if-eqz v1, :cond_0

    .line 4
    new-instance v7, Lcom/bytedance/sdk/openadsdk/g/a/b$c;

    invoke-direct {v7, v1, p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/b$c;-><init>([BLcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->c:Landroid/os/Handler;

    new-instance p4, Lcom/bytedance/sdk/openadsdk/g/a/b$3;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/g/a/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Lcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/a$a;Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/g/a/b$d;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->a(Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 9
    new-instance p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;

    invoke-direct {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$d;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/c;Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V

    .line 10
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->a:Lc/b/a/a/d/o;

    invoke-virtual {p2, p1}, Lc/b/a/a/d/o;->a(Lc/b/a/a/d/c;)Lc/b/a/a/d/c;

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->d:Ljava/util/Map;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;II)V
    .locals 6

    .line 4
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .locals 9

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/a/b$1;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/g/a/b$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/g/a/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
