.class Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;
.super Ljava/lang/Object;
.source "MediaUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

.field final synthetic val$track:Lcom/smartisanos/magicflow/view/card/music/Track;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;Lcom/smartisanos/magicflow/view/card/music/Track;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->val$track:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->val$track:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->val$track:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getState()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setState(I)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaListener;->onMediaStateUpdate(I)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->val$track:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->clone(Lcom/smartisanos/magicflow/view/card/music/Track;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$300(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaListener;->onTrackUpdate(Lcom/smartisanos/magicflow/view/card/music/Track;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1$1;->this$2:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaListener;->onMediaStateUpdate(I)V

    :cond_2
    :goto_1
    return-void
.end method
