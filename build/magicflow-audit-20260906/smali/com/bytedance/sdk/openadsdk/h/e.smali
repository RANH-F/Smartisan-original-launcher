.class public Lcom/bytedance/sdk/openadsdk/h/e;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field static volatile a:Lcom/bytedance/sdk/openadsdk/h/a/b;

.field static volatile b:Lcom/bytedance/sdk/openadsdk/h/a/c;

.field public static final c:Z

.field public static volatile d:Z

.field static volatile e:Z

.field static volatile f:Z

.field static volatile g:I

.field public static volatile h:I

.field public static volatile i:Ljava/lang/Integer;

.field private static volatile j:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field private static volatile k:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->e:Z

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/bytedance/sdk/openadsdk/h/e;->g:I

    const/4 v0, 0x3

    .line 4
    sput v0, Lcom/bytedance/sdk/openadsdk/h/e;->h:I

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->k:Landroid/content/Context;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .line 3
    sput p0, Lcom/bytedance/sdk/openadsdk/h/e;->g:I

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/h/a/c;Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->k:Landroid/content/Context;

    .line 5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->a:Lcom/bytedance/sdk/openadsdk/h/a/b;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DiskLruCache \u548c DiskCache \u4e0d\u80fd\u4f7f\u7528\u76f8\u540c\u7684\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    :goto_0
    sput-object p0, Lcom/bytedance/sdk/openadsdk/h/e;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/b/c;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/h/e;->j:Lcom/bytedance/sdk/openadsdk/h/b/c;

    .line 11
    sget-object p1, Lcom/bytedance/sdk/openadsdk/h/e;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/e$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/e$1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(Lcom/bytedance/sdk/openadsdk/h/a/c$a;)V

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f;->a()Lcom/bytedance/sdk/openadsdk/h/f;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;)V

    .line 14
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->j:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)V

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;)V

    .line 17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/h/e;->j:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)V

    return-void

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DiskLruCache and Context can\'t be null !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/h/e;->e:Z

    return-void
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/h/a/c;
    .locals 1

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    return-object v0
.end method

.method public static b(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/h/e;->f:Z

    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/h/a/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->a:Lcom/bytedance/sdk/openadsdk/h/a/b;

    return-object v0
.end method

.method static synthetic d()Lcom/bytedance/sdk/openadsdk/h/b/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->j:Lcom/bytedance/sdk/openadsdk/h/b/c;

    return-object v0
.end method
