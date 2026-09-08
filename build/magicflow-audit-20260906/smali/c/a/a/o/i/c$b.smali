.class Lc/a/a/o/i/c$b;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lc/a/a/o/i/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lc/a/a/o/i/n/a$a;

.field private volatile b:Lc/a/a/o/i/n/a;


# direct methods
.method public constructor <init>(Lc/a/a/o/i/n/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/i/c$b;->a:Lc/a/a/o/i/n/a$a;

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/o/i/n/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/c$b;->b:Lc/a/a/o/i/n/a;

    if-nez v0, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/a/a/o/i/c$b;->b:Lc/a/a/o/i/n/a;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/a/a/o/i/c$b;->a:Lc/a/a/o/i/n/a$a;

    invoke-interface {v0}, Lc/a/a/o/i/n/a$a;->a()Lc/a/a/o/i/n/a;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/o/i/c$b;->b:Lc/a/a/o/i/n/a;

    .line 5
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/c$b;->b:Lc/a/a/o/i/n/a;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lc/a/a/o/i/n/b;

    invoke-direct {v0}, Lc/a/a/o/i/n/b;-><init>()V

    iput-object v0, p0, Lc/a/a/o/i/c$b;->b:Lc/a/a/o/i/n/a;

    .line 7
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lc/a/a/o/i/c$b;->b:Lc/a/a/o/i/n/a;

    return-object v0
.end method
