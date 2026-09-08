.class public Lsmartisan/widget/PasswordEditText;
.super Landroid/widget/EditText;
.source "PasswordEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/PasswordEditText$TouchHelper;,
        Lsmartisan/widget/PasswordEditText$EyeAnimator;
    }
.end annotation


# static fields
.field private static final EYE_DRAWABLE_PADDING:I = 0x30

.field private static final INPUT_TYPE_CLEAR_VARIATION_MASK:I = -0x1000

.field private static final INPUT_TYPE_VARIATION_MASK:I = 0xfff


# instance fields
.field private mEyeAnimator:Lsmartisan/widget/PasswordEditText$EyeAnimator;

.field private mEyePaddingLeft:I

.field private mEyePaddingRight:I

.field private mEyePaddingTop:I

.field private mInvisibleVariation:I

.field private mPendingSetInputType:Ljava/lang/Runnable;

.field private final mTouchHelper:Lsmartisan/widget/PasswordEditText$TouchHelper;

.field private mVisible:Z

.field private mVisibleVariation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/PasswordEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/PasswordEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lsmartisan/widget/PasswordEditText;->mEyePaddingTop:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p2

    .line 6
    invoke-direct {p0, p2}, Lsmartisan/widget/PasswordEditText;->updateVisibleStatus(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x30

    .line 7
    iput p2, p0, Lsmartisan/widget/PasswordEditText;->mEyePaddingRight:I

    .line 8
    new-instance p2, Lsmartisan/widget/PasswordEditText$EyeAnimator;

    invoke-direct {p2, p0, p1}, Lsmartisan/widget/PasswordEditText$EyeAnimator;-><init>(Lsmartisan/widget/PasswordEditText;Landroid/content/Context;)V

    iput-object p2, p0, Lsmartisan/widget/PasswordEditText;->mEyeAnimator:Lsmartisan/widget/PasswordEditText$EyeAnimator;

    .line 9
    new-instance p1, Lsmartisan/widget/PasswordEditText$TouchHelper;

    invoke-direct {p1, p0, p0}, Lsmartisan/widget/PasswordEditText$TouchHelper;-><init>(Lsmartisan/widget/PasswordEditText;Landroid/view/View;)V

    iput-object p1, p0, Lsmartisan/widget/PasswordEditText;->mTouchHelper:Lsmartisan/widget/PasswordEditText$TouchHelper;

    .line 10
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText;->mTouchHelper:Lsmartisan/widget/PasswordEditText$TouchHelper;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PasswordEditText doesn\'t have password InputType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lsmartisan/widget/PasswordEditText;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/PasswordEditText;->mVisible:Z

    return p0
.end method

.method static synthetic access$100(Lsmartisan/widget/PasswordEditText;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/PasswordEditText;->mInvisibleVariation:I

    return p0
.end method

.method static synthetic access$200(Lsmartisan/widget/PasswordEditText;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/PasswordEditText;->setInputType(IZ)V

    return-void
.end method

.method static synthetic access$300(Lsmartisan/widget/PasswordEditText;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/PasswordEditText;->mVisibleVariation:I

    return p0
.end method

.method static synthetic access$400(Lsmartisan/widget/PasswordEditText;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/PasswordEditText;->getEyeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$EyeAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/PasswordEditText;->mEyeAnimator:Lsmartisan/widget/PasswordEditText$EyeAnimator;

    return-object p0
.end method

.method static synthetic access$600(Lsmartisan/widget/PasswordEditText;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/PasswordEditText;->mPendingSetInputType:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lsmartisan/widget/PasswordEditText;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/PasswordEditText;->mPendingSetInputType:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lsmartisan/widget/PasswordEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/PasswordEditText;->onEyeIconClick()V

    return-void
.end method

.method static synthetic access$800(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$TouchHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/PasswordEditText;->mTouchHelper:Lsmartisan/widget/PasswordEditText$TouchHelper;

    return-object p0
.end method

.method private getEyeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText;->mEyeAnimator:Lsmartisan/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {v0}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private onEyeIconClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText;->mTouchHelper:Lsmartisan/widget/PasswordEditText$TouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private setInputType(IZ)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/PasswordEditText;->updateVisibleStatus(I)Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText;->mEyeAnimator:Lsmartisan/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {p1}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->resetCurrent()V

    :cond_0
    return-void
.end method

.method private updateVisibleStatus(I)Z
    .locals 3

    and-int/lit16 p1, p1, 0xfff

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x81

    if-eq p1, v2, :cond_4

    const/16 v2, 0xe1

    if-eq p1, v2, :cond_4

    const/16 v2, 0x12

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit16 v2, p1, 0x90

    if-eqz v2, :cond_3

    add-int/lit16 v0, p1, -0x90

    .line 1
    iput v0, p0, Lsmartisan/widget/PasswordEditText;->mInvisibleVariation:I

    .line 2
    iget v0, p0, Lsmartisan/widget/PasswordEditText;->mInvisibleVariation:I

    if-ne v0, v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    .line 3
    iput v0, p0, Lsmartisan/widget/PasswordEditText;->mInvisibleVariation:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    or-int/lit8 v0, v0, 0x10

    .line 4
    iput v0, p0, Lsmartisan/widget/PasswordEditText;->mInvisibleVariation:I

    .line 5
    :cond_2
    :goto_0
    iput p1, p0, Lsmartisan/widget/PasswordEditText;->mVisibleVariation:I

    .line 6
    iput-boolean v1, p0, Lsmartisan/widget/PasswordEditText;->mVisible:Z

    return v1

    :cond_3
    return v0

    .line 7
    :cond_4
    :goto_1
    iput p1, p0, Lsmartisan/widget/PasswordEditText;->mInvisibleVariation:I

    or-int/lit16 p1, p1, 0x90

    .line 8
    iput p1, p0, Lsmartisan/widget/PasswordEditText;->mVisibleVariation:I

    .line 9
    iput-boolean v0, p0, Lsmartisan/widget/PasswordEditText;->mVisible:Z

    return v1
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText;->mTouchHelper:Lsmartisan/widget/PasswordEditText$TouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCompoundPaddingRight()I
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/PasswordEditText;->getEyeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lsmartisan/widget/PasswordEditText;->mEyePaddingRight:I

    iget v3, p0, Lsmartisan/widget/PasswordEditText;->mEyePaddingLeft:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/PasswordEditText;->getEyeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/PasswordEditText;->getEyeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 6
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 9
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lsmartisan/widget/PasswordEditText;->mEyePaddingTop:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 10
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    iget v7, p0, Lsmartisan/widget/PasswordEditText;->mEyePaddingRight:I

    sub-int/2addr v7, v2

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 11
    invoke-virtual {v0, v5, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/PasswordEditText;->getEyeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v0, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText;->mEyeAnimator:Lsmartisan/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {p1}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->setDirection()V

    .line 7
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText;->mEyeAnimator:Lsmartisan/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {p1}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->start()V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText;->mPendingSetInputType:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 9
    new-instance p1, Lsmartisan/widget/PasswordEditText$1;

    invoke-direct {p1, p0}, Lsmartisan/widget/PasswordEditText$1;-><init>(Lsmartisan/widget/PasswordEditText;)V

    iput-object p1, p0, Lsmartisan/widget/PasswordEditText;->mPendingSetInputType:Ljava/lang/Runnable;

    .line 10
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText;->mPendingSetInputType:Ljava/lang/Runnable;

    iget-object v1, p0, Lsmartisan/widget/PasswordEditText;->mEyeAnimator:Lsmartisan/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {v1}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->getAnimationDuration()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    invoke-direct {p0}, Lsmartisan/widget/PasswordEditText;->onEyeIconClick()V

    .line 12
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText;->mTouchHelper:Lsmartisan/widget/PasswordEditText$TouchHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_1
    return v0

    .line 13
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEyeAnimator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText;->mEyeAnimator:Lsmartisan/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {v0, p1}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->setEyeAnimatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEyePaddingLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/PasswordEditText;->mEyePaddingLeft:I

    return-void
.end method

.method public setEyePaddingRight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/PasswordEditText;->mEyePaddingRight:I

    return-void
.end method

.method public setEyePaddingTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/PasswordEditText;->mEyePaddingTop:I

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/PasswordEditText;->setInputType(IZ)V

    return-void
.end method
