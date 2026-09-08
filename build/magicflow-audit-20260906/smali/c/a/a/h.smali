.class public Lc/a/a/h;
.super Ljava/lang/Object;
.source "Glide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/h$a;
    }
.end annotation


# static fields
.field private static volatile l:Lc/a/a/h;


# instance fields
.field private final a:Lc/a/a/o/j/c;

.field private final b:Lc/a/a/o/i/c;

.field private final c:Lc/a/a/o/i/m/c;

.field private final d:Lc/a/a/o/i/n/h;

.field private final e:Lc/a/a/r/h/f;

.field private final f:Lc/a/a/o/k/j/d;

.field private final g:Lc/a/a/q/c;

.field private final h:Lc/a/a/o/k/e/e;

.field private final i:Lc/a/a/o/k/i/f;

.field private final j:Lc/a/a/o/k/e/i;

.field private final k:Lc/a/a/o/k/i/f;


# direct methods
.method constructor <init>(Lc/a/a/o/i/c;Lc/a/a/o/i/n/h;Lc/a/a/o/i/m/c;Landroid/content/Context;Lc/a/a/o/a;)V
    .locals 4

    .line 1
    const-class v0, Lc/a/a/o/k/i/a;

    const-class v1, Lc/a/a/o/j/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Lc/a/a/r/h/f;

    invoke-direct {v2}, Lc/a/a/r/h/f;-><init>()V

    iput-object v2, p0, Lc/a/a/h;->e:Lc/a/a/r/h/f;

    .line 3
    new-instance v2, Lc/a/a/o/k/j/d;

    invoke-direct {v2}, Lc/a/a/o/k/j/d;-><init>()V

    iput-object v2, p0, Lc/a/a/h;->f:Lc/a/a/o/k/j/d;

    .line 4
    iput-object p1, p0, Lc/a/a/h;->b:Lc/a/a/o/i/c;

    .line 5
    iput-object p3, p0, Lc/a/a/h;->c:Lc/a/a/o/i/m/c;

    .line 6
    iput-object p2, p0, Lc/a/a/h;->d:Lc/a/a/o/i/n/h;

    .line 7
    new-instance p1, Lc/a/a/o/j/c;

    invoke-direct {p1, p4}, Lc/a/a/o/j/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lc/a/a/h;->a:Lc/a/a/o/j/c;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    new-instance p1, Lc/a/a/o/i/p/a;

    invoke-direct {p1, p2, p3, p5}, Lc/a/a/o/i/p/a;-><init>(Lc/a/a/o/i/n/h;Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V

    .line 10
    new-instance p1, Lc/a/a/q/c;

    invoke-direct {p1}, Lc/a/a/q/c;-><init>()V

    iput-object p1, p0, Lc/a/a/h;->g:Lc/a/a/q/c;

    .line 11
    new-instance p1, Lc/a/a/o/k/e/p;

    invoke-direct {p1, p3, p5}, Lc/a/a/o/k/e/p;-><init>(Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V

    .line 12
    iget-object p2, p0, Lc/a/a/h;->g:Lc/a/a/q/c;

    const-class v2, Ljava/io/InputStream;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v2, v3, p1}, Lc/a/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/q/b;)V

    .line 13
    new-instance p2, Lc/a/a/o/k/e/g;

    invoke-direct {p2, p3, p5}, Lc/a/a/o/k/e/g;-><init>(Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V

    .line 14
    iget-object p5, p0, Lc/a/a/h;->g:Lc/a/a/q/c;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {p5, v2, v3, p2}, Lc/a/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/q/b;)V

    .line 15
    new-instance p5, Lc/a/a/o/k/e/n;

    invoke-direct {p5, p1, p2}, Lc/a/a/o/k/e/n;-><init>(Lc/a/a/q/b;Lc/a/a/q/b;)V

    .line 16
    iget-object p1, p0, Lc/a/a/h;->g:Lc/a/a/q/c;

    const-class p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, p2, p5}, Lc/a/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/q/b;)V

    .line 17
    new-instance p1, Lc/a/a/o/k/h/c;

    invoke-direct {p1, p4, p3}, Lc/a/a/o/k/h/c;-><init>(Landroid/content/Context;Lc/a/a/o/i/m/c;)V

    .line 18
    iget-object p2, p0, Lc/a/a/h;->g:Lc/a/a/q/c;

    const-class v2, Ljava/io/InputStream;

    const-class v3, Lc/a/a/o/k/h/b;

    invoke-virtual {p2, v2, v3, p1}, Lc/a/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/q/b;)V

    .line 19
    iget-object p2, p0, Lc/a/a/h;->g:Lc/a/a/q/c;

    new-instance v2, Lc/a/a/o/k/i/g;

    invoke-direct {v2, p5, p1, p3}, Lc/a/a/o/k/i/g;-><init>(Lc/a/a/q/b;Lc/a/a/q/b;Lc/a/a/o/i/m/c;)V

    invoke-virtual {p2, v1, v0, v2}, Lc/a/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/q/b;)V

    .line 20
    iget-object p1, p0, Lc/a/a/h;->g:Lc/a/a/q/c;

    const-class p2, Ljava/io/InputStream;

    const-class p5, Ljava/io/File;

    new-instance v1, Lc/a/a/o/k/g/d;

    invoke-direct {v1}, Lc/a/a/o/k/g/d;-><init>()V

    invoke-virtual {p1, p2, p5, v1}, Lc/a/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/q/b;)V

    .line 21
    const-class p1, Ljava/io/File;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lc/a/a/o/j/s/a$a;

    invoke-direct {p5}, Lc/a/a/o/j/s/a$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 22
    const-class p1, Ljava/io/File;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/a/a/o/j/t/c$a;

    invoke-direct {p5}, Lc/a/a/o/j/t/c$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 23
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lc/a/a/o/j/s/c$a;

    invoke-direct {p5}, Lc/a/a/o/j/s/c$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 24
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/a/a/o/j/t/e$a;

    invoke-direct {p5}, Lc/a/a/o/j/t/e$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 25
    const-class p1, Ljava/lang/Integer;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lc/a/a/o/j/s/c$a;

    invoke-direct {p5}, Lc/a/a/o/j/s/c$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 26
    const-class p1, Ljava/lang/Integer;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/a/a/o/j/t/e$a;

    invoke-direct {p5}, Lc/a/a/o/j/t/e$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 27
    const-class p1, Ljava/lang/String;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lc/a/a/o/j/s/d$a;

    invoke-direct {p5}, Lc/a/a/o/j/s/d$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 28
    const-class p1, Ljava/lang/String;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/a/a/o/j/t/f$a;

    invoke-direct {p5}, Lc/a/a/o/j/t/f$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 29
    const-class p1, Landroid/net/Uri;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lc/a/a/o/j/s/e$a;

    invoke-direct {p5}, Lc/a/a/o/j/s/e$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 30
    const-class p1, Landroid/net/Uri;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/a/a/o/j/t/g$a;

    invoke-direct {p5}, Lc/a/a/o/j/t/g$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 31
    const-class p1, Ljava/net/URL;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/a/a/o/j/t/h$a;

    invoke-direct {p5}, Lc/a/a/o/j/t/h$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 32
    const-class p1, Lc/a/a/o/j/d;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/a/a/o/j/t/a$a;

    invoke-direct {p5}, Lc/a/a/o/j/t/a$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 33
    const-class p1, [B

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/a/a/o/j/t/b$a;

    invoke-direct {p5}, Lc/a/a/o/j/t/b$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V

    .line 34
    iget-object p1, p0, Lc/a/a/h;->f:Lc/a/a/o/k/j/d;

    const-class p2, Landroid/graphics/Bitmap;

    const-class p5, Lc/a/a/o/k/e/j;

    new-instance v1, Lc/a/a/o/k/j/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lc/a/a/o/k/j/b;-><init>(Landroid/content/res/Resources;Lc/a/a/o/i/m/c;)V

    invoke-virtual {p1, p2, p5, v1}, Lc/a/a/o/k/j/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/k/j/c;)V

    .line 35
    iget-object p1, p0, Lc/a/a/h;->f:Lc/a/a/o/k/j/d;

    const-class p2, Lc/a/a/o/k/f/b;

    new-instance p5, Lc/a/a/o/k/j/a;

    new-instance v1, Lc/a/a/o/k/j/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {v1, p4, p3}, Lc/a/a/o/k/j/b;-><init>(Landroid/content/res/Resources;Lc/a/a/o/i/m/c;)V

    invoke-direct {p5, v1}, Lc/a/a/o/k/j/a;-><init>(Lc/a/a/o/k/j/c;)V

    invoke-virtual {p1, v0, p2, p5}, Lc/a/a/o/k/j/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/k/j/c;)V

    .line 36
    new-instance p1, Lc/a/a/o/k/e/e;

    invoke-direct {p1, p3}, Lc/a/a/o/k/e/e;-><init>(Lc/a/a/o/i/m/c;)V

    iput-object p1, p0, Lc/a/a/h;->h:Lc/a/a/o/k/e/e;

    .line 37
    new-instance p1, Lc/a/a/o/k/i/f;

    iget-object p2, p0, Lc/a/a/h;->h:Lc/a/a/o/k/e/e;

    invoke-direct {p1, p3, p2}, Lc/a/a/o/k/i/f;-><init>(Lc/a/a/o/i/m/c;Lc/a/a/o/g;)V

    iput-object p1, p0, Lc/a/a/h;->i:Lc/a/a/o/k/i/f;

    .line 38
    new-instance p1, Lc/a/a/o/k/e/i;

    invoke-direct {p1, p3}, Lc/a/a/o/k/e/i;-><init>(Lc/a/a/o/i/m/c;)V

    iput-object p1, p0, Lc/a/a/h;->j:Lc/a/a/o/k/e/i;

    .line 39
    new-instance p1, Lc/a/a/o/k/i/f;

    iget-object p2, p0, Lc/a/a/h;->j:Lc/a/a/o/k/e/i;

    invoke-direct {p1, p3, p2}, Lc/a/a/o/k/i/f;-><init>(Lc/a/a/o/i/m/c;Lc/a/a/o/g;)V

    iput-object p1, p0, Lc/a/a/h;->k:Lc/a/a/o/k/i/f;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/a/a/h;
    .locals 5

    .line 1
    sget-object v0, Lc/a/a/h;->l:Lc/a/a/h;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lc/a/a/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/a/a/h;->l:Lc/a/a/h;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    new-instance v1, Lc/a/a/p/b;

    invoke-direct {v1, p0}, Lc/a/a/p/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lc/a/a/p/b;->a()Ljava/util/List;

    move-result-object v1

    .line 6
    new-instance v2, Lc/a/a/i;

    invoke-direct {v2, p0}, Lc/a/a/i;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/a/a/p/a;

    .line 8
    invoke-interface {v4, p0, v2}, Lc/a/a/p/a;->a(Landroid/content/Context;Lc/a/a/i;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Lc/a/a/i;->a()Lc/a/a/h;

    move-result-object v2

    sput-object v2, Lc/a/a/h;->l:Lc/a/a/h;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/a/a/p/a;

    .line 11
    sget-object v3, Lc/a/a/h;->l:Lc/a/a/h;

    invoke-interface {v2, p0, v3}, Lc/a/a/p/a;->a(Landroid/content/Context;Lc/a/a/h;)V

    goto :goto_1

    .line 12
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 13
    :cond_2
    :goto_2
    sget-object p0, Lc/a/a/h;->l:Lc/a/a/h;

    return-object p0
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lc/a/a/o/j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lc/a/a/o/j/l<",
            "TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 33
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lc/a/a/o/j/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lc/a/a/o/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lc/a/a/o/j/l<",
            "TT;TY;>;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 p0, 0x3

    const-string p1, "Glide"

    .line 30
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Unable to load null model, setting placeholder only"

    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_1
    invoke-static {p2}, Lc/a/a/h;->a(Landroid/content/Context;)Lc/a/a/h;

    move-result-object p2

    invoke-direct {p2}, Lc/a/a/h;->f()Lc/a/a/o/j/c;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lc/a/a/o/j/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/o/j/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .line 26
    new-instance v0, Lc/a/a/h$a;

    invoke-direct {v0, p0}, Lc/a/a/h$a;-><init>(Landroid/view/View;)V

    .line 27
    invoke-static {v0}, Lc/a/a/h;->a(Lc/a/a/r/h/j;)V

    return-void
.end method

.method public static a(Lc/a/a/r/h/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/h/j<",
            "*>;)V"
        }
    .end annotation

    .line 22
    invoke-static {}, Lc/a/a/t/h;->a()V

    .line 23
    invoke-interface {p0}, Lc/a/a/r/h/j;->getRequest()Lc/a/a/r/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0}, Lc/a/a/r/b;->clear()V

    const/4 v0, 0x0

    .line 25
    invoke-interface {p0, v0}, Lc/a/a/r/h/j;->setRequest(Lc/a/a/r/b;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Lc/a/a/k;
    .locals 1

    .line 4
    invoke-static {}, Lcom/bumptech/glide/manager/j;->a()Lcom/bumptech/glide/manager/j;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/j;->a(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lc/a/a/o/j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lc/a/a/o/j/l<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lc/a/a/o/j/l;

    move-result-object p0

    return-object p0
.end method

.method private f()Lc/a/a/o/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/h;->a:Lc/a/a/o/j/c;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/q/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lc/a/a/q/b<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lc/a/a/h;->g:Lc/a/a/q/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/q/b;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/a/a/r/h/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lc/a/a/r/h/j<",
            "TR;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lc/a/a/h;->e:Lc/a/a/r/h/f;

    invoke-virtual {v0, p1, p2}, Lc/a/a/r/h/f;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/a/a/r/h/j;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 16
    invoke-static {}, Lc/a/a/t/h;->a()V

    .line 17
    iget-object v0, p0, Lc/a/a/h;->d:Lc/a/a/o/i/n/h;

    invoke-interface {v0}, Lc/a/a/o/i/n/h;->a()V

    .line 18
    iget-object v0, p0, Lc/a/a/h;->c:Lc/a/a/o/i/m/c;

    invoke-interface {v0}, Lc/a/a/o/i/m/c;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 19
    invoke-static {}, Lc/a/a/t/h;->a()V

    .line 20
    iget-object v0, p0, Lc/a/a/h;->d:Lc/a/a/o/i/n/h;

    invoke-interface {v0, p1}, Lc/a/a/o/i/n/h;->a(I)V

    .line 21
    iget-object v0, p0, Lc/a/a/h;->c:Lc/a/a/o/i/m/c;

    invoke-interface {v0, p1}, Lc/a/a/o/i/m/c;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lc/a/a/o/j/m<",
            "TT;TY;>;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lc/a/a/h;->a:Lc/a/a/o/j/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/o/j/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/j/m;)Lc/a/a/o/j/m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p1}, Lc/a/a/o/j/m;->a()V

    :cond_0
    return-void
.end method

.method public b()Lc/a/a/o/i/m/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/h;->c:Lc/a/a/o/i/m/c;

    return-object v0
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/o/k/j/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lc/a/a/o/k/j/c<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/a/a/h;->f:Lc/a/a/o/k/j/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/o/k/j/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/o/k/j/c;

    move-result-object p1

    return-object p1
.end method

.method c()Lc/a/a/o/k/i/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/h;->i:Lc/a/a/o/k/i/f;

    return-object v0
.end method

.method d()Lc/a/a/o/k/i/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/h;->k:Lc/a/a/o/k/i/f;

    return-object v0
.end method

.method e()Lc/a/a/o/i/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/h;->b:Lc/a/a/o/i/c;

    return-object v0
.end method
