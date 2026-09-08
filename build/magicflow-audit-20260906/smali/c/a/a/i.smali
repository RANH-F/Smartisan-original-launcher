.class public Lc/a/a/i;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lc/a/a/o/i/c;

.field private c:Lc/a/a/o/i/m/c;

.field private d:Lc/a/a/o/i/n/h;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lc/a/a/o/a;

.field private h:Lc/a/a/o/i/n/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()Lc/a/a/h;
    .locals 7

    .line 1
    iget-object v0, p0, Lc/a/a/i;->e:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    new-instance v2, Lc/a/a/o/i/o/a;

    invoke-direct {v2, v0}, Lc/a/a/o/i/o/a;-><init>(I)V

    iput-object v2, p0, Lc/a/a/i;->e:Ljava/util/concurrent/ExecutorService;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/a/a/i;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/a/a/o/i/o/a;

    invoke-direct {v0, v1}, Lc/a/a/o/i/o/a;-><init>(I)V

    iput-object v0, p0, Lc/a/a/i;->f:Ljava/util/concurrent/ExecutorService;

    .line 6
    :cond_1
    new-instance v0, Lc/a/a/o/i/n/i;

    iget-object v1, p0, Lc/a/a/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc/a/a/o/i/n/i;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lc/a/a/i;->c:Lc/a/a/o/i/m/c;

    if-nez v1, :cond_3

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 9
    invoke-virtual {v0}, Lc/a/a/o/i/n/i;->a()I

    move-result v1

    .line 10
    new-instance v2, Lc/a/a/o/i/m/f;

    invoke-direct {v2, v1}, Lc/a/a/o/i/m/f;-><init>(I)V

    iput-object v2, p0, Lc/a/a/i;->c:Lc/a/a/o/i/m/c;

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Lc/a/a/o/i/m/d;

    invoke-direct {v1}, Lc/a/a/o/i/m/d;-><init>()V

    iput-object v1, p0, Lc/a/a/i;->c:Lc/a/a/o/i/m/c;

    .line 12
    :cond_3
    :goto_0
    iget-object v1, p0, Lc/a/a/i;->d:Lc/a/a/o/i/n/h;

    if-nez v1, :cond_4

    .line 13
    new-instance v1, Lc/a/a/o/i/n/g;

    invoke-virtual {v0}, Lc/a/a/o/i/n/i;->b()I

    move-result v0

    invoke-direct {v1, v0}, Lc/a/a/o/i/n/g;-><init>(I)V

    iput-object v1, p0, Lc/a/a/i;->d:Lc/a/a/o/i/n/h;

    .line 14
    :cond_4
    iget-object v0, p0, Lc/a/a/i;->h:Lc/a/a/o/i/n/a$a;

    if-nez v0, :cond_5

    .line 15
    new-instance v0, Lc/a/a/o/i/n/f;

    iget-object v1, p0, Lc/a/a/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc/a/a/o/i/n/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/a/a/i;->h:Lc/a/a/o/i/n/a$a;

    .line 16
    :cond_5
    iget-object v0, p0, Lc/a/a/i;->b:Lc/a/a/o/i/c;

    if-nez v0, :cond_6

    .line 17
    new-instance v0, Lc/a/a/o/i/c;

    iget-object v1, p0, Lc/a/a/i;->d:Lc/a/a/o/i/n/h;

    iget-object v2, p0, Lc/a/a/i;->h:Lc/a/a/o/i/n/a$a;

    iget-object v3, p0, Lc/a/a/i;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lc/a/a/i;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lc/a/a/o/i/c;-><init>(Lc/a/a/o/i/n/h;Lc/a/a/o/i/n/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lc/a/a/i;->b:Lc/a/a/o/i/c;

    .line 18
    :cond_6
    iget-object v0, p0, Lc/a/a/i;->g:Lc/a/a/o/a;

    if-nez v0, :cond_7

    .line 19
    sget-object v0, Lc/a/a/o/a;->d:Lc/a/a/o/a;

    iput-object v0, p0, Lc/a/a/i;->g:Lc/a/a/o/a;

    .line 20
    :cond_7
    new-instance v0, Lc/a/a/h;

    iget-object v2, p0, Lc/a/a/i;->b:Lc/a/a/o/i/c;

    iget-object v3, p0, Lc/a/a/i;->d:Lc/a/a/o/i/n/h;

    iget-object v4, p0, Lc/a/a/i;->c:Lc/a/a/o/i/m/c;

    iget-object v5, p0, Lc/a/a/i;->a:Landroid/content/Context;

    iget-object v6, p0, Lc/a/a/i;->g:Lc/a/a/o/a;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lc/a/a/h;-><init>(Lc/a/a/o/i/c;Lc/a/a/o/i/n/h;Lc/a/a/o/i/m/c;Landroid/content/Context;Lc/a/a/o/a;)V

    return-object v0
.end method
