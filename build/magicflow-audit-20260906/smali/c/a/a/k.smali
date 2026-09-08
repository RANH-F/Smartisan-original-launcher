.class public Lc/a/a/k;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/k$e;,
        Lc/a/a/k$d;,
        Lc/a/a/k$c;,
        Lc/a/a/k$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/manager/g;

.field private final c:Lcom/bumptech/glide/manager/l;

.field private final d:Lc/a/a/h;

.field private final e:Lc/a/a/k$d;

.field private f:Lc/a/a/k$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/k;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/bumptech/glide/manager/l;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/l;-><init>()V

    new-instance v5, Lcom/bumptech/glide/manager/d;

    invoke-direct {v5}, Lcom/bumptech/glide/manager/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lc/a/a/k;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lc/a/a/k;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lc/a/a/k;->b:Lcom/bumptech/glide/manager/g;

    .line 5
    iput-object p4, p0, Lc/a/a/k;->c:Lcom/bumptech/glide/manager/l;

    .line 6
    invoke-static {p1}, Lc/a/a/h;->a(Landroid/content/Context;)Lc/a/a/h;

    move-result-object p3

    iput-object p3, p0, Lc/a/a/k;->d:Lc/a/a/h;

    .line 7
    new-instance p3, Lc/a/a/k$d;

    invoke-direct {p3, p0}, Lc/a/a/k$d;-><init>(Lc/a/a/k;)V

    iput-object p3, p0, Lc/a/a/k;->e:Lc/a/a/k$d;

    .line 8
    new-instance p3, Lc/a/a/k$e;

    invoke-direct {p3, p4}, Lc/a/a/k$e;-><init>(Lcom/bumptech/glide/manager/l;)V

    invoke-virtual {p5, p1, p3}, Lcom/bumptech/glide/manager/d;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)Lcom/bumptech/glide/manager/c;

    move-result-object p1

    .line 9
    invoke-static {}, Lc/a/a/t/h;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lc/a/a/k$a;

    invoke-direct {p4, p0, p2}, Lc/a/a/k$a;-><init>(Lc/a/a/k;Lcom/bumptech/glide/manager/g;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/g;->a(Lcom/bumptech/glide/manager/h;)V

    .line 12
    :goto_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/manager/g;->a(Lcom/bumptech/glide/manager/h;)V

    return-void
.end method

.method static synthetic a(Lc/a/a/k;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/a/a/k;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/Class;)Lc/a/a/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/a/a/e<",
            "TT;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lc/a/a/k;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lc/a/a/h;->b(Ljava/lang/Class;Landroid/content/Context;)Lc/a/a/o/j/l;

    move-result-object v3

    .line 8
    iget-object v0, p0, Lc/a/a/k;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lc/a/a/h;->a(Ljava/lang/Class;Landroid/content/Context;)Lc/a/a/o/j/l;

    move-result-object v4

    if-eqz p1, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must provide a Model of a type for"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/a/a/k;->e:Lc/a/a/k$d;

    new-instance v10, Lc/a/a/e;

    iget-object v5, p0, Lc/a/a/k;->a:Landroid/content/Context;

    iget-object v6, p0, Lc/a/a/k;->d:Lc/a/a/h;

    iget-object v7, p0, Lc/a/a/k;->c:Lcom/bumptech/glide/manager/l;

    iget-object v8, p0, Lc/a/a/k;->b:Lcom/bumptech/glide/manager/g;

    move-object v1, v10

    move-object v2, p1

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lc/a/a/e;-><init>(Ljava/lang/Class;Lc/a/a/o/j/l;Lc/a/a/o/j/l;Landroid/content/Context;Lc/a/a/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;Lc/a/a/k$d;)V

    invoke-virtual {v0, v10}, Lc/a/a/k$d;->a(Lc/a/a/f;)Lc/a/a/f;

    check-cast v10, Lc/a/a/e;

    return-object v10
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0}, Lc/a/a/k;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lc/a/a/k;)Lc/a/a/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/k;->d:Lc/a/a/h;

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic c(Lc/a/a/k;)Lcom/bumptech/glide/manager/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/k;->c:Lcom/bumptech/glide/manager/l;

    return-object p0
.end method

.method static synthetic d(Lc/a/a/k;)Lcom/bumptech/glide/manager/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/k;->b:Lcom/bumptech/glide/manager/g;

    return-object p0
.end method

.method static synthetic e(Lc/a/a/k;)Lc/a/a/k$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/k;->e:Lc/a/a/k$d;

    return-object p0
.end method

.method static synthetic f(Lc/a/a/k;)Lc/a/a/k$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/k;->f:Lc/a/a/k$b;

    return-object p0
.end method


# virtual methods
.method public a()Lc/a/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lc/a/a/k;->a(Ljava/lang/Class;)Lc/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lc/a/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/a/a/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lc/a/a/k;->a()Lc/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/d;->a(Ljava/lang/Object;)Lc/a/a/d;

    check-cast v0, Lc/a/a/e;

    return-object v0
.end method

.method public a(Lc/a/a/o/j/l;Ljava/lang/Class;)Lc/a/a/k$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/a/o/j/l<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/a/a/k$c<",
            "TA;TT;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lc/a/a/k$c;

    invoke-direct {v0, p0, p1, p2}, Lc/a/a/k$c;-><init>(Lc/a/a/k;Lc/a/a/o/j/l;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/a/a/k;->d:Lc/a/a/h;

    invoke-virtual {v0, p1}, Lc/a/a/h;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/a/a/k;->d:Lc/a/a/h;

    invoke-virtual {v0}, Lc/a/a/h;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    invoke-static {}, Lc/a/a/t/h;->a()V

    .line 3
    iget-object v0, p0, Lc/a/a/k;->c:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 2
    invoke-static {}, Lc/a/a/t/h;->a()V

    .line 3
    iget-object v0, p0, Lc/a/a/k;->c:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/k;->c:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->a()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/a/a/k;->d()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/a/a/k;->c()V

    return-void
.end method
