.class Lcom/smartisanos/magicflow/cache/NewsCache$1$1;
.super Ljava/lang/Object;
.source "NewsCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/NewsCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/cache/NewsCache$1;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/cache/NewsCache$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1$1;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "smartisan_read"

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/cache/NewsCache;->notifyNews(Ljava/lang/String;ZI)V

    return-void
.end method
