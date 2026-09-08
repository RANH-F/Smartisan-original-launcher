.class public Lsmartisan/widget/ShadowButton;
.super Landroid/widget/Button;
.source "ShadowButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/ShadowButton$SmallButtonStyle;,
        Lsmartisan/widget/ShadowButton$LongButtonStyle;,
        Lsmartisan/widget/ShadowButton$OnDisabledClickListener;
    }
.end annotation


# static fields
.field private static final LONG_BUTTON:I = 0x2

.field private static final SHADOW_SIZE:I = 0x6

.field private static final SHRINK_LONG_BUTTON:I = 0x3

.field private static final SMALL_BUTTON:I = 0x1

.field private static final UNSET:I

.field private static mBackgroundShadow:[Landroid/graphics/Bitmap;


# instance fields
.field private mButtonStyle:I

.field private mEnableShadow:Z

.field private mHightLightColor:Landroid/content/res/ColorStateList;

.field private final mLongButtonBackgroundShadowIds:[I

.field private mNormalColor:Landroid/content/res/ColorStateList;

.field private mOnDisabledClickListener:Lsmartisan/widget/ShadowButton$OnDisabledClickListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowColors:Landroid/content/res/ColorStateList;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowEnabled:Z

.field private mShadowHelper:Lsmartisan/widget/ShadowDrawableHelper;

.field private mShadowRadius:F

.field private final mShrinkButtonBackgroundShadowIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ShadowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ShadowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lsmartisan/widget/ShadowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x1

    .line 5
    iput-boolean p4, p0, Lsmartisan/widget/ShadowButton;->mEnableShadow:Z

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lsmartisan/widget/ShadowButton;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 7
    sget v2, Lsmartisan/widget/R$drawable;->long_btn_shadow_normal:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lsmartisan/widget/R$drawable;->long_btn_shadow_pressed:I

    aput v2, v1, p4

    sget v2, Lsmartisan/widget/R$drawable;->long_btn_shadow_disable:I

    const/4 v4, 0x2

    aput v2, v1, v4

    iput-object v1, p0, Lsmartisan/widget/ShadowButton;->mLongButtonBackgroundShadowIds:[I

    new-array v0, v0, [I

    .line 8
    sget v1, Lsmartisan/widget/R$drawable;->shrink_long_btn_shadow_normal:I

    aput v1, v0, v3

    sget v1, Lsmartisan/widget/R$drawable;->shrink_long_btn_shadow_pressed:I

    aput v1, v0, p4

    sget v1, Lsmartisan/widget/R$drawable;->shrink_long_btn_shadow_disable:I

    aput v1, v0, v4

    iput-object v0, p0, Lsmartisan/widget/ShadowButton;->mShrinkButtonBackgroundShadowIds:[I

    .line 9
    sget-object v0, Lsmartisan/widget/R$styleable;->ShadowButton:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget v0, Lsmartisan/widget/R$styleable;->ShadowButton_shadowColors:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/ShadowButton;->mShadowColors:Landroid/content/res/ColorStateList;

    .line 11
    sget v0, Lsmartisan/widget/R$styleable;->ShadowButton_android_shadowDx:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lsmartisan/widget/ShadowButton;->mShadowDx:F

    .line 12
    sget v0, Lsmartisan/widget/R$styleable;->ShadowButton_android_shadowDy:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lsmartisan/widget/ShadowButton;->mShadowDy:F

    .line 13
    sget v0, Lsmartisan/widget/R$styleable;->ShadowButton_android_shadowRadius:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lsmartisan/widget/ShadowButton;->mShadowRadius:F

    .line 14
    sget v0, Lsmartisan/widget/R$styleable;->ShadowButton_backgroundShadow:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 15
    sget v2, Lsmartisan/widget/R$styleable;->ShadowButton_shadowButtonStyle:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    new-instance p1, Lsmartisan/widget/ShadowDrawableHelper;

    invoke-direct {p1, p0, p2, p3}, Lsmartisan/widget/ShadowDrawableHelper;-><init>(Landroid/view/View;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lsmartisan/widget/ShadowButton;->mShadowHelper:Lsmartisan/widget/ShadowDrawableHelper;

    .line 18
    iget-object p1, p0, Lsmartisan/widget/ShadowButton;->mShadowColors:Landroid/content/res/ColorStateList;

    iget p2, p0, Lsmartisan/widget/ShadowButton;->mShadowRadius:F

    iget p3, p0, Lsmartisan/widget/ShadowButton;->mShadowDx:F

    iget v2, p0, Lsmartisan/widget/ShadowButton;->mShadowDy:F

    invoke-static {p0, p1, p2, p3, v2}, Lsmartisan/widget/ShadowTextView;->updateTextShadow(Landroid/widget/TextView;Landroid/content/res/ColorStateList;FFF)V

    .line 19
    iget-object p1, p0, Lsmartisan/widget/ShadowButton;->mShadowHelper:Lsmartisan/widget/ShadowDrawableHelper;

    invoke-virtual {p1}, Lsmartisan/widget/ShadowDrawableHelper;->hasNewShadowFeature()Z

    move-result p1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p4, v3

    .line 20
    :goto_0
    iput-boolean p4, p0, Lsmartisan/widget/ShadowButton;->mShadowEnabled:Z

    .line 21
    iget-object p2, p0, Lsmartisan/widget/ShadowButton;->mShadowHelper:Lsmartisan/widget/ShadowDrawableHelper;

    iget-boolean p3, p0, Lsmartisan/widget/ShadowButton;->mShadowEnabled:Z

    invoke-virtual {p2, p3}, Lsmartisan/widget/ShadowDrawableHelper;->setShadowEnabled(Z)V

    .line 22
    invoke-direct {p0}, Lsmartisan/widget/ShadowButton;->useOldShadow()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 23
    invoke-direct {p0}, Lsmartisan/widget/ShadowButton;->initBitmap()V

    .line 24
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result p2

    invoke-direct {p0, p2, v3}, Lsmartisan/widget/ShadowButton;->updateShadow(ZZ)V

    :cond_1
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/ShadowButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$color;->small_button_standard_text_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/ShadowButton;->mNormalColor:Landroid/content/res/ColorStateList;

    .line 28
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$color;->highlight_button_text_colors:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/ShadowButton;->mHightLightColor:Landroid/content/res/ColorStateList;

    .line 29
    invoke-direct {p0}, Lsmartisan/widget/ShadowButton;->limitMaxSizeIfNeed()V

    return-void
.end method

.method private getBitmap(ZZ)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget v0, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v0, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    sub-int/2addr v0, v2

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    if-nez p1, :cond_1

    add-int/lit8 p2, v0, 0x2

    .line 3
    :cond_1
    sget-object p1, Lsmartisan/widget/ShadowButton;->mBackgroundShadow:[Landroid/graphics/Bitmap;

    aget-object p1, p1, p2

    return-object p1
.end method

.method private initBitmap()V
    .locals 9

    .line 1
    iget v0, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lsmartisan/widget/ShadowButton;->mBackgroundShadow:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 3
    sput-object v0, Lsmartisan/widget/ShadowButton;->mBackgroundShadow:[Landroid/graphics/Bitmap;

    .line 4
    :cond_1
    iget v0, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lsmartisan/widget/ShadowButton;->mLongButtonBackgroundShadowIds:[I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsmartisan/widget/ShadowButton;->mShrinkButtonBackgroundShadowIds:[I

    .line 5
    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 6
    iget v5, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    sub-int/2addr v5, v2

    mul-int/2addr v5, v1

    .line 7
    sget-object v6, Lsmartisan/widget/ShadowButton;->mBackgroundShadow:[Landroid/graphics/Bitmap;

    add-int/2addr v5, v4

    aget-object v7, v6, v5

    if-nez v7, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aget v8, v0, v4

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private limitMaxSizeIfNeed()V
    .locals 3

    .line 1
    iget v0, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->semi_large_text_size:I

    invoke-static {v0, p0, v1}, Lsmartisan/util/Utils;->resetTextViewFontSizeAttr(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->shadow_button_text_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    invoke-static {p0}, Lsmartisan/util/Utils;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/Button;->getMaxWidth()I

    move-result v2

    if-gt v1, v0, :cond_1

    if-lez v2, :cond_2

    if-le v1, v2, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->common_max_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/ShadowButton;->setMaxTitleSize(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldHandleDisabledTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/ShadowButton;->mOnDisabledClickListener:Lsmartisan/widget/ShadowButton$OnDisabledClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/Button;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private updateShadow(ZZ)V
    .locals 7

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/ShadowButton;->getBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->shadow_button_bg_shadow_left_gap:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$dimen;->shadow_button_bg_shadow_top_gap:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 5
    iget-object v2, p0, Lsmartisan/widget/ShadowButton;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, p1

    int-to-float v6, p2

    move-object v0, p0

    move v3, v5

    move v4, v6

    invoke-static/range {v0 .. v6}, Lsmartisan/InvokeApi$p;->a(Landroid/view/View;Landroid/graphics/NinePatch;Landroid/graphics/Paint;FFFF)V

    const p1, 0x3dcccccd    # 0.1f

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setElevation(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private useOldShadow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ShadowButton;->mShadowEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/ShadowButton;->mShadowHelper:Lsmartisan/widget/ShadowDrawableHelper;

    invoke-virtual {v0}, Lsmartisan/widget/ShadowDrawableHelper;->hasNewShadowFeature()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private validShadowStyle()Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/ShadowButton;->mEnableShadow:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/ShadowButton;->mShadowColors:Landroid/content/res/ColorStateList;

    iget v1, p0, Lsmartisan/widget/ShadowButton;->mShadowRadius:F

    iget v2, p0, Lsmartisan/widget/ShadowButton;->mShadowDx:F

    iget v3, p0, Lsmartisan/widget/ShadowButton;->mShadowDy:F

    invoke-static {p0, v0, v1, v2, v3}, Lsmartisan/widget/ShadowTextView;->updateTextShadow(Landroid/widget/TextView;Landroid/content/res/ColorStateList;FFF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ShadowButton;->mShadowColors:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Lsmartisan/widget/ShadowTextView;->updateTextShadow(Landroid/widget/TextView;Landroid/content/res/ColorStateList;FFF)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/ShadowButton;->shouldHandleDisabledTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/ShadowButton;->mOnDisabledClickListener:Lsmartisan/widget/ShadowButton$OnDisabledClickListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lsmartisan/widget/ShadowButton$OnDisabledClickListener;->onDisabledClick()V

    :cond_0
    return v0

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lsmartisan/widget/R$drawable;->shadow_button_long_shadow_selector:I

    goto :goto_0

    :cond_0
    sget v0, Lsmartisan/widget/R$drawable;->shadow_button_shrink_shadow_selector:I

    .line 2
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/ShadowButton;->mShadowHelper:Lsmartisan/widget/ShadowDrawableHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lsmartisan/widget/ShadowDrawableHelper;->hasNewShadowFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lsmartisan/widget/ShadowButton;->validShadowStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsmartisan/widget/ShadowButton;->mShadowHelper:Lsmartisan/widget/ShadowDrawableHelper;

    .line 3
    invoke-virtual {v1, p1, v0}, Lsmartisan/widget/ShadowDrawableHelper;->setBackground(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/ShadowButton;->useOldShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->isPressed()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ShadowButton;->updateShadow(ZZ)V

    :cond_0
    return-void
.end method

.method public setMaxTitleSize(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsmartisan/util/Utils;->setMaxTextSizeForTextView(Landroid/widget/TextView;F)V

    return-void
.end method

.method public setOnDisabledClickListener(Lsmartisan/widget/ShadowButton$OnDisabledClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ShadowButton;->mOnDisabledClickListener:Lsmartisan/widget/ShadowButton$OnDisabledClickListener;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setPressed(Z)V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/ShadowButton;->useOldShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lsmartisan/widget/ShadowButton;->updateShadow(ZZ)V

    :cond_0
    return-void
.end method

.method public setShadowColors(Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ShadowButton;->mShadowColors:Landroid/content/res/ColorStateList;

    .line 2
    iput p2, p0, Lsmartisan/widget/ShadowButton;->mShadowRadius:F

    .line 3
    iput p3, p0, Lsmartisan/widget/ShadowButton;->mShadowDx:F

    .line 4
    iput p4, p0, Lsmartisan/widget/ShadowButton;->mShadowDy:F

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lsmartisan/widget/ShadowTextView;->updateTextShadow(Landroid/widget/TextView;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method public setShadowEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/ShadowButton;->mEnableShadow:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->refreshDrawableState()V

    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowButton;->mShadowHelper:Lsmartisan/widget/ShadowDrawableHelper;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowDrawableHelper;->setShadowEnabled(Z)V

    return-void
.end method

.method public setShadowShouldProjects(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowButton;->mShadowHelper:Lsmartisan/widget/ShadowDrawableHelper;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowDrawableHelper;->setShadowShouldProjects(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/ShadowButton;->limitMaxSizeIfNeed()V

    return-void
.end method

.method public updateBackgroundStyle(Lsmartisan/widget/ShadowButton$LongButtonStyle;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1
    iget v1, p0, Lsmartisan/widget/ShadowButton;->mButtonStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2
    :goto_0
    iget-object v5, p0, Lsmartisan/widget/ShadowButton;->mHightLightColor:Landroid/content/res/ColorStateList;

    .line 3
    sget-object v6, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$LongButtonStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v6, p1

    if-eq p1, v4, :cond_8

    const/4 v6, 0x2

    if-eq p1, v6, :cond_6

    if-eq p1, v3, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    sget p1, Lsmartisan/widget/R$drawable;->shrink_long_btn_gray_selector:I

    goto :goto_1

    :cond_3
    sget p1, Lsmartisan/widget/R$drawable;->selector_long_btn_gray:I

    :goto_1
    move v0, p1

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    .line 5
    sget p1, Lsmartisan/widget/R$drawable;->shrink_long_btn_white_selector:I

    goto :goto_2

    :cond_5
    sget p1, Lsmartisan/widget/R$drawable;->selector_long_btn_white:I

    :goto_2
    move v0, p1

    .line 6
    iget-object v5, p0, Lsmartisan/widget/ShadowButton;->mNormalColor:Landroid/content/res/ColorStateList;

    move v4, v2

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    .line 7
    sget p1, Lsmartisan/widget/R$drawable;->shrink_long_btn_red_selector:I

    goto :goto_1

    :cond_7
    sget p1, Lsmartisan/widget/R$drawable;->selector_long_btn_red:I

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    .line 8
    sget p1, Lsmartisan/widget/R$drawable;->shrink_long_btn_highlight_selector:I

    goto :goto_1

    :cond_9
    sget p1, Lsmartisan/widget/R$drawable;->selector_long_btn_highlight:I

    goto :goto_1

    :goto_3
    if-lez v0, :cond_a

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 10
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 11
    invoke-virtual {p0, v4}, Lsmartisan/widget/ShadowButton;->setShadowEnable(Z)V

    :cond_a
    return-void
.end method

.method public updateBackgroundStyle(Lsmartisan/widget/ShadowButton$SmallButtonStyle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 12
    iget-object v1, p0, Lsmartisan/widget/ShadowButton;->mHightLightColor:Landroid/content/res/ColorStateList;

    .line 13
    sget-object v2, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$SmallButtonStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_standard:I

    .line 15
    iget-object v1, p0, Lsmartisan/widget/ShadowButton;->mNormalColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 16
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_highlight_red:I

    goto :goto_0

    .line 17
    :cond_3
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_highlight:I

    :goto_0
    if-lez v0, :cond_4

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method
