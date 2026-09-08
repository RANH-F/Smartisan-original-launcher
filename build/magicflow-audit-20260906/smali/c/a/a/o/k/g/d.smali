.class public Lc/a/a/o/k/g/d;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lc/a/a/q/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/k/g/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/q/b<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lc/a/a/o/k/g/d$b;


# instance fields
.field private final a:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/a/a/o/k/g/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/a/a/o/k/g/d$b;-><init>(Lc/a/a/o/k/g/d$a;)V

    sput-object v0, Lc/a/a/o/k/g/d;->c:Lc/a/a/o/k/g/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/o/k/g/a;

    invoke-direct {v0}, Lc/a/a/o/k/g/a;-><init>()V

    iput-object v0, p0, Lc/a/a/o/k/g/d;->a:Lc/a/a/o/e;

    .line 3
    new-instance v0, Lc/a/a/o/j/o;

    invoke-direct {v0}, Lc/a/a/o/j/o;-><init>()V

    iput-object v0, p0, Lc/a/a/o/k/g/d;->b:Lc/a/a/o/b;

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/g/d;->a:Lc/a/a/o/e;

    return-object v0
.end method

.method public b()Lc/a/a/o/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/g/d;->b:Lc/a/a/o/b;

    return-object v0
.end method

.method public e()Lc/a/a/o/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/f<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/a/a/o/k/b;->a()Lc/a/a/o/k/b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/a/a/o/k/g/d;->c:Lc/a/a/o/k/g/d$b;

    return-object v0
.end method
