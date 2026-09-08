.class public Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;
.super Ljava/lang/Object;
.source "SoundPullEventListener.java"

# interfaces
.implements Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMediaPlayer:Landroid/media/MediaPlayer;

.field private final mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mContext:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mSoundMap:Ljava/util/HashMap;

    return-void
.end method

.method private playSound(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addSoundEvent(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearSounds()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mSoundMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getCurrentMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public final onPullEvent(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase<",
            "TV;>;",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->mSoundMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/extras/SoundPullEventListener;->playSound(I)V

    :cond_0
    return-void
.end method
