.class public Lcom/smartisanos/magicflow/cache/MusicDataCache;
.super Ljava/lang/Object;
.source "MusicDataCache.java"


# static fields
.field private static DEFAULT_ICON:Landroid/graphics/drawable/Drawable; = null

.field private static final SMARTISAN_MUSIC_PACKAGENAME:Ljava/lang/String; = "com.smartisanos.music"

.field private static final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/cache/DataChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static sMediaState:I

.field private static sSmartisanTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

.field private static final sTrack:Lcom/smartisanos/magicflow/view/card/music/Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    const/4 v0, 0x2

    .line 2
    sput v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sMediaState:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->observers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->DEFAULT_ICON:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getMediaState()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sMediaState:I

    return v0
.end method

.method public static getSmartisanMusicPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.smartisanos.music"

    return-object v0
.end method

.method public static getSmartisanTrack()Lcom/smartisanos/magicflow/view/card/music/Track;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sSmartisanTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    return-object v0
.end method

.method public static getTrack()Lcom/smartisanos/magicflow/view/card/music/Track;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070240

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->DEFAULT_ICON:Landroid/graphics/drawable/Drawable;

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    const-string v0, "com.smartisanos.music"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setPackageName(Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->DEFAULT_ICON:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static musicAppUnInstall(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/music/Track;->reset()V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method private static notifyDataChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcom/smartisanos/magicflow/cache/DataChangeObserver;->onDataChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static register(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->observers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/MusicDataCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/MusicDataCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static setMediaState(I)V
    .locals 0

    .line 1
    sput p0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sMediaState:I

    return-void
.end method

.method public static setSmartisanTrack(Lcom/smartisanos/magicflow/view/card/music/Track;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sSmartisanTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sSmartisanTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/view/card/music/Track;->clone(Lcom/smartisanos/magicflow/view/card/music/Track;)V

    .line 3
    sget-object p0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sSmartisanTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getSmartisanMusicPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setPackageName(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sSmartisanTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->DEFAULT_ICON:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static smartisanMusicClear()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->sSmartisanTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->clear()V

    :cond_0
    return-void
.end method

.method public static unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/MusicDataCache;->observers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/MusicDataCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/MusicDataCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
