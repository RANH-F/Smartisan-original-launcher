.class final Lsmartisan/widget/PasswordEditText$EyeAnimator;
.super Landroid/os/Handler;
.source "PasswordEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/PasswordEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EyeAnimator"
.end annotation


# static fields
.field private static final MESSAGE_START:I = 0x0

.field private static final MESSAGE_TICK:I = 0x1


# instance fields
.field private mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

.field private mCurrent:I

.field private mDirection:I

.field private mNumberOfFrames:I

.field final synthetic this$0:Lsmartisan/widget/PasswordEditText;


# direct methods
.method public constructor <init>(Lsmartisan/widget/PasswordEditText;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$drawable;->pwd_eye_open_close_anim:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    .line 4
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mNumberOfFrames:I

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->resetCurrent()V

    return-void
.end method


# virtual methods
.method getAnimationDuration()I
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    iget v1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v0

    .line 2
    iget v1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mDirection:I

    if-lez v1, :cond_0

    .line 3
    iget v1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mNumberOfFrames:I

    iget v2, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    sub-int/2addr v1, v2

    :goto_0
    mul-int/2addr v0, v1

    return v0

    :cond_0
    if-gez v1, :cond_1

    .line 4
    iget v1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    iget v1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->tick()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->tick()V

    :goto_0
    return-void
.end method

.method resetCurrent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {v0}, Lsmartisan/widget/PasswordEditText;->access$000(Lsmartisan/widget/PasswordEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mNumberOfFrames:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    return-void
.end method

.method setDirection()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {v0}, Lsmartisan/widget/PasswordEditText;->access$000(Lsmartisan/widget/PasswordEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mDirection:I

    return-void
.end method

.method setEyeAnimatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    .line 2
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mNumberOfFrames:I

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->resetCurrent()V

    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method tick()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget v1, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    iget v2, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mDirection:I

    add-int/2addr v2, v1

    if-ltz v2, :cond_0

    .line 3
    iget v3, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mNumberOfFrames:I

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v1

    .line 5
    iput v2, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    int-to-long v1, v1

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$EyeAnimator;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method
