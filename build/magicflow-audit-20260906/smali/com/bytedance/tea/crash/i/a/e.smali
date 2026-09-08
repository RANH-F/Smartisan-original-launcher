.class public Lcom/bytedance/tea/crash/i/a/e;
.super Ljava/lang/Object;
.source "CrashContextAssembly.java"


# static fields
.field private static volatile e:Lcom/bytedance/tea/crash/i/a/e;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/tea/crash/f;",
            "Lcom/bytedance/tea/crash/i/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bytedance/tea/crash/i/a/b;

.field private d:Lcom/bytedance/tea/crash/i/a/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/i/a/e;->b:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/e;->a:Landroid/content/Context;

    .line 4
    new-instance p1, Lcom/bytedance/tea/crash/i/a/b;

    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/e;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/tea/crash/i/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/e;->c:Lcom/bytedance/tea/crash/i/a/b;

    .line 5
    new-instance p1, Lcom/bytedance/tea/crash/i/a/d;

    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/e;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/tea/crash/i/a/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/e;->d:Lcom/bytedance/tea/crash/i/a/d;

    return-void
.end method

.method private a(Lcom/bytedance/tea/crash/f;)Lcom/bytedance/tea/crash/i/a/c;
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/i/a/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    sget-object v1, Lcom/bytedance/tea/crash/i/a/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/bytedance/tea/crash/i/a/f;

    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/e;->c:Lcom/bytedance/tea/crash/i/a/b;

    iget-object v3, p0, Lcom/bytedance/tea/crash/i/a/e;->d:Lcom/bytedance/tea/crash/i/a/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/i/a/f;-><init>(Landroid/content/Context;Lcom/bytedance/tea/crash/i/a/b;Lcom/bytedance/tea/crash/i/a/d;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lcom/bytedance/tea/crash/i/a/a;

    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/e;->c:Lcom/bytedance/tea/crash/i/a/b;

    iget-object v3, p0, Lcom/bytedance/tea/crash/i/a/e;->d:Lcom/bytedance/tea/crash/i/a/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/i/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/tea/crash/i/a/b;Lcom/bytedance/tea/crash/i/a/d;)V

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Lcom/bytedance/tea/crash/i/a/g;

    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/tea/crash/i/a/e;->c:Lcom/bytedance/tea/crash/i/a/b;

    iget-object v3, p0, Lcom/bytedance/tea/crash/i/a/e;->d:Lcom/bytedance/tea/crash/i/a/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/i/a/g;-><init>(Landroid/content/Context;Lcom/bytedance/tea/crash/i/a/b;Lcom/bytedance/tea/crash/i/a/d;)V

    :goto_0
    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public static a()Lcom/bytedance/tea/crash/i/a/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/i/a/e;->e:Lcom/bytedance/tea/crash/i/a/e;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/bytedance/tea/crash/i/a/e;->e:Lcom/bytedance/tea/crash/i/a/e;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CrashContextAssembly not init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/bytedance/tea/crash/i/a/e;->e:Lcom/bytedance/tea/crash/i/a/e;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/bytedance/tea/crash/i/a/e;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/i/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/tea/crash/i/a/e;->e:Lcom/bytedance/tea/crash/i/a/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/f;Lcom/bytedance/tea/crash/e/a;)Lcom/bytedance/tea/crash/e/a;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/i/a/e;->a(Lcom/bytedance/tea/crash/f;)Lcom/bytedance/tea/crash/i/a/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1, p2}, Lcom/bytedance/tea/crash/i/a/c;->a(Lcom/bytedance/tea/crash/e/a;)Lcom/bytedance/tea/crash/e/a;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method
