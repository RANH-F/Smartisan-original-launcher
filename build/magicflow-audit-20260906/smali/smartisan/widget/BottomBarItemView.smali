.class public Lsmartisan/widget/BottomBarItemView;
.super Landroid/widget/LinearLayout;
.source "BottomBarItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static final BIG_SCALE:F = 1.0f

.field private static final CHECKED_STATE_SET:[I

.field private static final ITEM_TEXT_NORMAL_SIZE:I = 0x9

.field private static final NORMAL_SCALE:F = 0.9f


# instance fields
.field private mBroadcasting:Z

.field private mChecked:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mOnCheckedChangeListener:Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;

.field private mScalable:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 1
    sput-object v0, Lsmartisan/widget/BottomBarItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lsmartisan/widget/BottomBarItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/BottomBarItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/BottomBarItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getImageViewOrCreate()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 4
    iget-boolean v0, p0, Lsmartisan/widget/BottomBarItemView;->mScalable:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lsmartisan/widget/BottomBarItemView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTextViewOrCreate()Landroid/widget/TextView;
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Lsmartisan/widget/BottomBarItemView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_drawablePadding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 11
    iget-boolean v1, p0, Lsmartisan/widget/BottomBarItemView;->mScalable:Z

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 13
    iget-object v1, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 14
    :cond_1
    iget-object v1, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/16 p1, 0x11

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method private playAnim(Landroid/view/View;F)V
    .locals 5

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput p2, v2, v4

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 p1, 0xc8

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startAnimIfNeed(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BottomBarItemView;->mScalable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-eqz p1, :cond_3

    const v0, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x3f666666    # 0.9f

    .line 2
    :cond_3
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 3
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/BottomBarItemView;->playAnim(Landroid/view/View;F)V

    .line 4
    :cond_4
    iget-object p1, p0, Lsmartisan/widget/BottomBarItemView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 5
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/BottomBarItemView;->playAnim(Landroid/view/View;F)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/BottomBarItemView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BottomBarItemView;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/BottomBarItemView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lsmartisan/widget/BottomBarItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lsmartisan/widget/BottomBarItemView;->startAnimIfNeed(ZZ)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, v1, v1}, Lsmartisan/widget/BottomBarItemView;->startAnimIfNeed(ZZ)V

    .line 4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/BottomBarItemView;->toggle()V

    .line 2
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BottomBarItemView;->mChecked:Z

    if-eq v0, p1, :cond_2

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/BottomBarItemView;->mChecked:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 4
    iget-boolean v0, p0, Lsmartisan/widget/BottomBarItemView;->mBroadcasting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lsmartisan/widget/BottomBarItemView;->mBroadcasting:Z

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/BottomBarItemView;->startAnimIfNeed(ZZ)V

    .line 7
    iget-object p1, p0, Lsmartisan/widget/BottomBarItemView;->mOnCheckedChangeListener:Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;

    if-eqz p1, :cond_1

    .line 8
    iget-boolean v1, p0, Lsmartisan/widget/BottomBarItemView;->mChecked:Z

    invoke-interface {p1, p0, v1}, Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;->onCheckedChanged(Lsmartisan/widget/BottomBarItemView;Z)V

    .line 9
    :cond_1
    iput-boolean v0, p0, Lsmartisan/widget/BottomBarItemView;->mBroadcasting:Z

    :cond_2
    return-void
.end method

.method public setDrawableColorList(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BottomBarItemView;->mScalable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BottomBarItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setDrawableResource(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/BottomBarItemView;->getImageViewOrCreate()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setDrawableResource(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/BottomBarItemView;->setDrawableResource(I)V

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/BottomBarItemView;->getImageViewOrCreate()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BottomBarItemView;->mOnCheckedChangeListener:Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;

    return-void
.end method

.method public setScaleable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BottomBarItemView;->mScalable:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/BottomBarItemView;->getTextViewOrCreate()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/BottomBarItemView;->getTextViewOrCreate()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/BottomBarItemView;->getTextViewOrCreate()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/BottomBarItemView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/BottomBarItemView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lsmartisan/widget/BottomBarItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method
