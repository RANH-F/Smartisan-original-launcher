.class Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;
.super Ljava/lang/Object;
.source "MediaUpdateHelper.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$000(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActiveSessionsChanged controllers.size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;-><init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;Ljava/util/List;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method
