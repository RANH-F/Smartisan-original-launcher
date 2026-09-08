.class public Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;
.super Ljava/lang/Object;
.source "MediaUpdateHelper.java"


# static fields
.field public static final APPLE_MUSIC_PACKAGE:Ljava/lang/String; = "com.apple.android.music"

.field public static final DBFM_MUSIC_PACKAGE:Ljava/lang/String; = "com.douban.radio"

.field public static final DD_MUSIC_PACKAGE:Ljava/lang/String; = "com.luojilab.player"

.field public static final KOGOU_MUSIC_PACKAGE:Ljava/lang/String; = "com.kugou.android"

.field public static final KUWO_MUSIC_PACKAGE:Ljava/lang/String; = "cn.kuwo.player"

.field public static final LZ_MUSIC_PACKAGE:Ljava/lang/String; = "com.yibasan.lizhifm"

.field public static final PACKAGE_MUSIC_DEFAULT:Ljava/lang/String; = "com.smartisanos.music"

.field public static final QEFM_MUSIC_PACKAGE:Ljava/lang/String; = "com.tencent.radio"

.field public static final QQ_MUSIC_PACKAGE:Ljava/lang/String; = "com.tencent.qqmusic"

.field public static final QT_MUSIC_PACKAGE:Ljava/lang/String; = "fm.qingting.qtradio"

.field public static final SP_MUSIC_PACKAGE:Ljava/lang/String; = "com.spotify.music"

.field public static final WYY_MUSIC_PACKAGE:Ljava/lang/String; = "com.netease.cloudmusic"

.field public static final XMLY_MUSIC_PACKAGE:Ljava/lang/String; = "com.ximalaya.ting.android"

.field public static final XM_MUSIC_PACKAGE:Ljava/lang/String; = "fm.xiami.main"

.field private static final whitelistMusicPackage:[Ljava/lang/String;


# instance fields
.field private callback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private final mBitmapCornerRadius:F

.field private mContext:Landroid/content/Context;

.field private mCurrentKeycodeMedia:I

.field private mListenerComponent:Landroid/content/ComponentName;

.field private mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mMediaListener:Lcom/smartisanos/magicflow/view/card/music/MediaListener;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMusicLayoutHeight:F

.field private mOnActiveSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mResources:Landroid/content/res/Resources;

.field private mStartMusicAppRunnable:Ljava/lang/Runnable;

.field private mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "com.smartisanos.music"

    const-string v1, "com.kugou.android"

    const-string v2, "cn.kuwo.player"

    const-string v3, "com.tencent.qqmusic"

    const-string v4, "com.yibasan.lizhifm"

    const-string v5, "fm.qingting.qtradio"

    const-string v6, "com.netease.cloudmusic"

    const-string v7, "fm.xiami.main"

    const-string v8, "com.ximalaya.ting.android"

    const-string v9, "com.spotify.music"

    const-string v10, "com.douban.radio"

    const-string v11, "com.tencent.radio"

    const-string v12, "com.luojilab.player"

    const-string v13, "com.apple.android.music"

    .line 1
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->whitelistMusicPackage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/view/card/music/MediaListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const/high16 v0, 0x42100000    # 36.0f

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mBitmapCornerRadius:F

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getTrack()Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$1;-><init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mOnActiveSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 6
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$2;-><init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->callback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 7
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;-><init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mStartMusicAppRunnable:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaListener:Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    .line 10
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mResources:Landroid/content/res/Resources;

    .line 11
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0601d9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMusicLayoutHeight:F

    .line 12
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mContext:Landroid/content/Context;

    const-string v0, "media_session"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/session/MediaSessionManager;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 13
    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lcom/smartisanos/magicflow/view/card/music/NotificationListener;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mListenerComponent:Landroid/content/ComponentName;

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mOnActiveSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mListenerComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->findMediaSessionAppsTask()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;Ljava/util/List;)Lcom/smartisanos/magicflow/view/card/music/Track;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->findUsableMediaControllerTrack(Ljava/util/List;)Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mCurrentKeycodeMedia:I

    return p0
.end method

.method static synthetic access$1100(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->sendMusicKeyEvent(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/Track;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->registerMediaController(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Lcom/smartisanos/magicflow/view/card/music/MediaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaListener:Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object p1
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;Lcom/smartisanos/magicflow/view/card/music/Track;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->setTrackBaseInfo(Lcom/smartisanos/magicflow/view/card/music/Track;Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mListenerComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkSessionDestroyed(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mCurrentKeycodeMedia:I

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mStartMusicAppRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/m;->c(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mStartMusicAppRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private findMediaSessionAppsTask()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$3;-><init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private findUsableMediaControllerTrack(Ljava/util/List;)Lcom/smartisanos/magicflow/view/card/music/Track;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)",
            "Lcom/smartisanos/magicflow/view/card/music/Track;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 3
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-direct {p0, v4}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->isWhitelistPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    .line 8
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v5

    .line 9
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    if-eqz v5, :cond_1

    if-nez v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->setTransportControls(Landroid/media/session/MediaController$TransportControls;)V

    .line 12
    invoke-virtual {v0, v5}, Lcom/smartisanos/magicflow/view/card/music/Track;->setToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 13
    invoke-virtual {v0, v4}, Lcom/smartisanos/magicflow/view/card/music/Track;->setPackageName(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getSmartisanMusicPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :goto_1
    invoke-static {v3}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->setTrackBaseInfo(Lcom/smartisanos/magicflow/view/card/music/Track;Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 18
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_5

    .line 19
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findUsableMediaController track="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 21
    :cond_6
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->setState(I)V

    :cond_7
    return-object v0

    .line 22
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "findUsableMediaControllerTrack return null"

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-object v0
.end method

.method private getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "com.kugou.android"

    .line 1
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701c8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "cn.kuwo.player"

    .line 3
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701c9

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "com.tencent.qqmusic"

    .line 5
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701cd

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "com.yibasan.lizhifm"

    .line 7
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701ca

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "fm.qingting.qtradio"

    .line 9
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701cc

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "com.netease.cloudmusic"

    .line 11
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701cf

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "fm.xiami.main"

    .line 13
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701d0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "com.ximalaya.ting.android"

    .line 15
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701d1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "com.spotify.music"

    .line 17
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701ce

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v0, "com.douban.radio"

    .line 19
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701c6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_9
    const-string v0, "com.tencent.radio"

    .line 21
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701cb

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_a
    const-string v0, "com.luojilab.player"

    .line 23
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701c7

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_b
    const-string v0, "com.apple.android.music"

    .line 25
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701c5

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 27
    :cond_c
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public static getWhitelistPackage()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->whitelistMusicPackage:[Ljava/lang/String;

    return-object v0
.end method

.method private isWhitelistPackage(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->whitelistMusicPackage:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private registerMediaController(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "registerMediaController return by token null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->callback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 4
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->callback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMediaController err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendMusicKeyEvent(I)Z
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMusicKeyEvent keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 4
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-wide v3, v5

    move v8, p1

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    .line 6
    invoke-static {v0, p1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method private setTrackBaseInfo(Lcom/smartisanos/magicflow/view/card/music/Track;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "android.media.metadata.TITLE"

    .line 1
    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setTitle(Ljava/lang/String;)V

    const-string v0, "android.media.metadata.ARTIST"

    .line 2
    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setArtist(Ljava/lang/String;)V

    const-string v0, "android.media.metadata.ALBUM"

    .line 3
    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setAlbum(Ljava/lang/String;)V

    const-string v0, "android.media.metadata.ART"

    .line 4
    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "android.media.metadata.DISPLAY_ICON"

    .line 5
    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 6
    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string p2, "com.kugou.android"

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070242

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->setTrackBitmap(Lcom/smartisanos/magicflow/view/card/music/Track;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 11
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "setTrackBaseInfo return by data is null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method

.method private setTrackBitmap(Lcom/smartisanos/magicflow/view/card/music/Track;Landroid/graphics/Bitmap;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/music/Track;->setArtWork(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/music/Track;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/music/Track;->setGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)V

    return-void

    .line 4
    :cond_1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrackBitmap artwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " artwork.getWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMusicLayoutHeight:F

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 8
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMusicLayoutHeight:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v3, v1

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const v9, 0x3f333333    # 0.7f

    move-object v3, p2

    invoke-static/range {v3 .. v9}, Lcom/smartisanos/magicflow/o/b;->a(Landroid/graphics/Bitmap;IIIIZF)I

    move-result v3

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_5

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5

    .line 11
    invoke-static {p2, v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_5
    const/high16 v0, 0x42100000    # 36.0f

    .line 12
    invoke-static {p2, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 13
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/music/Track;->setArtWork(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget p2, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMusicLayoutHeight:F

    float-to-int v1, p2

    float-to-int p2, p2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 15
    invoke-virtual {p2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 16
    invoke-static {p2, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/music/Track;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-direct {p2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 19
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 20
    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 21
    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/music/Track;->setGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x42100000    # 36.0f
        0x42100000    # 36.0f
        0x42100000    # 36.0f
    .end array-data
.end method


# virtual methods
.method public checkPackage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.ximalaya.ting.android"

    .line 1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.qqmusic"

    .line 2
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cn.kuwo.player"

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mOnActiveSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->callback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->callback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 6
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mOnActiveSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 7
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mMediaListener:Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mListenerComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public next()V
    .locals 2

    const/16 v0, 0x57

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->checkSessionDestroyed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->checkPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->sendMusicKeyEvent(I)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->f(I)V

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 2

    const/16 v0, 0x7f

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->checkSessionDestroyed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->checkPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->sendMusicKeyEvent(I)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->f(I)V

    :cond_3
    return-void
.end method

.method public play()V
    .locals 2

    const/16 v0, 0x7e

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->checkSessionDestroyed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->checkPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->sendMusicKeyEvent(I)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 5
    :goto_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->f(I)V

    return-void
.end method

.method public previous()V
    .locals 2

    const/16 v0, 0x58

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->checkSessionDestroyed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->checkPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->sendMusicKeyEvent(I)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->f(I)V

    :cond_3
    return-void
.end method

.method public startMusicApp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->f(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "startMusicApp return no data"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method

.method public switchPlayState()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getMediaState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->play()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->pause()V

    :goto_0
    return-void
.end method
