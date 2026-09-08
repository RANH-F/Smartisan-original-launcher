.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;
.super Ljava/lang/Object;
.source "LibNetwork.java"

# interfaces
.implements Lc/d/a/a/a/a/e;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lc/d/a/a/a/a/k;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc/d/a/a/a/a/k;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x11336

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x2590a0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_4

    :cond_3
    move v6, v2

    goto :goto_2

    :cond_4
    move v6, v3

    .line 2
    :goto_2
    invoke-static {}, Lc/b/a/a/b/i;->a()Lc/b/a/a/b/i;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;

    move-object v4, v0

    move-object v5, p0

    move-object v7, p2

    move-object v8, p1

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;ILjava/lang/String;Lc/b/a/a/d/p$a;Ljava/util/Map;)V

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lc/b/a/a/d/o;

    move-result-object p2

    invoke-virtual {v0, p2}, Lc/b/a/a/d/c;->build(Lc/b/a/a/d/o;)V

    const/4 p2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lc/b/a/a/b/i;->b()Lc/b/a/a/d/p;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-object p1, p2

    :goto_3
    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p1}, Lc/b/a/a/d/p;->a()Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz p4, :cond_a

    .line 7
    iget-object p1, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p4, p1}, Lc/d/a/a/a/a/k;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_6

    .line 8
    iget-object p3, p1, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    if-eqz p3, :cond_6

    move v2, v3

    :cond_6
    if-eqz v2, :cond_7

    .line 9
    iget-object p2, p1, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p4, :cond_a

    if-eqz p2, :cond_8

    .line 10
    iget-object p1, p1, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    iget-wide p1, p1, Lc/b/a/a/d/p;->h:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    const-string p1, ""

    .line 11
    :goto_4
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p2}, Lc/d/a/a/a/a/k;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    return-void
.end method
