.class final Lc/a/a/o/j/k$b;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/j/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/a/a/o/j/k$b<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lc/a/a/t/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lc/a/a/o/j/k$b;->d:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;II)Lc/a/a/o/j/k$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lc/a/a/o/j/k$b<",
            "TA;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/a/a/o/j/k$b;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/o/j/k$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/a/a/o/j/k$b;

    invoke-direct {v0}, Lc/a/a/o/j/k$b;-><init>()V

    .line 3
    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lc/a/a/o/j/k$b;->b(Ljava/lang/Object;II)V

    return-object v0
.end method

.method private b(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/a/a/o/j/k$b;->c:Ljava/lang/Object;

    .line 2
    iput p2, p0, Lc/a/a/o/j/k$b;->b:I

    .line 3
    iput p3, p0, Lc/a/a/o/j/k$b;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4
    sget-object v0, Lc/a/a/o/j/k$b;->d:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lc/a/a/o/j/k$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/a/a/o/j/k$b;

    .line 3
    iget v0, p0, Lc/a/a/o/j/k$b;->b:I

    iget v2, p1, Lc/a/a/o/j/k$b;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lc/a/a/o/j/k$b;->a:I

    iget v2, p1, Lc/a/a/o/j/k$b;->a:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lc/a/a/o/j/k$b;->c:Ljava/lang/Object;

    iget-object p1, p1, Lc/a/a/o/j/k$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lc/a/a/o/j/k$b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lc/a/a/o/j/k$b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lc/a/a/o/j/k$b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
