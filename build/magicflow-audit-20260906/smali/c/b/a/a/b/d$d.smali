.class Lc/b/a/a/b/d$d;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lc/b/a/a/d/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lc/b/a/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/a/d/p$a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc/b/a/a/b/d;


# direct methods
.method constructor <init>(Lc/b/a/a/b/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/b/d$d;->b:Lc/b/a/a/b/d;

    iput-object p2, p0, Lc/b/a/a/b/d$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/d$d;->b:Lc/b/a/a/b/d;

    invoke-static {v0}, Lc/b/a/a/b/d;->a(Lc/b/a/a/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lc/b/a/a/b/d$d$a;

    invoke-direct {v1, p0, p1}, Lc/b/a/a/b/d$d$a;-><init>(Lc/b/a/a/b/d$d;Lc/b/a/a/d/p;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/d$d;->b:Lc/b/a/a/b/d;

    invoke-static {v0}, Lc/b/a/a/b/d;->a(Lc/b/a/a/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lc/b/a/a/b/d$d$b;

    invoke-direct {v1, p0, p1}, Lc/b/a/a/b/d$d$b;-><init>(Lc/b/a/a/b/d$d;Lc/b/a/a/d/p;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
