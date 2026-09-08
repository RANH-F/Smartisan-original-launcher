.class public Lc/b/a/a/b/d;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/b/d$f;,
        Lc/b/a/a/b/d$h;,
        Lc/b/a/a/b/d$i;,
        Lc/b/a/a/b/d$g;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lc/b/a/a/d/o;

.field private c:I

.field private final d:Lc/b/a/a/b/d$g;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/b/a/a/b/d$f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/b/a/a/b/d$f;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lc/b/a/a/d/o;Lc/b/a/a/b/d$g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/a/b/d;->a:Ljava/util/concurrent/ExecutorService;

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lc/b/a/a/b/d;->c:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/a/b/d;->e:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/a/b/d;->f:Ljava/util/Map;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/b/a/a/b/d;->g:Landroid/os/Handler;

    .line 7
    iput-object p1, p0, Lc/b/a/a/b/d;->b:Lc/b/a/a/d/o;

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lc/b/a/a/b/a;

    invoke-direct {p2}, Lc/b/a/a/b/a;-><init>()V

    :cond_0
    iput-object p2, p0, Lc/b/a/a/b/d;->d:Lc/b/a/a/b/d$g;

    return-void
.end method

.method private a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 2

    .line 15
    iget-object v0, p0, Lc/b/a/a/b/d;->d:Lc/b/a/a/b/d$g;

    invoke-interface {v0, p1, p2, p3, p4}, Lc/b/a/a/b/d$g;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#H"

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#S"

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lc/b/a/a/b/d;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/b/d;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic a(Lc/b/a/a/b/d;Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lc/b/a/a/b/d;->b(Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lc/b/a/a/b/d$f;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lc/b/a/a/b/d;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p2, Lc/b/a/a/b/d$e;

    invoke-direct {p2, p0, p1}, Lc/b/a/a/b/d$e;-><init>(Lc/b/a/a/b/d;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lc/b/a/a/b/d;->g:Landroid/os/Handler;

    iget v0, p0, Lc/b/a/a/b/d;->c:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lc/b/a/a/b/d;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/b/d;->f:Ljava/util/Map;

    return-object p0
.end method

.method private b(Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lc/b/a/a/b/d;->g:Landroid/os/Handler;

    new-instance v1, Lc/b/a/a/b/d$b;

    invoke-direct {v1, p0, p2}, Lc/b/a/a/b/d$b;-><init>(Lc/b/a/a/b/d;Lc/b/a/a/b/d$i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-direct {p0, p1, p3, p4, p5}, Lc/b/a/a/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lc/b/a/a/b/d;->d:Lc/b/a/a/b/d$g;

    invoke-interface {v1, v0}, Lc/b/a/a/b/d$g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    new-instance p3, Lc/b/a/a/b/d$h;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lc/b/a/a/b/d$h;-><init>(Lc/b/a/a/b/d;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lc/b/a/a/b/d$i;)V

    .line 6
    iget-object p1, p0, Lc/b/a/a/b/d;->g:Landroid/os/Handler;

    new-instance p4, Lc/b/a/a/b/d$c;

    invoke-direct {p4, p0, p2, p3}, Lc/b/a/a/b/d$c;-><init>(Lc/b/a/a/b/d;Lc/b/a/a/b/d$i;Lc/b/a/a/b/d$h;)V

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 7
    :cond_0
    new-instance v1, Lc/b/a/a/b/d$h;

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lc/b/a/a/b/d$h;-><init>(Lc/b/a/a/b/d;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lc/b/a/a/b/d$i;)V

    .line 8
    iget-object p2, p0, Lc/b/a/a/b/d;->e:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/a/a/b/d$f;

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lc/b/a/a/b/d;->f:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/a/a/b/d$f;

    :cond_1
    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2, v1}, Lc/b/a/a/b/d$f;->a(Lc/b/a/a/b/d$h;)V

    return-void

    :cond_2
    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    .line 11
    invoke-virtual/range {v2 .. v7}, Lc/b/a/a/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lc/b/a/a/d/c;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lc/b/a/a/b/d;->b:Lc/b/a/a/d/o;

    invoke-virtual {p2, p1}, Lc/b/a/a/d/o;->a(Lc/b/a/a/d/c;)Lc/b/a/a/d/c;

    .line 13
    iget-object p2, p0, Lc/b/a/a/b/d;->e:Ljava/util/Map;

    new-instance p3, Lc/b/a/a/b/d$f;

    invoke-direct {p3, p1, v1}, Lc/b/a/a/b/d$f;-><init>(Lc/b/a/a/d/c;Lc/b/a/a/b/d$h;)V

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lc/b/a/a/d/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lc/b/a/a/d/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v7, Lc/b/a/a/b/e;

    new-instance v2, Lc/b/a/a/b/d$d;

    invoke-direct {v2, p0, p5}, Lc/b/a/a/b/d$d;-><init>(Lc/b/a/a/b/d;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, v7

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lc/b/a/a/b/e;-><init>(Ljava/lang/String;Lc/b/a/a/d/p$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    return-object v7
.end method

.method public a(Ljava/lang/String;Lc/b/a/a/b/d$i;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v0}, Lc/b/a/a/b/d;->a(Ljava/lang/String;Lc/b/a/a/b/d$i;II)V

    return-void
.end method

.method public a(Ljava/lang/String;Lc/b/a/a/b/d$i;II)V
    .locals 6

    .line 4
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lc/b/a/a/b/d;->a(Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V
    .locals 9

    .line 5
    iget-object v0, p0, Lc/b/a/a/b/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lc/b/a/a/b/d$a;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lc/b/a/a/b/d$a;-><init>(Lc/b/a/a/b/d;Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lc/b/a/a/b/d;->d:Lc/b/a/a/b/d$g;

    iget-object v1, p2, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lc/b/a/a/b/d$g;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 8
    iget-object v0, p0, Lc/b/a/a/b/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a/b/d$f;

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p2, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lc/b/a/a/b/d$f;->a(Lc/b/a/a/b/d$f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 10
    invoke-virtual {v0, p2}, Lc/b/a/a/b/d$f;->a(Lc/b/a/a/d/p;)V

    .line 11
    invoke-direct {p0, p1, v0}, Lc/b/a/a/b/d;->a(Ljava/lang/String;Lc/b/a/a/b/d$f;)V

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lc/b/a/a/b/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a/b/d$f;

    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p2, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    invoke-virtual {v0, v1}, Lc/b/a/a/b/d$f;->a(Lc/b/a/a/f/a;)V

    .line 16
    invoke-virtual {v0, p2}, Lc/b/a/a/b/d$f;->a(Lc/b/a/a/d/p;)V

    .line 17
    invoke-direct {p0, p1, v0}, Lc/b/a/a/b/d;->a(Ljava/lang/String;Lc/b/a/a/b/d$f;)V

    :cond_0
    return-void
.end method
