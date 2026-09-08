.class public Lcom/smartisanos/magicflow/view/card/music/Track;
.super Ljava/lang/Object;
.source "Track.java"


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mArtWork:Landroid/graphics/drawable/Drawable;

.field private mArtist:Ljava/lang/String;

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mPackageName:Ljava/lang/String;

.field private mRating:Landroid/media/Rating;

.field private mState:I

.field private mTitle:Ljava/lang/String;

.field private mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mTransportControls:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAppIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mState:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    return-void
.end method

.method public clone(Lcom/smartisanos/magicflow/view/card/music/Track;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtWork()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtist()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtist:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtWork()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtWork:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtWork()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtWork:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTitle:Ljava/lang/String;

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAlbum:Ljava/lang/String;

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtist:Ljava/lang/String;

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTitle:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAlbum:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtist:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtWork()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtWork:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 23
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getRating()Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mRating:Landroid/media/Rating;

    .line 24
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getState()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mState:I

    .line 26
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mPackageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 28
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getArtWork()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtWork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getMaskDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Landroid/media/Rating;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mRating:Landroid/media/Rating;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mState:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public getTransportControls()Landroid/media/session/MediaController$TransportControls;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTitle:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAlbum:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtist:Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mState:I

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getSmartisanMusicPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtWork:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mRating:Landroid/media/Rating;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 11
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 12
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAlbum:Ljava/lang/String;

    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setArtWork(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtWork:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setRating(Landroid/media/Rating;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mRating:Landroid/media/Rating;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mState:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public setTransportControls(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track:    Title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ArtWork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtWork()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Artist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mTransportControls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/Track;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
