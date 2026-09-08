.class Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;
.super Ljava/lang/Object;
.source "MediaUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->findMediaSessionAppsTask()V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$700(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Landroid/media/session/MediaSessionManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$700(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Landroid/media/session/MediaSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$800(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$100(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;Ljava/util/List;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->clone(Lcom/smartisanos/magicflow/view/card/music/Track;)V

    .line 6
    :goto_0
    new-instance v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3$1;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3$1;-><init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;Lcom/smartisanos/magicflow/view/card/music/Track;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
