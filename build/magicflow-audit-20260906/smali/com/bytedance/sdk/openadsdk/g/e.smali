.class public Lcom/bytedance/sdk/openadsdk/g/e;
.super Ljava/lang/Object;
.source "TTNetClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/e$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/g/e;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static c:Lc/b/a/a/g/a;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Lc/b/a/a/d/o;

.field private e:Lc/b/a/a/b/b;

.field private f:Lc/b/a/a/d/o;

.field private g:Lc/b/a/a/d/o;

.field private h:Lc/b/a/a/b/d;

.field private i:Lcom/bytedance/sdk/openadsdk/g/a/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lc/b/a/a/g/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/e;->c:Lc/b/a/a/g/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/bytedance/sdk/openadsdk/g/e$a;
    .locals 1

    .line 16
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/e$a;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/g/e$a;-><init>(Landroid/widget/ImageView;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;
    .locals 2

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/e;->a:Lcom/bytedance/sdk/openadsdk/g/e;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/bytedance/sdk/openadsdk/g/e;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/g/e;->a:Lcom/bytedance/sdk/openadsdk/g/e;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/e;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/g/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/g/e;->a:Lcom/bytedance/sdk/openadsdk/g/e;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/g/e;->a:Lcom/bytedance/sdk/openadsdk/g/e;

    return-object p0
.end method

.method public static a(Lc/b/a/a/g/a;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/bytedance/sdk/openadsdk/g/e;->c:Lc/b/a/a/g/a;

    return-void
.end method

.method public static b()Lc/b/a/a/d/h;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/a/d/h;

    invoke-direct {v0}, Lc/b/a/a/d/h;-><init>()V

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->i:Lcom/bytedance/sdk/openadsdk/g/a/b;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->k()V

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lc/b/a/a/d/o;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/b;-><init>(Lc/b/a/a/d/o;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->i:Lcom/bytedance/sdk/openadsdk/g/a/b;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->h:Lc/b/a/a/b/d;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->k()V

    .line 3
    new-instance v0, Lc/b/a/a/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lc/b/a/a/d/o;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/b/a/a/b/d;-><init>(Lc/b/a/a/d/o;Lc/b/a/a/b/d$g;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->h:Lc/b/a/a/b/d;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->d:Lc/b/a/a/d/o;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->a()Lc/b/a/a/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lc/b/a/a/a;->a(Landroid/content/Context;Lc/b/a/a/g/a;)Lc/b/a/a/d/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->d:Lc/b/a/a/d/o;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lc/b/a/a/d/o;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->l()Lc/b/a/a/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lc/b/a/a/a;->a(Landroid/content/Context;Lc/b/a/a/g/a;)Lc/b/a/a/d/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lc/b/a/a/d/o;

    :cond_0
    return-void
.end method

.method private l()Lc/b/a/a/g/a;
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->a()Lc/b/a/a/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->a()Lc/b/a/a/g/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/c;

    const/4 v1, 0x0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/h;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/h;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/c;-><init>(Lc/b/a/a/d/k$b;Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method


# virtual methods
.method public a(Lc/b/a/a/d/q;)V
    .locals 0

    .line 17
    invoke-static {p1}, Lc/b/a/a/a;->a(Lc/b/a/a/d/q;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-static {p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/bytedance/sdk/openadsdk/g/e$a;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lc/b/a/a/b/d$i;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lc/b/a/a/b/d$i;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->i()V

    .line 15
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/e;->h:Lc/b/a/a/b/d;

    invoke-virtual {p2, p1, p3}, Lc/b/a/a/b/d;->a(Ljava/lang/String;Lc/b/a/a/b/d$i;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lc/b/a/a/b/b$b;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->j()V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->e:Lc/b/a/a/b/b;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lc/b/a/a/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/e;->d:Lc/b/a/a/d/o;

    invoke-direct {v0, v1, v2}, Lc/b/a/a/b/b;-><init>(Landroid/content/Context;Lc/b/a/a/d/o;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->e:Lc/b/a/a/b/b;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->e:Lc/b/a/a/b/b;

    invoke-virtual {v0, p1, p2}, Lc/b/a/a/b/b;->a(Ljava/lang/String;Lc/b/a/a/b/b$b;)V

    return-void
.end method

.method public c()Lc/b/a/a/d/o;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->j()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->d:Lc/b/a/a/d/o;

    return-object v0
.end method

.method public d()Lc/b/a/a/d/o;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->k()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lc/b/a/a/d/o;

    return-object v0
.end method

.method public e()Lc/b/a/a/d/o;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->f:Lc/b/a/a/d/o;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->l()Lc/b/a/a/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lc/b/a/a/a;->a(Landroid/content/Context;Lc/b/a/a/g/a;)Lc/b/a/a/d/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->f:Lc/b/a/a/d/o;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->f:Lc/b/a/a/d/o;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/g/a/b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->h()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->i:Lcom/bytedance/sdk/openadsdk/g/a/b;

    return-object v0
.end method

.method public g()Lc/b/a/a/b/d;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->i()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->h:Lc/b/a/a/b/d;

    return-object v0
.end method
