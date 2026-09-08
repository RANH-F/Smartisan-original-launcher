.class public Lc/a/a/o/i/n/d;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lc/a/a/o/i/n/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/i/n/d$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lc/a/a/o/i/n/d$a;


# direct methods
.method public constructor <init>(Lc/a/a/o/i/n/d$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lc/a/a/o/i/n/d;->a:I

    .line 3
    iput-object p1, p0, Lc/a/a/o/i/n/d;->b:Lc/a/a/o/i/n/d$a;

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/o/i/n/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/n/d;->b:Lc/a/a/o/i/n/d$a;

    invoke-interface {v0}, Lc/a/a/o/i/n/d$a;->a()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v1

    .line 3
    :cond_2
    iget v1, p0, Lc/a/a/o/i/n/d;->a:I

    invoke-static {v0, v1}, Lc/a/a/o/i/n/e;->a(Ljava/io/File;I)Lc/a/a/o/i/n/a;

    move-result-object v0

    return-object v0
.end method
