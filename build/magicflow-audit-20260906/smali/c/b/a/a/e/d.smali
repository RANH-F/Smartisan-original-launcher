.class public Lc/b/a/a/e/d;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/e/d$d;,
        Lc/b/a/a/e/d$c;,
        Lc/b/a/a/e/d$b;
    }
.end annotation


# instance fields
.field private a:Lc/b/a/a/e/d$b;

.field private b:Lc/b/a/a/e/d$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lc/b/a/a/e/d$b;->d:Lc/b/a/a/e/d$b;

    iput-object v0, p0, Lc/b/a/a/e/d;->a:Lc/b/a/a/e/d$b;

    .line 4
    new-instance v0, Lc/b/a/a/e/a;

    invoke-direct {v0}, Lc/b/a/a/e/a;-><init>()V

    iput-object v0, p0, Lc/b/a/a/e/d;->b:Lc/b/a/a/e/d$c;

    return-void
.end method

.method synthetic constructor <init>(Lc/b/a/a/e/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/a/e/d;-><init>()V

    return-void
.end method

.method public static a(Lc/b/a/a/e/d$b;)V
    .locals 2

    .line 1
    const-class v0, Lc/b/a/a/e/d;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lc/b/a/a/e/d$d;->a()Lc/b/a/a/e/d;

    move-result-object v1

    iput-object p0, v1, Lc/b/a/a/e/d;->a:Lc/b/a/a/e/d$b;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {}, Lc/b/a/a/e/d$d;->a()Lc/b/a/a/e/d;

    move-result-object v0

    iget-object v0, v0, Lc/b/a/a/e/d;->a:Lc/b/a/a/e/d$b;

    sget-object v1, Lc/b/a/a/e/d$b;->c:Lc/b/a/a/e/d$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 5
    invoke-static {}, Lc/b/a/a/e/d$d;->a()Lc/b/a/a/e/d;

    move-result-object v0

    iget-object v0, v0, Lc/b/a/a/e/d;->b:Lc/b/a/a/e/d$c;

    invoke-interface {v0, p0, p1}, Lc/b/a/a/e/d$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lc/b/a/a/e/d$d;->a()Lc/b/a/a/e/d;

    move-result-object v0

    iget-object v0, v0, Lc/b/a/a/e/d;->a:Lc/b/a/a/e/d$b;

    sget-object v1, Lc/b/a/a/e/d$b;->a:Lc/b/a/a/e/d$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-static {}, Lc/b/a/a/e/d$d;->a()Lc/b/a/a/e/d;

    move-result-object v0

    iget-object v0, v0, Lc/b/a/a/e/d;->b:Lc/b/a/a/e/d$c;

    invoke-interface {v0, p0, p1}, Lc/b/a/a/e/d$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
