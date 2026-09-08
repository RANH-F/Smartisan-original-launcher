.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;
.super Ljava/lang/Object;
.source "LibPermission.java"

# interfaces
.implements Lc/d/a/a/a/a/f;


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

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;[Ljava/lang/String;Lc/d/a/a/a/a/l;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    array-length v1, p2

    if-lez v1, :cond_2

    .line 2
    array-length v1, p2

    move v2, v0

    :goto_0
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-ge v2, v1, :cond_1

    aget-object v4, p2, v2

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-interface {p3, v3}, Lc/d/a/a/a/a/l;->a(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 8
    invoke-static {p1}, Lcom/ss/android/downloadlib/e/h;->a(Landroid/content/Context;)I

    move-result p1

    if-ge p1, v2, :cond_4

    if-eqz p3, :cond_3

    .line 9
    invoke-interface {p3}, Lc/d/a/a/a/a/l;->a()V

    :cond_3
    return-void

    :cond_4
    if-eqz p2, :cond_7

    .line 10
    array-length p1, p2

    if-gtz p1, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v1, p1

    .line 12
    array-length p1, p2

    :goto_2
    if-ge v0, p1, :cond_6

    aget-object v3, p2, v0

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_6
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;Lc/d/a/a/a/a/l;[Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/h;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V

    return-void

    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    .line 15
    invoke-interface {p3}, Lc/d/a/a/a/a/l;->a()V

    :cond_8
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    .line 20
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/d;->a()Lcom/bytedance/sdk/openadsdk/core/g/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
