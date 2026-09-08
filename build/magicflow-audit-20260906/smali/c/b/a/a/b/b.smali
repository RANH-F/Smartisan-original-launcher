.class public Lc/b/a/a/b/b;
.super Ljava/lang/Object;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/b/b$c;,
        Lc/b/a/a/b/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/b/a/a/b/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Lc/b/a/a/d/o;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/b/a/a/d/o;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/b/a/a/b/b;->b:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lc/b/a/a/b/b;->d:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lc/b/a/a/b/b;->c:Lc/b/a/a/d/o;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/a/b/b;->a:Ljava/util/Map;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/b/a/a/b/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lc/b/a/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileLoader"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lc/b/a/a/b/b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/b/b;->a:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lc/b/a/a/b/b$c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lc/b/a/a/b/b$c;->a()V

    .line 12
    iget-object v0, p0, Lc/b/a/a/b/b;->a:Ljava/util/Map;

    iget-object v1, p1, Lc/b/a/a/b/b$c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lc/b/a/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;Lc/b/a/a/b/b$b;Z)Lc/b/a/a/b/b$c;
    .locals 7

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lc/b/a/a/b/b$b;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lc/b/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 6
    new-instance v0, Lc/b/a/a/b/b$c;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lc/b/a/a/b/b$c;-><init>(Lc/b/a/a/b/b;Ljava/lang/String;Ljava/lang/String;Lc/b/a/a/b/b$b;Z)V

    return-object v0
.end method

.method static synthetic b(Lc/b/a/a/b/b;)Lc/b/a/a/d/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/b/b;->c:Lc/b/a/a/d/o;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lc/b/a/a/b/b$b;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lc/b/a/a/b/b;->a(Ljava/lang/String;Lc/b/a/a/b/b$b;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lc/b/a/a/b/b$b;Z)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lc/b/a/a/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lc/b/a/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a/b/b$c;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p2}, Lc/b/a/a/b/b$c;->a(Lc/b/a/a/b/b$b;)V

    return-void

    .line 7
    :cond_1
    invoke-interface {p2, p1}, Lc/b/a/a/b/b$b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 8
    iget-object p1, p0, Lc/b/a/a/b/b;->b:Landroid/os/Handler;

    new-instance p3, Lc/b/a/a/b/b$a;

    invoke-direct {p3, p0, p2, v0}, Lc/b/a/a/b/b$a;-><init>(Lc/b/a/a/b/b;Lc/b/a/a/b/b$b;Ljava/io/File;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lc/b/a/a/b/b;->b(Ljava/lang/String;Lc/b/a/a/b/b$b;Z)Lc/b/a/a/b/b$c;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lc/b/a/a/b/b;->a(Lc/b/a/a/b/b$c;)V

    return-void
.end method
