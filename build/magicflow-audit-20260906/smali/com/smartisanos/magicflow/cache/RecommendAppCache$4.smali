.class final Lcom/smartisanos/magicflow/cache/RecommendAppCache$4;
.super Ljava/lang/Object;
.source "RecommendAppCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/RecommendAppCache;->updateAppListSort(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$installedList:Ljava/util/List;

.field final synthetic val$notInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$4;->val$notInstallList:Ljava/util/List;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$4;->val$installedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$4;->val$notInstallList:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$4;->val$installedList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->access$200(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
