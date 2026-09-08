.class public Lc/a/a/o/k/h/c;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Lc/a/a/q/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/q/b<",
        "Ljava/io/InputStream;",
        "Lc/a/a/o/k/h/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/k/h/i;

.field private final b:Lc/a/a/o/k/h/j;

.field private final c:Lc/a/a/o/j/o;

.field private final d:Lc/a/a/o/k/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/k/g/c<",
            "Lc/a/a/o/k/h/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/a/a/o/i/m/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/o/k/h/i;

    invoke-direct {v0, p1, p2}, Lc/a/a/o/k/h/i;-><init>(Landroid/content/Context;Lc/a/a/o/i/m/c;)V

    iput-object v0, p0, Lc/a/a/o/k/h/c;->a:Lc/a/a/o/k/h/i;

    .line 3
    new-instance p1, Lc/a/a/o/k/g/c;

    iget-object v0, p0, Lc/a/a/o/k/h/c;->a:Lc/a/a/o/k/h/i;

    invoke-direct {p1, v0}, Lc/a/a/o/k/g/c;-><init>(Lc/a/a/o/e;)V

    iput-object p1, p0, Lc/a/a/o/k/h/c;->d:Lc/a/a/o/k/g/c;

    .line 4
    new-instance p1, Lc/a/a/o/k/h/j;

    invoke-direct {p1, p2}, Lc/a/a/o/k/h/j;-><init>(Lc/a/a/o/i/m/c;)V

    iput-object p1, p0, Lc/a/a/o/k/h/c;->b:Lc/a/a/o/k/h/j;

    .line 5
    new-instance p1, Lc/a/a/o/j/o;

    invoke-direct {p1}, Lc/a/a/o/j/o;-><init>()V

    iput-object p1, p0, Lc/a/a/o/k/h/c;->c:Lc/a/a/o/j/o;

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
            "Lc/a/a/o/k/h/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/h/c;->d:Lc/a/a/o/k/g/c;

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
    iget-object v0, p0, Lc/a/a/o/k/h/c;->c:Lc/a/a/o/j/o;

    return-object v0
.end method

.method public e()Lc/a/a/o/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/f<",
            "Lc/a/a/o/k/h/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/h/c;->b:Lc/a/a/o/k/h/j;

    return-object v0
.end method

.method public f()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "Ljava/io/InputStream;",
            "Lc/a/a/o/k/h/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/h/c;->a:Lc/a/a/o/k/h/i;

    return-object v0
.end method
