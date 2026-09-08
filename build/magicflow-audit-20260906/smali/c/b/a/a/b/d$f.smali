.class Lc/b/a/a/b/d$f;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Lc/b/a/a/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Bitmap;

.field private c:Lc/b/a/a/f/a;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/a/b/d$h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/a/d/c;Lc/b/a/a/b/d$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;",
            "Lc/b/a/a/b/d$h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/a/b/d$f;->d:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lc/b/a/a/b/d$f;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lc/b/a/a/b/d$f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/b/d$f;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lc/b/a/a/b/d$f;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/b/a/a/b/d$f;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lc/b/a/a/b/d$f;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/b/d$f;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a()Lc/b/a/a/f/a;
    .locals 1

    .line 4
    iget-object v0, p0, Lc/b/a/a/b/d$f;->c:Lc/b/a/a/f/a;

    return-object v0
.end method

.method public a(Lc/b/a/a/b/d$h;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lc/b/a/a/b/d$f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lc/b/a/a/d/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lc/b/a/a/b/d$f;->a:Lc/b/a/a/d/p;

    return-void
.end method

.method public a(Lc/b/a/a/f/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lc/b/a/a/b/d$f;->c:Lc/b/a/a/f/a;

    return-void
.end method

.method public b()Lc/b/a/a/d/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/a/d/p<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/b/a/a/b/d$f;->a:Lc/b/a/a/d/p;

    return-object v0
.end method
