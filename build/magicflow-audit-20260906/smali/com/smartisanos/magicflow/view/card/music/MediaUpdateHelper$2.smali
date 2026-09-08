.class Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaUpdateHelper.java"


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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$000(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMetadataChanged metadata: title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {p1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",album="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",artist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$600(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;Lcom/smartisanos/magicflow/view/card/music/Track;Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaListener;->onTrackUpdate(Lcom/smartisanos/magicflow/view/card/music/Track;)V

    :cond_2
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$000(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->setState(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/card/music/MediaListener;->onMediaStateUpdate(I)V

    :cond_2
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$000(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    const-string v1, "onSessionDestroyed"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$502(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/session/MediaControllerCompat;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->clear()V

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getSmartisanMusicPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->smartisanMusicClear()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaListener;->onMediaStateUpdate(I)V

    :cond_2
    return-void
.end method
