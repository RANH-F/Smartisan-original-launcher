.class public Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;
.super Lcom/smartisanos/magicflow/view/card/Card;
.source "MusicPaymentCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mFullMusicControlLayout:Landroid/widget/FrameLayout;

.field private mFullMusicCoverMask:Landroid/widget/ImageView;

.field private mHalfMusicAuthor:Lcom/smartisanos/magicflow/view/MarqueeTextView;

.field private mHalfMusicControlLayout:Landroid/widget/LinearLayout;

.field private mHalfMusicCoverMask:Landroid/widget/ImageView;

.field private mHalfMusicName:Lcom/smartisanos/magicflow/view/MarqueeTextView;

.field private mHalfMusicPlayStatus:Landroid/widget/ImageView;

.field private mHalfPauseDrawable:Landroid/graphics/drawable/Drawable;

.field private mHalfPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mLayoutAlipayQR:Landroid/widget/ImageView;

.field private mLayoutAlipayScan:Landroid/widget/ImageView;

.field private mMediaListener:Lcom/smartisanos/magicflow/view/card/music/MediaListener;

.field private mMediaUpdateHelper:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

.field private mMusicAppIcon:Landroid/widget/ImageView;

.field private mMusicAuthor:Lcom/smartisanos/magicflow/view/MarqueeTextView;

.field private mMusicCover:Landroid/widget/ImageView;

.field private mMusicInfoRunnable:Ljava/lang/Runnable;

.field private mMusicLayout:Landroid/widget/FrameLayout;

.field private mMusicName:Lcom/smartisanos/magicflow/view/MarqueeTextView;

.field private mMusicNext:Landroid/widget/ImageView;

.field private mMusicPlayStatus:Landroid/widget/ImageView;

.field private mMusicPrevious:Landroid/widget/ImageView;

.field private mPauseContentDescription:Ljava/lang/String;

.field private mPauseDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlayingContentDescription:Ljava/lang/String;

.field private mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

.field private observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/Card;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-direct {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$1;-><init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    .line 5
    new-instance p1, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;-><init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMediaListener:Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    .line 6
    new-instance p1, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$3;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$3;-><init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicInfoRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;Lcom/smartisanos/magicflow/view/card/music/Track;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->updateView(Lcom/smartisanos/magicflow/view/card/music/Track;)V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->changeBackground()V

    return-void
.end method

.method static synthetic access$1000(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfPauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->hideHalfMusicControlLayout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->setMusicInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicPrevious:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicNext:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mPauseContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicPlayStatus:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfPlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicPlayStatus:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->switchPlayButtonStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mPlayingContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method private changeBackground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicName:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->hideHalfMusicControlLayout()V

    :cond_0
    return-void
.end method

.method public static handleClick(Landroid/content/Context;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->n:Z

    if-nez v0, :cond_1

    const-string v0, "com.eg.android.AlipayGphone"

    .line 2
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->k(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    invoke-virtual {p1, p0, p0}, Lcom/smartisanos/magicflow/c;->c(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/smartisanos/magicflow/c;->c(II)V

    :goto_0
    return-void

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/o/n;->c(Landroid/content/Context;I)V

    return-void
.end method

.method private hideFullMusicControlLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicCoverMask:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicControlLayout:Landroid/widget/FrameLayout;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicCoverMask:Landroid/widget/ImageView;

    new-array v5, v1, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicControlLayout:Landroid/widget/LinearLayout;

    new-array v6, v1, [F

    fill-array-data v6, :array_3

    invoke-static {v5, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0xc8

    .line 7
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    aput-object v4, v6, v1

    const/4 v0, 0x3

    aput-object v3, v6, v0

    .line 8
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 9
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$6;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$6;-><init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private hideHalfMusicControlLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicCoverMask:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicControlLayout:Landroid/widget/FrameLayout;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicCoverMask:Landroid/widget/ImageView;

    new-array v5, v1, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicControlLayout:Landroid/widget/LinearLayout;

    new-array v6, v1, [F

    fill-array-data v6, :array_3

    invoke-static {v5, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0xc8

    .line 7
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    aput-object v4, v6, v1

    const/4 v0, 0x3

    aput-object v3, v6, v0

    .line 8
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 9
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$7;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$7;-><init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setMusicInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "setMusicInfo return by mTrack null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicName:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicAuthor:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicName:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicAuthor:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private switchMusicBackground()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350061"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->hideHalfMusicControlLayout()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->hideFullMusicControlLayout()V

    :goto_0
    return-void
.end method

.method private switchPlayButtonStatus()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicPlayStatus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicPlayStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$4;

    invoke-direct {v2, p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$4;-><init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$5;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$5;-><init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_1
    return-void
.end method

.method private updateView(Lcom/smartisanos/magicflow/view/card/music/Track;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "updateView return track is null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackUpdate track="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtWork()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtWork()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setArtWork(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->clone(Lcom/smartisanos/magicflow/view/card/music/Track;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtWork()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicCover:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getArtWork()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicCoverMask:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicCoverMask:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicCover:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicCoverMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicCoverMask:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.kugou.android"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicInfoRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/m;->c(Ljava/lang/Runnable;)V

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicInfoRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2bc

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->setMusicInfo()V

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/Track;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicAppIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getSmartisanMusicPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mTrack:Lcom/smartisanos/magicflow/view/card/music/Track;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->setSmartisanTrack(Lcom/smartisanos/magicflow/view/card/music/Track;)V

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicPlayStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 27
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicPlayStatus:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08014c

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMediaUpdateHelper:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->previous()V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMediaUpdateHelper:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->next()V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->switchMusicBackground()V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMediaUpdateHelper:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->startMusicApp()V

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->handleClick(Landroid/content/Context;I)V

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->handleClick(Landroid/content/Context;I)V

    goto :goto_0

    .line 9
    :cond_1
    :pswitch_6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMediaUpdateHelper:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->switchPlayState()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080023
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0801cf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicInfoRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->c(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 3
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMediaUpdateHelper:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->destroy()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMediaUpdateHelper:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onPause()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getMediaState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->hideFullMusicControlLayout()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->resetMusicInfoTextStatus(Z)V

    return-void
.end method

.method public onReadyToLoadData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801d0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicLayout:Landroid/widget/FrameLayout;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0802a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicCover:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicCoverMask:Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08013e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicControlLayout:Landroid/widget/FrameLayout;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicAppIcon:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0802a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/MarqueeTextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicName:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/MarqueeTextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicAuthor:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicPrevious:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801d2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicPlayStatus:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801d1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicNext:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mLayoutAlipayQR:Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mLayoutAlipayScan:Landroid/widget/ImageView;

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08014e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicCoverMask:Landroid/widget/ImageView;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicControlLayout:Landroid/widget/LinearLayout;

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicPlayStatus:Landroid/widget/ImageView;

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/MarqueeTextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicName:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/MarqueeTextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicAuthor:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    const v1, 0x7f07024a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    const v1, 0x7f070246

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mPauseContentDescription:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0208

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mPlayingContentDescription:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicControlLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 25
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicCoverMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 26
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicControlLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mFullMusicCoverMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicPlayStatus:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicPrevious:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicPlayStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicPlayStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 33
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicPrevious:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicPlayStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicPlayStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mLayoutAlipayQR:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mLayoutAlipayScan:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getTrack()Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->updateView(Lcom/smartisanos/magicflow/view/card/music/Track;)V

    .line 42
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getTrack()Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/music/Track;->getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicPlayStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->register(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 45
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMediaListener:Lcom/smartisanos/magicflow/view/card/music/MediaListener;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/view/card/music/MediaListener;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMediaUpdateHelper:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->resetMusicInfoTextStatus(Z)V

    return-void
.end method

.method public resetMusicInfoTextStatus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicName:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/MarqueeTextView;->setMarqueeEnable(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mMusicAuthor:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/MarqueeTextView;->setMarqueeEnable(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicName:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/MarqueeTextView;->setMarqueeEnable(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->mHalfMusicAuthor:Lcom/smartisanos/magicflow/view/MarqueeTextView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/MarqueeTextView;->setMarqueeEnable(Z)V

    return-void
.end method

.method public setContentView()V
    .locals 1

    const v0, 0x7f0b0031

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/Card;->initView(I)V

    return-void
.end method
