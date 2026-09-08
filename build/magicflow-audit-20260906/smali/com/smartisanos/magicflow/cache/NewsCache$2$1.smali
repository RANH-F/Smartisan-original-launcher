.class Lcom/smartisanos/magicflow/cache/NewsCache$2$1;
.super Ljava/lang/Object;
.source "NewsCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/NewsCache$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/cache/NewsCache$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$1;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$1;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-object v0, v0, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/smartisanos/magicflow/cache/FailedCallback;->onFailedCallback()V

    :cond_0
    return-void
.end method
