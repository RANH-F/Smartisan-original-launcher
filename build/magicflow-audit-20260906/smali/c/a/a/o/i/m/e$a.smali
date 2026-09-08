.class Lc/a/a/o/i/m/e$a;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field c:Lc/a/a/o/i/m/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/i/m/e$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lc/a/a/o/i/m/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/i/m/e$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/a/a/o/i/m/e$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p0, p0, Lc/a/a/o/i/m/e$a;->d:Lc/a/a/o/i/m/e$a;

    iput-object p0, p0, Lc/a/a/o/i/m/e$a;->c:Lc/a/a/o/i/m/e$a;

    .line 4
    iput-object p1, p0, Lc/a/a/o/i/m/e$a;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lc/a/a/o/i/m/e$a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/o/i/m/e$a;->a:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lc/a/a/o/i/m/e$a;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lc/a/a/o/i/m/e$a;->b:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/a/a/o/i/m/e$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a/a/o/i/m/e$a;->b:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/m/e$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/m/e$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
