.class public Lc/a/a/o/k/e/p;
.super Ljava/lang/Object;
.source "StreamBitmapDataLoadProvider.java"

# interfaces
.implements Lc/a/a/q/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/q/b<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/k/e/q;

.field private final b:Lc/a/a/o/k/e/b;

.field private final c:Lc/a/a/o/j/o;

.field private final d:Lc/a/a/o/k/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/k/g/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/o/j/o;

    invoke-direct {v0}, Lc/a/a/o/j/o;-><init>()V

    iput-object v0, p0, Lc/a/a/o/k/e/p;->c:Lc/a/a/o/j/o;

    .line 3
    new-instance v0, Lc/a/a/o/k/e/q;

    invoke-direct {v0, p1, p2}, Lc/a/a/o/k/e/q;-><init>(Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V

    iput-object v0, p0, Lc/a/a/o/k/e/p;->a:Lc/a/a/o/k/e/q;

    .line 4
    new-instance p1, Lc/a/a/o/k/e/b;

    invoke-direct {p1}, Lc/a/a/o/k/e/b;-><init>()V

    iput-object p1, p0, Lc/a/a/o/k/e/p;->b:Lc/a/a/o/k/e/b;

    .line 5
    new-instance p1, Lc/a/a/o/k/g/c;

    iget-object p2, p0, Lc/a/a/o/k/e/p;->a:Lc/a/a/o/k/e/q;

    invoke-direct {p1, p2}, Lc/a/a/o/k/g/c;-><init>(Lc/a/a/o/e;)V

    iput-object p1, p0, Lc/a/a/o/k/e/p;->d:Lc/a/a/o/k/g/c;

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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/p;->d:Lc/a/a/o/k/g/c;

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
    iget-object v0, p0, Lc/a/a/o/k/e/p;->c:Lc/a/a/o/j/o;

    return-object v0
.end method

.method public e()Lc/a/a/o/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/p;->b:Lc/a/a/o/k/e/b;

    return-object v0
.end method

.method public f()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/p;->a:Lc/a/a/o/k/e/q;

    return-object v0
.end method
