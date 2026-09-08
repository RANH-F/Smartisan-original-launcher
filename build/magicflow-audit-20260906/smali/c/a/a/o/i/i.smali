.class Lc/a/a/o/i/i;
.super Ljava/lang/Object;
.source "EngineRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lc/a/a/o/i/o/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/i/i$a;,
        Lc/a/a/o/i/i$b;
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/j;

.field private final b:Lc/a/a/o/i/i$a;

.field private final c:Lc/a/a/o/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/i/a<",
            "***>;"
        }
    .end annotation
.end field

.field private d:Lc/a/a/o/i/i$b;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lc/a/a/o/i/i$a;Lc/a/a/o/i/a;Lc/a/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/i$a;",
            "Lc/a/a/o/i/a<",
            "***>;",
            "Lc/a/a/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/i/i;->b:Lc/a/a/o/i/i$a;

    .line 3
    iput-object p2, p0, Lc/a/a/o/i/i;->c:Lc/a/a/o/i/a;

    .line 4
    sget-object p1, Lc/a/a/o/i/i$b;->a:Lc/a/a/o/i/i$b;

    iput-object p1, p0, Lc/a/a/o/i/i;->d:Lc/a/a/o/i/i$b;

    .line 5
    iput-object p3, p0, Lc/a/a/o/i/i;->a:Lc/a/a/j;

    return-void
.end method

.method private a(Lc/a/a/o/i/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/i;->b:Lc/a/a/o/i/i$a;

    invoke-interface {v0, p1}, Lc/a/a/r/e;->a(Lc/a/a/o/i/k;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lc/a/a/o/i/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lc/a/a/o/i/i$b;->b:Lc/a/a/o/i/i$b;

    iput-object p1, p0, Lc/a/a/o/i/i;->d:Lc/a/a/o/i/i$b;

    .line 4
    iget-object p1, p0, Lc/a/a/o/i/i;->b:Lc/a/a/o/i/i$a;

    invoke-interface {p1, p0}, Lc/a/a/o/i/i$a;->a(Lc/a/a/o/i/i;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/i;->b:Lc/a/a/o/i/i$a;

    invoke-interface {v0, p1}, Lc/a/a/r/e;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private c()Lc/a/a/o/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/i/k<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/a/a/o/i/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lc/a/a/o/i/i;->d()Lc/a/a/o/i/k;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lc/a/a/o/i/i;->e()Lc/a/a/o/i/k;

    move-result-object v0

    return-object v0
.end method

.method private d()Lc/a/a/o/i/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/i/k<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/a/a/o/i/i;->c:Lc/a/a/o/i/a;

    invoke-virtual {v0}, Lc/a/a/o/i/a;->c()Lc/a/a/o/i/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "EngineRunnable"

    .line 2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception decoding result from cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/a/a/o/i/i;->c:Lc/a/a/o/i/a;

    invoke-virtual {v0}, Lc/a/a/o/i/a;->d()Lc/a/a/o/i/k;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private e()Lc/a/a/o/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/i/k<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/i;->c:Lc/a/a/o/i/a;

    invoke-virtual {v0}, Lc/a/a/o/i/a;->b()Lc/a/a/o/i/k;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/i;->d:Lc/a/a/o/i/i$b;

    sget-object v1, Lc/a/a/o/i/i$b;->a:Lc/a/a/o/i/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 6
    iget-object v0, p0, Lc/a/a/o/i/i;->a:Lc/a/a/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/a/a/o/i/i;->e:Z

    .line 2
    iget-object v0, p0, Lc/a/a/o/i/i;->c:Lc/a/a/o/i/a;

    invoke-virtual {v0}, Lc/a/a/o/i/a;->a()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/a/a/o/i/i;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lc/a/a/o/i/i;->c()Lc/a/a/o/i/k;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    const-string v3, "EngineRunnable"

    .line 3
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Exception decoding"

    .line 4
    invoke-static {v3, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lc/a/a/o/i/i;->e:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lc/a/a/o/i/k;->a()V

    :cond_2
    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 7
    invoke-direct {p0, v1}, Lc/a/a/o/i/i;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 8
    :cond_4
    invoke-direct {p0, v0}, Lc/a/a/o/i/i;->a(Lc/a/a/o/i/k;)V

    :goto_1
    return-void
.end method
