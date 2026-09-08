.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field protected b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/core/e/b;

.field private final e:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lc/d/a/a/a/c/b;

.field private i:Lc/d/a/a/a/c/c;

.field private j:Lc/d/a/a/a/c/d;

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Z

.field private n:Z

.field private final o:Ljava/util/concurrent/atomic/AtomicLong;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

.field private final u:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private v:Z

.field private w:Ljava/lang/String;

.field private final x:Lc/d/a/a/a/c/e;

.field private y:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m:Z

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r:Z

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 10
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Z

    .line 11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lc/d/a/a/a/c/e;

    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->z:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Ljava/lang/ref/WeakReference;

    .line 16
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 17
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/k;->K()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    .line 18
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/k;->M()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g:I

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->aa()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->w:Ljava/lang/String;

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "====tag==="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    if-nez p2, :cond_0

    const-string p1, "DMLibManager"

    const-string p2, "download create error: not a App type Ad!"

    .line 24
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_1

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/content/Context;)V

    .line 27
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->t:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/a/c$b;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Lc/d/a/a/a/c/d;

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/ss/android/downloadad/a/a/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/a/a$b;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Lc/d/a/a/a/c/b;

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/a/b$b;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->i:Lc/d/a/a/a/c/c;

    .line 31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v9, p0

    .line 4
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    if-nez v0, :cond_0

    .line 5
    new-instance v10, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    iput-object v10, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    move-wide v1, p2

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->a(J)V

    .line 8
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    move-wide v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->b(J)V

    .line 9
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->b(Ljava/lang/String;)V

    .line 10
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->c(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v1, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    if-nez v0, :cond_1

    return-void

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    invoke-static {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(I)Z
    .locals 4

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->d()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->b(I)Z

    move-result p1

    if-nez p1, :cond_4

    const/high16 p1, 0x6400000

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->g()I

    move-result p1

    .line 33
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->e()I

    move-result v0

    if-le p1, v0, :cond_4

    :cond_1
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    goto :goto_0

    .line 34
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->b(I)Z

    move-result p1

    xor-int/lit8 v2, p1, 0x1

    :cond_4
    :goto_1
    return v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 19
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V

    .line 21
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 22
    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 24
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "open_url"

    .line 25
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :catchall_0
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;)Z
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->t:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    return-object p0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "registerMultiProcessListener, mMetaMd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMLibManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DMLibManager"

    .line 2
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "market"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 13
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 16
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :catchall_0
    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/e/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    return-object p0
.end method

.method private d(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    const-string v2, "quickapp_success"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    const-string v2, "quickapp_fail"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u()V

    return-void
.end method

.method private e(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    const-string v2, "open_market_suc"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    const-string v2, "open_market_fail"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->w:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->z:Ljava/util/List;

    return-object p0
.end method

.method private n()V
    .locals 0

    return-void
.end method

.method private o()V
    .locals 2

    const-string v0, "tryReleaseResource=="

    .line 1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const-string v0, "tryReleaseResource==  mContext is null"

    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "tryReleaseResource==  activity is null"

    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tryReleaseResource==  isActivityAlive is true"

    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->w()V

    return-void
.end method

.method private declared-synchronized p()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindDownload=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/i;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Lc/d/a/a/a/c/d;

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/i;->a(Ljava/lang/String;I)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindDownload=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/i;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lc/d/a/a/a/c/e;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Lc/d/a/a/a/c/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/i;->a(Landroid/content/Context;ILc/d/a/a/a/c/e;Lc/d/a/a/a/c/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x9

    .line 4
    iput v2, v1, Landroid/os/Message;->what:I

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Z)V

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private s()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private t()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_confirm_download"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_confirm_download_have_app_name"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    const-string v4, "tt_tip"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_2

    .line 8
    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v3, v2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    .line 10
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_6

    if-eqz v3, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_5

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Theme.Dialog.TTDownload"

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Theme.Dialog.TTDownloadOld"

    :goto_1
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 13
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 14
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_label_ok"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_label_cancel"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 19
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 20
    :cond_6
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f()V

    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "unregisterMultiProcessListener, mMetaMd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMLibManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->n()V

    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Ljava/util/HashSet;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActivity==activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMLibManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 60
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e(Z)V

    .line 61
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Z

    if-eqz p1, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x()V

    :cond_1
    return-void

    .line 63
    :cond_2
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e(Z)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Z

    move-result p1

    if-nez p1, :cond_6

    .line 65
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Z)V

    .line 66
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Z

    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 68
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x()V

    :cond_5
    return-void

    .line 69
    :cond_6
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Z)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->t:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 51
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 52
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p()V

    .line 53
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 40
    :try_start_1
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    .line 41
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V

    :cond_2
    const-string v2, "START_ONLY_FOR_ANDROID"

    .line 43
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 45
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->B()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->B()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;ILjava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    return v1

    :catchall_0
    :cond_4
    :goto_0
    return v0
.end method

.method public a(Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Z

    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r()Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->n:Z

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/i;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Lc/d/a/a/a/c/d;

    invoke-interface {p2}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/downloadlib/i;->a(Ljava/lang/String;Z)V

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    return-void
.end method

.method public b(Z)Z
    .locals 5

    .line 20
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Z

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->V()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->V()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Z

    move-result p1

    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    const-string v4, "open_market_url"

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 24
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 25
    iput v1, v0, Landroid/os/Message;->what:I

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 27
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e(Z)V

    :goto_0
    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->n:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r:Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->t:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(I)V

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method public e()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 8

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return-void

    .line 8
    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->p()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "changeDownloadStatus, not support pause/continue function"

    .line 9
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d..."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDownloadStatus, the current status is1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/i;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->i:Lc/d/a/a/a/c/c;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Lc/d/a/a/a/c/b;

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/downloadlib/i;->a(Ljava/lang/String;JILc/d/a/a/a/c/c;Lc/d/a/a/a/c/b;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDownloadStatus, the current status is2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(J)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x()V

    :cond_5
    :goto_0
    return-void
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->v()Lcom/bytedance/sdk/openadsdk/core/e/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->v()Lcom/bytedance/sdk/openadsdk/core/e/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/g;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_no_network"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->t()V

    goto :goto_2

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u()V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f()V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 11
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method public k()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-string v3, "click_open"

    invoke-direct {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f(Lcom/bytedance/sdk/openadsdk/core/e/k;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->q(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v1
.end method

.method protected l()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object v0
.end method

.method public m()Z
    .locals 9

    const-string v0, "open_url_app"

    .line 1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4

    .line 4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 9
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {p0, v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {v1, v3, v6, v0, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    .line 16
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->B()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;ILjava/lang/String;Z)Z

    :cond_3
    return v2

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 19
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    :cond_5
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m:Z

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-string v3, "open_fallback_url"

    invoke-direct {p0, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/lang/String;

    invoke-static {v0, v1, v5, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    return v2
.end method
