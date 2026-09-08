.class public Lsmartisan/widget/SwitchEx;
.super Landroid/widget/CheckBox;
.source "SwitchEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SwitchEx$PerformClick;,
        Lsmartisan/widget/SwitchEx$CheckHandler;,
        Lsmartisan/widget/SwitchEx$ResourceCallback;
    }
.end annotation


# static fields
.field private static final HANDLER_MESSAGE_SET_CHECKED:I = 0x1

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0xbf

.field private static final SHADOW_ALPHA_ANIM_DURATION:I = 0xc8

.field private static final SHADOW_MAX_ALPHA:I = 0xff

.field private static final SHADOW_MIN_ALPHA:I = 0x0

.field public static final STYLE_DARK:I = 0x2

.field public static final STYLE_LIGHT:I = 0x1

.field public static final SWITCH_BOTTOM:I = 0x0

.field public static final SWITCH_FRAME:I = 0x2

.field public static final SWITCH_FRAME_PRESSED:I = 0x5

.field public static final SWITCH_MASK:I = 0x3

.field public static final SWITCH_PRESSED:I = 0x4

.field public static final SWITCH_UNPRESSED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SwitchEx"

.field private static isClean:Z

.field private static mDrawableIds:[I

.field private static mStyle:I

.field private static sAlphaOffBitmap:Landroid/graphics/Bitmap;

.field private static sAlphaOnBitmap:Landroid/graphics/Bitmap;

.field private static sBottom:Landroid/graphics/Bitmap;

.field private static final sBottomDefScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sBottomRect:Landroid/graphics/RectF;

.field private static sBottomScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sBtnNormal:Landroid/graphics/Bitmap;

.field private static sBtnOffPos:F

.field private static sBtnOnPos:F

.field private static sBtnPressed:Landroid/graphics/Bitmap;

.field private static sBtnWidth:F

.field private static sCachedBitmapDensityDpi:I

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sCurBtnPic:Landroid/graphics/Bitmap;

.field private static final sDarkDrawableIds:[I

.field private static final sDrawableIds:[I

.field private static sFrame:Landroid/graphics/Bitmap;

.field private static final sFrameDefScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sFramePressed:Landroid/graphics/Bitmap;

.field private static final sFramePressedDefScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sFramePressedRect:Landroid/graphics/RectF;

.field private static sFramePressedScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sFrameRect:Landroid/graphics/RectF;

.field private static sFrameScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sMask:Landroid/graphics/Bitmap;

.field private static final sMaskDefScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaskHeight:F

.field private static sMaskRect:Landroid/graphics/RectF;

.field private static sMaskScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaskWidth:F

.field private static sOffBitmap:Landroid/graphics/Bitmap;

.field private static sOffBitmapPressed:Landroid/graphics/Bitmap;

.field private static sOnBitmap:Landroid/graphics/Bitmap;

.field private static sOnBitmapPressed:Landroid/graphics/Bitmap;

.field private static sPaint:Landroid/graphics/Paint;

.field private static final sPressedDefScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sPressedRect:Landroid/graphics/RectF;

.field private static sPressedScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResourceCallback:Lsmartisan/widget/SwitchEx$ResourceCallback;

.field private static final sUnpressedDefScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnpressedScale:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sXfermode:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private final ANIMATION_FRAME_DURATION:F

.field private final EXTENDED_OFFSET_Y:F

.field private final VELOCITY:F

.field private mAlpha:I

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationPosition:F

.field private mBottomResId:I

.field private mBroadcasting:Z

.field private mBtnInitPos:F

.field private mBtnPos:F

.field private mChecked:Z

.field private mClickTimeout:I

.field private mExtendOffsetY:F

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParent:Landroid/view/ViewParent;

.field private mPerformClick:Lsmartisan/widget/SwitchEx$PerformClick;

.field private mPressedShadowAlpha:I

.field private mRealPos:F

.field private mResources:Landroid/content/res/Resources;

.field mRestoring:Z

.field private mShadowAlphaAnim:Landroid/animation/ValueAnimator;

.field private mTouchSlop:I

.field private mTouching:Z

.field private mVelocity:F

.field private mVibrateFeedback:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lsmartisan/widget/SwitchEx$ResourceCallback;

    invoke-direct {v0}, Lsmartisan/widget/SwitchEx$ResourceCallback;-><init>()V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sResourceCallback:Lsmartisan/widget/SwitchEx$ResourceCallback;

    .line 2
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 5
    sget v2, Lsmartisan/widget/R$drawable;->switch_ex_bottom_2:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lsmartisan/widget/R$drawable;->switch_ex_unpressed:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lsmartisan/widget/R$drawable;->switch_ex_frame:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lsmartisan/widget/R$drawable;->switch_ex_mask:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lsmartisan/widget/R$drawable;->switch_ex_pressed:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lsmartisan/widget/R$drawable;->switch_ex_frame_pressed:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sput-object v1, Lsmartisan/widget/SwitchEx;->sDrawableIds:[I

    new-array v0, v0, [I

    .line 6
    sget v1, Lsmartisan/widget/R$drawable;->switch_ex_bottom_dark:I

    aput v1, v0, v3

    sget v1, Lsmartisan/widget/R$drawable;->switch_ex_unpressed_dark:I

    aput v1, v0, v4

    sget v1, Lsmartisan/widget/R$drawable;->switch_ex_frame_dark:I

    aput v1, v0, v5

    sget v1, Lsmartisan/widget/R$drawable;->switch_ex_mask_dark:I

    aput v1, v0, v6

    sget v1, Lsmartisan/widget/R$drawable;->switch_ex_pressed_dark:I

    aput v1, v0, v7

    sget v1, Lsmartisan/widget/R$drawable;->switch_ex_frame_pressed_dark:I

    aput v1, v0, v8

    sput-object v0, Lsmartisan/widget/SwitchEx;->sDarkDrawableIds:[I

    .line 7
    sget-object v0, Lsmartisan/widget/SwitchEx;->sDrawableIds:[I

    sput-object v0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    .line 8
    sput v4, Lsmartisan/widget/SwitchEx;->mStyle:I

    .line 9
    new-instance v0, Landroid/util/Pair;

    const/high16 v1, 0x438f0000    # 286.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x43100000    # 144.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sBottomDefScale:Landroid/util/Pair;

    .line 10
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sUnpressedDefScale:Landroid/util/Pair;

    .line 11
    new-instance v0, Landroid/util/Pair;

    const/high16 v3, 0x43460000    # 198.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sFrameDefScale:Landroid/util/Pair;

    .line 12
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sMaskDefScale:Landroid/util/Pair;

    .line 13
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sPressedDefScale:Landroid/util/Pair;

    .line 14
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sFramePressedDefScale:Landroid/util/Pair;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sMaskRect:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sBottomRect:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sFrameRect:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sFramePressedRect:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lsmartisan/widget/SwitchEx;->sPressedRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006c

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x43af0000    # 350.0f

    .line 4
    iput p2, p0, Lsmartisan/widget/SwitchEx;->VELOCITY:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 5
    iput p2, p0, Lsmartisan/widget/SwitchEx;->EXTENDED_OFFSET_Y:F

    const/high16 p2, 0x41800000    # 16.0f

    .line 6
    iput p2, p0, Lsmartisan/widget/SwitchEx;->ANIMATION_FRAME_DURATION:F

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lsmartisan/widget/SwitchEx;->mPressedShadowAlpha:I

    const/16 p3, 0xff

    .line 8
    iput p3, p0, Lsmartisan/widget/SwitchEx;->mAlpha:I

    .line 9
    iput-boolean p2, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    .line 10
    iput-boolean p2, p0, Lsmartisan/widget/SwitchEx;->mRestoring:Z

    .line 11
    new-instance p2, Lsmartisan/widget/SwitchEx$CheckHandler;

    invoke-direct {p2, p0}, Lsmartisan/widget/SwitchEx$CheckHandler;-><init>(Lsmartisan/widget/SwitchEx;)V

    iput-object p2, p0, Lsmartisan/widget/SwitchEx;->mHandler:Landroid/os/Handler;

    .line 12
    iget-object p2, p0, Lsmartisan/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    if-nez p2, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    :cond_0
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p2}, Lsmartisan/widget/SwitchEx;->setVibrateFeedbackEnabled(Z)V

    .line 15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    sget-object p3, Lsmartisan/widget/SwitchEx;->sResourceCallback:Lsmartisan/widget/SwitchEx$ResourceCallback;

    invoke-static {p2, p3}, Lsmartisan/InvokeApi$k;->a(Landroid/content/res/Resources;Landroid/content/res/IResourcesCallbackSmto;)V

    .line 16
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->initSwitchResource()V

    .line 17
    invoke-direct {p0, p1}, Lsmartisan/widget/SwitchEx;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsmartisan/widget/SwitchEx;->clearSwitchBitmap(Z)V

    return-void
.end method

.method static synthetic access$100(Lsmartisan/widget/SwitchEx;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/SwitchEx;->setChecked(ZZZ)V

    return-void
.end method

.method static synthetic access$302(Lsmartisan/widget/SwitchEx;I)I
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SwitchEx;->mPressedShadowAlpha:I

    return p1
.end method

.method private static applySwithStyle()V
    .locals 2

    .line 1
    sget v0, Lsmartisan/widget/SwitchEx;->mStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lsmartisan/widget/SwitchEx;->sDarkDrawableIds:[I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lsmartisan/widget/SwitchEx;->sDrawableIds:[I

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lsmartisan/widget/SwitchEx;->sDrawableIds:[I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_0
    sput-object v0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SwitchEx;->mParent:Landroid/view/ViewParent;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private cancelShadowAlphaAnim()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->isShadowAlphaAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mShadowAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private static changeScaleThroughDpi(Landroid/util/Pair;I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    int-to-float p1, p1

    .line 1
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x43f00000    # 480.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    mul-float/2addr p1, p0

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private checkVibratePermission()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.VIBRATE"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.permission.VIBRATE permission DENIED for package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwitchEx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static clearSwitchBitmap()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lsmartisan/widget/SwitchEx;->clearSwitchBitmap(Z)V

    return-void
.end method

.method private static clearSwitchBitmap(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lsmartisan/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    .line 3
    sput-object v0, Lsmartisan/widget/SwitchEx;->sBtnNormal:Landroid/graphics/Bitmap;

    .line 4
    sput-object v0, Lsmartisan/widget/SwitchEx;->sBtnPressed:Landroid/graphics/Bitmap;

    .line 5
    sput-object v0, Lsmartisan/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    .line 6
    sput-object v0, Lsmartisan/widget/SwitchEx;->sFramePressed:Landroid/graphics/Bitmap;

    .line 7
    sput-object v0, Lsmartisan/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    .line 8
    sput-object v0, Lsmartisan/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    .line 9
    sput-object v0, Lsmartisan/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    .line 10
    sput-object v0, Lsmartisan/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    .line 11
    sput-object v0, Lsmartisan/widget/SwitchEx;->sOnBitmapPressed:Landroid/graphics/Bitmap;

    .line 12
    sput-object v0, Lsmartisan/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    .line 13
    sput-object v0, Lsmartisan/widget/SwitchEx;->sOffBitmapPressed:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lsmartisan/widget/SwitchEx;->isClean:Z

    if-eqz p0, :cond_0

    .line 15
    sput v0, Lsmartisan/widget/SwitchEx;->mStyle:I

    .line 16
    invoke-static {}, Lsmartisan/widget/SwitchEx;->applySwithStyle()V

    :cond_0
    return-void
.end method

.method private createBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget v0, p0, Lsmartisan/widget/SwitchEx;->mAlpha:I

    iget v1, p0, Lsmartisan/widget/SwitchEx;->mRealPos:F

    iget v2, p0, Lsmartisan/widget/SwitchEx;->mPressedShadowAlpha:I

    invoke-static {v0, v1, v2}, Lsmartisan/widget/SwitchEx;->createBitmap(IFI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IFI)Landroid/graphics/Bitmap;
    .locals 7

    .line 2
    sget-object v0, Lsmartisan/widget/SwitchEx;->sMaskScale:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3
    sget-object v1, Lsmartisan/widget/SwitchEx;->sMaskScale:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    sget-object v1, Lsmartisan/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    sget-object v1, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    sget-object p0, Lsmartisan/widget/SwitchEx;->sMaskRect:Landroid/graphics/RectF;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sMaskScale:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v2, Lsmartisan/widget/SwitchEx;->sMaskScale:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    sget-object p0, Lsmartisan/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    sget-object v2, Lsmartisan/widget/SwitchEx;->sMaskRect:Landroid/graphics/RectF;

    sget-object v4, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 9
    sget-object p0, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 10
    sget-object p0, Lsmartisan/widget/SwitchEx;->sBottomRect:Landroid/graphics/RectF;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sBottomScale:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p1

    sget-object v2, Lsmartisan/widget/SwitchEx;->sBottomScale:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    sget-object p0, Lsmartisan/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    sget-object v2, Lsmartisan/widget/SwitchEx;->sBottomRect:Landroid/graphics/RectF;

    sget-object v4, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v5, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 12
    sget-object p0, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 13
    sget-object p0, Lsmartisan/widget/SwitchEx;->sFrameRect:Landroid/graphics/RectF;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sFrameScale:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v2, Lsmartisan/widget/SwitchEx;->sFrameScale:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 14
    sget-object p0, Lsmartisan/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    sget-object v2, Lsmartisan/widget/SwitchEx;->sFrameRect:Landroid/graphics/RectF;

    sget-object v4, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v5, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-lez p2, :cond_0

    .line 15
    sget-object p0, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    .line 16
    sget-object v1, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    sget-object v1, Lsmartisan/widget/SwitchEx;->sFramePressedRect:Landroid/graphics/RectF;

    sget-object v2, Lsmartisan/widget/SwitchEx;->sFramePressedScale:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sget-object v4, Lsmartisan/widget/SwitchEx;->sFramePressedScale:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    sget-object v1, Lsmartisan/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lsmartisan/widget/SwitchEx;->sFramePressed:Landroid/graphics/Bitmap;

    sget-object v4, Lsmartisan/widget/SwitchEx;->sFramePressedRect:Landroid/graphics/RectF;

    sget-object v6, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 19
    sget-object v1, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    :cond_0
    sget-object p0, Lsmartisan/widget/SwitchEx;->sPressedRect:Landroid/graphics/RectF;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sPressedScale:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p1

    sget-object v2, Lsmartisan/widget/SwitchEx;->sPressedScale:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 p0, 0xff

    if-ne p2, p0, :cond_1

    .line 21
    sget-object p0, Lsmartisan/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object p1, Lsmartisan/widget/SwitchEx;->sBtnPressed:Landroid/graphics/Bitmap;

    sget-object p2, Lsmartisan/widget/SwitchEx;->sPressedRect:Landroid/graphics/RectF;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 22
    :cond_1
    sget-object p0, Lsmartisan/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object p1, Lsmartisan/widget/SwitchEx;->sCurBtnPic:Landroid/graphics/Bitmap;

    sget-object p2, Lsmartisan/widget/SwitchEx;->sPressedRect:Landroid/graphics/RectF;

    sget-object v1, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-object v0
.end method

.method private doAnimation()V
    .locals 3

    .line 1
    iget v0, p0, Lsmartisan/widget/SwitchEx;->mAnimationPosition:F

    iget v1, p0, Lsmartisan/widget/SwitchEx;->mAnimatedVelocity:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/SwitchEx;->mAnimationPosition:F

    .line 2
    iget v0, p0, Lsmartisan/widget/SwitchEx;->mAnimationPosition:F

    sget v1, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->stopAnimation()V

    .line 4
    sget v0, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    iput v0, p0, Lsmartisan/widget/SwitchEx;->mAnimationPosition:F

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->stopAnimation()V

    .line 7
    sget v0, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    iput v0, p0, Lsmartisan/widget/SwitchEx;->mAnimationPosition:F

    .line 8
    :cond_1
    :goto_0
    iget v0, p0, Lsmartisan/widget/SwitchEx;->mAnimationPosition:F

    invoke-direct {p0, v0}, Lsmartisan/widget/SwitchEx;->moveView(F)V

    return-void
.end method

.method private static getRealPos(F)F
    .locals 2

    .line 1
    sget v0, Lsmartisan/widget/SwitchEx;->sBtnWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p0, v0

    return p0
.end method

.method private static initBitmap()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lsmartisan/widget/SwitchEx;->isClean:Z

    .line 2
    sget-object v1, Lsmartisan/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lsmartisan/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lsmartisan/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lsmartisan/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lsmartisan/widget/SwitchEx;->sOnBitmapPressed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lsmartisan/widget/SwitchEx;->sOffBitmapPressed:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 3
    :cond_0
    sget v1, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    invoke-static {v1}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result v1

    const/16 v2, 0xbf

    invoke-static {v2, v1, v0}, Lsmartisan/widget/SwitchEx;->createBitmap(IFI)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lsmartisan/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    .line 4
    sget v1, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    invoke-static {v1}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result v1

    invoke-static {v2, v1, v0}, Lsmartisan/widget/SwitchEx;->createBitmap(IFI)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lsmartisan/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    .line 5
    sget v1, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    invoke-static {v1}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result v1

    const/16 v2, 0xff

    invoke-static {v2, v1, v0}, Lsmartisan/widget/SwitchEx;->createBitmap(IFI)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lsmartisan/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    .line 6
    sget v1, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    invoke-static {v1}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result v1

    invoke-static {v2, v1, v2}, Lsmartisan/widget/SwitchEx;->createBitmap(IFI)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lsmartisan/widget/SwitchEx;->sOnBitmapPressed:Landroid/graphics/Bitmap;

    .line 7
    sget v1, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    invoke-static {v1}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result v1

    invoke-static {v2, v1, v0}, Lsmartisan/widget/SwitchEx;->createBitmap(IFI)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    .line 8
    sget v0, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    invoke-static {v0}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result v0

    invoke-static {v2, v0, v2}, Lsmartisan/widget/SwitchEx;->createBitmap(IFI)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sOffBitmapPressed:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private static initDrawableScaleThroughDpi(Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2
    sget-object v0, Lsmartisan/widget/SwitchEx;->sBottomDefScale:Landroid/util/Pair;

    invoke-static {v0, p0}, Lsmartisan/widget/SwitchEx;->changeScaleThroughDpi(Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sBottomScale:Landroid/util/Pair;

    .line 3
    sget-object v0, Lsmartisan/widget/SwitchEx;->sUnpressedDefScale:Landroid/util/Pair;

    invoke-static {v0, p0}, Lsmartisan/widget/SwitchEx;->changeScaleThroughDpi(Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sUnpressedScale:Landroid/util/Pair;

    .line 4
    sget-object v0, Lsmartisan/widget/SwitchEx;->sFrameDefScale:Landroid/util/Pair;

    invoke-static {v0, p0}, Lsmartisan/widget/SwitchEx;->changeScaleThroughDpi(Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sFrameScale:Landroid/util/Pair;

    .line 5
    sget-object v0, Lsmartisan/widget/SwitchEx;->sMaskDefScale:Landroid/util/Pair;

    invoke-static {v0, p0}, Lsmartisan/widget/SwitchEx;->changeScaleThroughDpi(Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sMaskScale:Landroid/util/Pair;

    .line 6
    sget-object v0, Lsmartisan/widget/SwitchEx;->sPressedDefScale:Landroid/util/Pair;

    invoke-static {v0, p0}, Lsmartisan/widget/SwitchEx;->changeScaleThroughDpi(Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sPressedScale:Landroid/util/Pair;

    .line 7
    sget-object v0, Lsmartisan/widget/SwitchEx;->sFramePressedDefScale:Landroid/util/Pair;

    invoke-static {v0, p0}, Lsmartisan/widget/SwitchEx;->changeScaleThroughDpi(Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sFramePressedScale:Landroid/util/Pair;

    .line 8
    sput p0, Lsmartisan/widget/SwitchEx;->sCachedBitmapDensityDpi:I

    return-void
.end method

.method public static initSwitchBitmap(Landroid/content/res/Resources;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lsmartisan/widget/SwitchEx;->isDensityDpiChanged(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lsmartisan/widget/SwitchEx;->clearSwitchBitmap(Z)V

    .line 3
    :cond_0
    sget-object v0, Lsmartisan/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lsmartisan/widget/SwitchEx;->sBtnNormal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lsmartisan/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lsmartisan/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lsmartisan/widget/SwitchEx;->sBtnPressed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lsmartisan/widget/SwitchEx;->sFramePressed:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 4
    :cond_1
    sget-object v0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    .line 5
    sget-object v0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sBtnNormal:Landroid/graphics/Bitmap;

    .line 6
    sget-object v0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sBtnPressed:Landroid/graphics/Bitmap;

    .line 7
    sget-object v0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    .line 8
    sget-object v0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sFramePressed:Landroid/graphics/Bitmap;

    .line 9
    sget-object v0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    .line 10
    sget-object v0, Lsmartisan/widget/SwitchEx;->sBtnNormal:Landroid/graphics/Bitmap;

    sput-object v0, Lsmartisan/widget/SwitchEx;->sCurBtnPic:Landroid/graphics/Bitmap;

    .line 11
    invoke-static {p0}, Lsmartisan/widget/SwitchEx;->initDrawableScaleThroughDpi(Landroid/content/res/Resources;)V

    .line 12
    :cond_2
    sget-object p0, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    sget-object p0, Lsmartisan/widget/SwitchEx;->sUnpressedScale:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sput p0, Lsmartisan/widget/SwitchEx;->sBtnWidth:F

    .line 14
    sget-object p0, Lsmartisan/widget/SwitchEx;->sMaskScale:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sput p0, Lsmartisan/widget/SwitchEx;->sMaskWidth:F

    .line 15
    sget-object p0, Lsmartisan/widget/SwitchEx;->sMaskScale:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sput p0, Lsmartisan/widget/SwitchEx;->sMaskHeight:F

    .line 16
    sget p0, Lsmartisan/widget/SwitchEx;->sBtnWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p0, v0

    sput v1, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    .line 17
    sget v1, Lsmartisan/widget/SwitchEx;->sMaskWidth:F

    div-float/2addr p0, v0

    sub-float/2addr v1, p0

    sput v1, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    .line 18
    invoke-static {}, Lsmartisan/widget/SwitchEx;->initBitmap()V

    return-void
.end method

.method private initSwitchResource()V
    .locals 1

    .line 1
    invoke-static {}, Lsmartisan/widget/SwitchEx;->applySwithStyle()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lsmartisan/widget/SwitchEx;->initSwitchBitmap(Landroid/content/res/Resources;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/SwitchEx;->mClickTimeout:I

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SwitchEx;->mTouchSlop:I

    .line 4
    iget-boolean p1, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    if-eqz p1, :cond_0

    sget p1, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    goto :goto_0

    :cond_0
    sget p1, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    :goto_0
    iput p1, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    .line 5
    iget p1, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    invoke-static {p1}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result p1

    iput p1, p0, Lsmartisan/widget/SwitchEx;->mRealPos:F

    .line 6
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43af0000    # 350.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 7
    iput v0, p0, Lsmartisan/widget/SwitchEx;->mVelocity:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 8
    iput p1, p0, Lsmartisan/widget/SwitchEx;->mExtendOffsetY:F

    return-void
.end method

.method private static isDensityDpiChanged(Landroid/content/res/Resources;)Z
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/SwitchEx;->sCachedBitmapDensityDpi:I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShadowAlphaAnimRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mShadowAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveView(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    .line 2
    iget p1, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    invoke-static {p1}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result p1

    iput p1, p0, Lsmartisan/widget/SwitchEx;->mRealPos:F

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method

.method private resetBitmaps()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lsmartisan/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    .line 2
    sput-object v0, Lsmartisan/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    .line 3
    sput-object v0, Lsmartisan/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    .line 4
    sput-object v0, Lsmartisan/widget/SwitchEx;->sOnBitmapPressed:Landroid/graphics/Bitmap;

    .line 5
    sput-object v0, Lsmartisan/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    .line 6
    sput-object v0, Lsmartisan/widget/SwitchEx;->sOffBitmapPressed:Landroid/graphics/Bitmap;

    .line 7
    invoke-static {}, Lsmartisan/widget/SwitchEx;->initBitmap()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method

.method private setChecked(ZZZ)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    if-eq v0, p1, :cond_6

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    goto :goto_0

    :cond_0
    sget p1, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    :goto_0
    iput p1, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    .line 5
    iget p1, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    invoke-static {p1}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result p1

    iput p1, p0, Lsmartisan/widget/SwitchEx;->mRealPos:F

    .line 6
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    :cond_1
    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1}, Lsmartisan/InvokeApi$p;->a(Landroid/view/View;I)V

    .line 8
    iget-boolean p2, p0, Lsmartisan/widget/SwitchEx;->mBroadcasting:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lsmartisan/widget/SwitchEx;->mRestoring:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lsmartisan/widget/SwitchEx;->mBroadcasting:Z

    .line 10
    iget-object p2, p0, Lsmartisan/widget/SwitchEx;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p2, :cond_3

    .line 11
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    invoke-interface {p2, p0, v0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 12
    :cond_3
    iget-object p2, p0, Lsmartisan/widget/SwitchEx;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p2, :cond_4

    .line 13
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    invoke-interface {p2, p0, v0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_4
    if-eqz p3, :cond_5

    .line 14
    iget-boolean p2, p0, Lsmartisan/widget/SwitchEx;->mVibrateFeedback:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 15
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->vibrateFeedback()V

    .line 16
    :cond_5
    iput-boolean p1, p0, Lsmartisan/widget/SwitchEx;->mBroadcasting:Z

    nop

    :cond_6
    :goto_1
    return-void
.end method

.method private setCheckedFromUser(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static setDrawableIds([I)V
    .locals 0

    .line 1
    sput-object p0, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    return-void
.end method

.method private startAnimation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lsmartisan/widget/SwitchEx;->mVelocity:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lsmartisan/widget/SwitchEx;->mVelocity:F

    neg-float p1, p1

    :goto_0
    iput p1, p0, Lsmartisan/widget/SwitchEx;->mAnimatedVelocity:F

    .line 2
    iget p1, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    iput p1, p0, Lsmartisan/widget/SwitchEx;->mAnimationPosition:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/SwitchEx;->mAnimating:Z

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->doAnimation()V

    return-void
.end method

.method private startShadowAlphaAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mShadowAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SwitchEx;->mShadowAlphaAnim:Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mShadowAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lsmartisan/widget/SwitchEx$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/SwitchEx$1;-><init>(Lsmartisan/widget/SwitchEx;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mShadowAlphaAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mShadowAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mAnimating:Z

    return-void
.end method

.method private vibrateFeedback()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->checkVibratePermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lsmartisan/widget/SwitchEx;->mVibrator:Landroid/os/Vibrator;

    .line 5
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mVibrator:Landroid/os/Vibrator;

    const-string v1, "EFFECT_SWITCH"

    invoke-static {v1}, Lsmartisan/InvokeApi$n;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lsmartisan/InvokeApi$o;->a(Landroid/os/Vibrator;I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/CheckBox;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->cancelShadowAlphaAnim()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    sget-boolean v0, Lsmartisan/widget/SwitchEx;->isClean:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lsmartisan/widget/SwitchEx;->isDensityDpiChanged(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lsmartisan/widget/SwitchEx;->initSwitchBitmap(Landroid/content/res/Resources;)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    sget v0, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    invoke-static {v0}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result v0

    .line 5
    sget v1, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    invoke-static {v1}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result v1

    .line 6
    iget v2, p0, Lsmartisan/widget/SwitchEx;->mAlpha:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_6

    .line 7
    iget v2, p0, Lsmartisan/widget/SwitchEx;->mRealPos:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_3

    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->isShadowAlphaAnimRunning()Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    iget-boolean v2, p0, Lsmartisan/widget/SwitchEx;->mTouching:Z

    if-eqz v2, :cond_2

    sget-object v2, Lsmartisan/widget/SwitchEx;->sOffBitmapPressed:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    sget-object v2, Lsmartisan/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 9
    :cond_3
    iget v2, p0, Lsmartisan/widget/SwitchEx;->mRealPos:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_5

    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->isShadowAlphaAnimRunning()Z

    move-result v2

    if-nez v2, :cond_5

    .line 10
    iget-boolean v2, p0, Lsmartisan/widget/SwitchEx;->mTouching:Z

    if-eqz v2, :cond_4

    sget-object v2, Lsmartisan/widget/SwitchEx;->sOnBitmapPressed:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    sget-object v2, Lsmartisan/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 11
    :cond_5
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_6
    iget v2, p0, Lsmartisan/widget/SwitchEx;->mRealPos:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_7

    .line 13
    sget-object v2, Lsmartisan/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_7
    cmpl-float v2, v2, v0

    if-nez v2, :cond_8

    .line 14
    sget-object v2, Lsmartisan/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 15
    :cond_8
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 16
    :goto_0
    sget-object v3, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    iget v4, p0, Lsmartisan/widget/SwitchEx;->mAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 17
    iget v4, p0, Lsmartisan/widget/SwitchEx;->mExtendOffsetY:F

    sget-object v5, Lsmartisan/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 19
    iget p1, p0, Lsmartisan/widget/SwitchEx;->mRealPos:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_9

    .line 20
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->stopAnimation()V

    .line 21
    sget p1, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    iput p1, p0, Lsmartisan/widget/SwitchEx;->mAnimationPosition:F

    goto :goto_1

    :cond_9
    cmpl-float p1, p1, v0

    if-ltz p1, :cond_a

    .line 22
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->stopAnimation()V

    .line 23
    sget p1, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    iput p1, p0, Lsmartisan/widget/SwitchEx;->mAnimationPosition:F

    goto :goto_1

    .line 24
    :cond_a
    iget-boolean p1, p0, Lsmartisan/widget/SwitchEx;->mAnimating:Z

    if-eqz p1, :cond_b

    .line 25
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->doAnimation()V

    :cond_b
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 4
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    sget p1, Lsmartisan/widget/SwitchEx;->sMaskWidth:F

    float-to-int p1, p1

    sget p2, Lsmartisan/widget/SwitchEx;->sMaskHeight:F

    iget v0, p0, Lsmartisan/widget/SwitchEx;->mExtendOffsetY:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/CheckBox;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mRestoring:Z

    .line 2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/SwitchEx;->mRestoring:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mAnimating:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 5
    iget v4, p0, Lsmartisan/widget/SwitchEx;->mFirstDownX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 6
    iget v5, p0, Lsmartisan/widget/SwitchEx;->mFirstDownY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    iget v3, p0, Lsmartisan/widget/SwitchEx;->mBtnInitPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float/2addr v3, v6

    iget v6, p0, Lsmartisan/widget/SwitchEx;->mFirstDownX:F

    sub-float/2addr v3, v6

    iput v3, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    .line 8
    iget v3, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    sget v6, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_2

    .line 9
    iput v6, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    .line 10
    :cond_2
    iget v3, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    sget v6, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_3

    .line 11
    iput v6, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    .line 12
    :cond_3
    iget v3, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    invoke-static {v3}, Lsmartisan/widget/SwitchEx;->getRealPos(F)F

    move-result v3

    iput v3, p0, Lsmartisan/widget/SwitchEx;->mRealPos:F

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mTouching:Z

    .line 14
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->startShadowAlphaAnimation()V

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-float p1, v2

    .line 16
    iget v2, p0, Lsmartisan/widget/SwitchEx;->mTouchSlop:I

    int-to-float v3, v2

    cmpg-float v3, v5, v3

    if-gez v3, :cond_6

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_6

    iget v2, p0, Lsmartisan/widget/SwitchEx;->mClickTimeout:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    .line 17
    iget-object p1, p0, Lsmartisan/widget/SwitchEx;->mPerformClick:Lsmartisan/widget/SwitchEx$PerformClick;

    if-nez p1, :cond_5

    .line 18
    new-instance p1, Lsmartisan/widget/SwitchEx$PerformClick;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lsmartisan/widget/SwitchEx$PerformClick;-><init>(Lsmartisan/widget/SwitchEx;Lsmartisan/widget/SwitchEx$1;)V

    iput-object p1, p0, Lsmartisan/widget/SwitchEx;->mPerformClick:Lsmartisan/widget/SwitchEx$PerformClick;

    .line 19
    :cond_5
    iget-object p1, p0, Lsmartisan/widget/SwitchEx;->mPerformClick:Lsmartisan/widget/SwitchEx$PerformClick;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0}, Lsmartisan/widget/SwitchEx;->performClick()Z

    goto :goto_1

    .line 21
    :cond_6
    iget p1, p0, Lsmartisan/widget/SwitchEx;->mBtnPos:F

    sget v2, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    sget v3, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    sub-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    move v0, v1

    .line 22
    :cond_7
    invoke-direct {p0, v0}, Lsmartisan/widget/SwitchEx;->startAnimation(Z)V

    .line 23
    invoke-direct {p0, v0}, Lsmartisan/widget/SwitchEx;->setCheckedFromUser(Z)V

    goto :goto_1

    .line 24
    :cond_8
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->attemptClaimDrag()V

    .line 25
    iput-boolean v1, p0, Lsmartisan/widget/SwitchEx;->mTouching:Z

    .line 26
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->cancelShadowAlphaAnim()V

    const/16 p1, 0xff

    .line 27
    iput p1, p0, Lsmartisan/widget/SwitchEx;->mPressedShadowAlpha:I

    .line 28
    iput v2, p0, Lsmartisan/widget/SwitchEx;->mFirstDownX:F

    .line 29
    iput v3, p0, Lsmartisan/widget/SwitchEx;->mFirstDownY:F

    .line 30
    iget-boolean p1, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    if-eqz p1, :cond_9

    sget p1, Lsmartisan/widget/SwitchEx;->sBtnOnPos:F

    goto :goto_0

    :cond_9
    sget p1, Lsmartisan/widget/SwitchEx;->sBtnOffPos:F

    :goto_0
    iput p1, p0, Lsmartisan/widget/SwitchEx;->mBtnInitPos:F

    .line 31
    :cond_a
    :goto_1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    :cond_b
    :goto_2
    return v1
.end method

.method public performClick()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lsmartisan/widget/SwitchEx;->startAnimation(Z)V

    .line 4
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lsmartisan/widget/SwitchEx;->setCheckedFromUser(Z)V

    return v1
.end method

.method public setBottomDrawable(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SwitchEx;->mBottomResId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lsmartisan/widget/SwitchEx;->mBottomResId:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lsmartisan/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->resetBitmaps()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lsmartisan/widget/SwitchEx;->setChecked(ZZZ)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0xbf

    .line 1
    :goto_0
    iput v0, p0, Lsmartisan/widget/SwitchEx;->mAlpha:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public setFrameDrawable(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->switch_ex_frame:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lsmartisan/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lsmartisan/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    .line 3
    :goto_0
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->resetBitmaps()V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SwitchEx;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SwitchEx;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 3
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SwitchEx;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSwitchDrawable(ILandroid/graphics/Bitmap;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/SwitchEx;->setSwitchDrawableStyle(I)V

    return-void
.end method

.method public setSwitchDrawableStyle(I)V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/SwitchEx;->mStyle:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sput p1, Lsmartisan/widget/SwitchEx;->mStyle:I

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lsmartisan/widget/SwitchEx;->clearSwitchBitmap(Z)V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SwitchEx;->initSwitchResource()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method

.method public setSwitchDrawables(Landroid/util/SparseIntArray;)V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x4

    .line 5
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x5

    .line 6
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    aput p1, v0, v2

    .line 7
    sget-object p1, Lsmartisan/widget/SwitchEx;->mDrawableIds:[I

    invoke-static {p1}, Lsmartisan/widget/SwitchEx;->setDrawableIds([I)V

    .line 8
    invoke-static {v1}, Lsmartisan/widget/SwitchEx;->clearSwitchBitmap(Z)V

    .line 9
    iget-object p1, p0, Lsmartisan/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lsmartisan/widget/SwitchEx;->initSwitchBitmap(Landroid/content/res/Resources;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method

.method public setVibrateFeedbackEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SwitchEx;->mVibrateFeedback:Z

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SwitchEx;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    return-void
.end method
