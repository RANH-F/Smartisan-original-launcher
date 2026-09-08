.class Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;
.super Ljava/lang/Object;
.source "MediaUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$900(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$000(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    const-string v1, "checkSessionDestroyed startLaunchIntentForPackage"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4$1;-><init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;)V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
