.class final Lcom/smartisanos/magicflow/cache/RecommendAppCache$3;
.super Ljava/lang/Object;
.source "RecommendAppCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/RecommendAppCache;->onAppPackageChanged(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$3;->val$pkg:Ljava/lang/String;

    iput p2, p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$3;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$3;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x80000

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/4 v1, 0x0

    .line 5
    iget v3, p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$3;->val$status:I

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 6
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "installed"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    invoke-static {v2, v0}, Lcom/smartisanos/magicflow/h/z/l;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->access$400()V

    :cond_2
    :goto_0
    return-void
.end method
