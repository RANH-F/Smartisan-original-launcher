.class Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;
.super Ljava/lang/Object;
.source "MediaUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->onActiveSessionsChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

.field final synthetic val$controllers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->val$controllers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->val$controllers:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$100(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;Ljava/util/List;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;-><init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;Lcom/smartisanos/magicflow/view/card/music/Track;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
