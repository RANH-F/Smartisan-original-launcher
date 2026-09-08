.class Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;
.super Ljava/lang/Object;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/BackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntValueQueue"
.end annotation


# instance fields
.field private array:[Lcom/smartisanos/magicflow/view/BackgroundView$Int;

.field private fusionPools:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/smartisanos/magicflow/view/BackgroundView$Int;",
            ">;"
        }
    .end annotation
.end field

.field private mFusionList:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/smartisanos/magicflow/view/BackgroundView$Int;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/BackgroundView;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/BackgroundView;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->this$0:Lcom/smartisanos/magicflow/view/BackgroundView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->mFusionList:Ljava/util/ArrayDeque;

    .line 3
    new-instance p1, Landroid/util/Pools$SimplePool;

    invoke-direct {p1, v0}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->fusionPools:Landroid/util/Pools$SimplePool;

    .line 4
    iput p2, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->size:I

    .line 5
    new-array p1, p2, [Lcom/smartisanos/magicflow/view/BackgroundView$Int;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->array:[Lcom/smartisanos/magicflow/view/BackgroundView$Int;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;)Ljava/util/ArrayDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->mFusionList:Ljava/util/ArrayDeque;

    return-object p0
.end method


# virtual methods
.method public add(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->fusionPools:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/BackgroundView$Int;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/BackgroundView$Int;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->this$0:Lcom/smartisanos/magicflow/view/BackgroundView;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/view/BackgroundView$Int;-><init>(Lcom/smartisanos/magicflow/view/BackgroundView;)V

    .line 3
    :cond_0
    iput p1, v0, Lcom/smartisanos/magicflow/view/BackgroundView$Int;->v:I

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->mFusionList:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->mFusionList:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    iget v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->size:I

    if-le p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->mFusionList:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/BackgroundView$Int;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->fusionPools:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->mFusionList:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->mFusionList:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Lcom/smartisanos/magicflow/view/BackgroundView$Int;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->mFusionList:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->array:[Lcom/smartisanos/magicflow/view/BackgroundView$Int;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BackgroundView$IntValueQueue;->array:[Lcom/smartisanos/magicflow/view/BackgroundView$Int;

    return-object v0
.end method
