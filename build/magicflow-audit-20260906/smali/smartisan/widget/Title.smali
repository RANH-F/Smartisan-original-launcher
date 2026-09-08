.class public Lsmartisan/widget/Title;
.super Landroid/widget/RelativeLayout;
.source "Title.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/Title$BackgroundStyle;,
        Lsmartisan/widget/Title$BackButtonBgStyle;
    }
.end annotation


# static fields
.field public static final EXTRA_BACK_BTN_RES_ID:Ljava/lang/String; = "back_text_id"

.field public static final EXTRA_BACK_BTN_RES_NAME:Ljava/lang/String; = "back_text_res_name"

.field public static final EXTRA_BACK_BTN_TEXT:Ljava/lang/String; = "back_text"

.field public static final EXTRA_TITLE_TEXT:Ljava/lang/String; = "title"

.field public static final EXTRA_TITLE_TEXT_ID:Ljava/lang/String; = "title_id"

.field private static final TAG:Ljava/lang/String; = "Title"


# instance fields
.field private isVisibilityListenerAdded:Z

.field private isVisibilityListenerRemoved:Z

.field private mBackButton:Lsmartisan/widget/ShadowTextView;

.field private mContainer:Landroid/view/View;

.field private mDirty:Z

.field private mInterestedConfigs:Ljava/lang/String;

.field private mOkButton:Lsmartisan/widget/ShadowButton;

.field private mPlaceHolderView:Landroid/view/View;

.field private mShadowComponent:Lsmartisan/widget/ShadowComponent;

.field private mTitle:Landroid/widget/TextView;

.field final mVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    .line 3
    new-instance p1, Lsmartisan/widget/Title$3;

    invoke-direct {p1, p0}, Lsmartisan/widget/Title$3;-><init>(Lsmartisan/widget/Title;)V

    iput-object p1, p0, Lsmartisan/widget/Title;->mVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/Title;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lsmartisan/widget/Title;->mDirty:Z

    .line 7
    new-instance v1, Lsmartisan/widget/Title$3;

    invoke-direct {v1, p0}, Lsmartisan/widget/Title$3;-><init>(Lsmartisan/widget/Title;)V

    iput-object v1, p0, Lsmartisan/widget/Title;->mVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$layout;->title_layout:I

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lsmartisan/widget/Title;->mContainer:Landroid/view/View;

    .line 10
    iget-object v1, p0, Lsmartisan/widget/Title;->mContainer:Landroid/view/View;

    sget v2, Lsmartisan/widget/R$id;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    .line 11
    iget-object v1, p0, Lsmartisan/widget/Title;->mContainer:Landroid/view/View;

    sget v2, Lsmartisan/widget/R$id;->btn_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/ShadowTextView;

    iput-object v1, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    .line 12
    iget-object v1, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v1, v0}, Lsmartisan/widget/ShadowTextView;->setShadowEnable(Z)V

    .line 13
    iget-object v1, p0, Lsmartisan/widget/Title;->mContainer:Landroid/view/View;

    sget v2, Lsmartisan/widget/R$id;->btn_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/ShadowButton;

    iput-object v1, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    .line 14
    iget-object v1, p0, Lsmartisan/widget/Title;->mContainer:Landroid/view/View;

    sget v2, Lsmartisan/widget/R$id;->place_holder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lsmartisan/widget/Title;->mPlaceHolderView:Landroid/view/View;

    .line 15
    sget-object v1, Lsmartisan/widget/R$styleable;->Title:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 16
    sget v1, Lsmartisan/widget/R$styleable;->Title_backText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p0, v1}, Lsmartisan/widget/Title;->setBackButtonText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_0
    sget v1, Lsmartisan/widget/R$styleable;->Title_backTextColor:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 19
    sget v2, Lsmartisan/widget/R$styleable;->Title_backTextSize:I

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v1, :cond_1

    .line 20
    iget-object v5, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-lez v2, :cond_2

    .line 21
    iget-object v1, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    :cond_2
    sget v1, Lsmartisan/widget/R$styleable;->Title_backTextVisible:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 23
    iget-object v2, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    sget v1, Lsmartisan/widget/R$styleable;->Title_okText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 25
    iget-object v2, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 26
    iget-object v2, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_4
    sget v1, Lsmartisan/widget/R$styleable;->Title_okTextColor:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 28
    sget v2, Lsmartisan/widget/R$styleable;->Title_okTextSize:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v1, :cond_5

    .line 29
    iget-object v3, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    if-lez v2, :cond_6

    .line 30
    iget-object v1, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 31
    :cond_6
    sget v1, Lsmartisan/widget/R$styleable;->Title_smtTitle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 32
    iget-object v2, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_7
    sget v1, Lsmartisan/widget/R$styleable;->Title_titleColor:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 34
    sget v2, Lsmartisan/widget/R$styleable;->Title_titleSize:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v1, :cond_8

    .line 35
    iget-object v3, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    if-lez v2, :cond_9

    .line 36
    iget-object v1, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    new-instance p1, Lsmartisan/widget/Title$1;

    invoke-direct {p1, p0, p0, p2, p3}, Lsmartisan/widget/Title$1;-><init>(Lsmartisan/widget/Title;Landroid/view/View;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lsmartisan/widget/Title;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    .line 39
    sget-object p1, Lsmartisan/widget/Title$BackgroundStyle;->NORMAL:Lsmartisan/widget/Title$BackgroundStyle;

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setTitleBackgroundResource(Lsmartisan/widget/Title$BackgroundStyle;)V

    .line 40
    invoke-direct {p0}, Lsmartisan/widget/Title;->setAccessibilityFocusOrder()V

    .line 41
    invoke-direct {p0}, Lsmartisan/widget/Title;->getConfigutation()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lsmartisan/widget/Title;->generateInterestedConfig(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/Title;->mInterestedConfigs:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/Title;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/Title;->setOnVisibilityChangeListenerIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Lsmartisan/widget/Title;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/Title;)Lsmartisan/widget/ShadowTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    return-object p0
.end method

.method static synthetic access$300(Lsmartisan/widget/Title;)Lsmartisan/widget/ShadowButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    return-object p0
.end method

.method static synthetic access$400(Lsmartisan/widget/Title;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/Title;->titleViewGone()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lsmartisan/widget/Title;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/Title;->setTitleAlign()V

    return-void
.end method

.method static synthetic access$602(Lsmartisan/widget/Title;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/Title;->isVisibilityListenerRemoved:Z

    return p1
.end method

.method private caculateTextWidth(Landroid/widget/TextView;)F
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private generateInterestedConfig(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getConfigutation()Landroid/content/res/Configuration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private getScreenWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private setAccessibilityFocusOrder()V
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/Title$2;

    invoke-direct {v0, p0}, Lsmartisan/widget/Title$2;-><init>(Lsmartisan/widget/Title;)V

    .line 2
    iget-object v1, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 3
    iget-object v1, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setBackBtnContentDescIfNeeded()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$string;->title_button_text_back:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$string;->back_to_settings:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setOnVisibilityChangeListenerIfNeeded()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/Title;->titleViewGone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/Title;->mVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lsmartisan/widget/Title;->isVisibilityListenerAdded:Z

    :cond_0
    return-void
.end method

.method private setPlaceHolderWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mPlaceHolderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/Title;->mPlaceHolderView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTitleAlign()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 3
    iget-object v2, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    cmpl-float v5, v1, v4

    const/16 v6, 0x11

    const/4 v7, 0x0

    if-nez v5, :cond_1

    cmpl-float v5, v2, v4

    if-nez v5, :cond_1

    .line 5
    invoke-direct {p0, v7}, Lsmartisan/widget/Title;->setPlaceHolderWidth(I)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    .line 8
    :cond_1
    iget-object v5, p0, Lsmartisan/widget/Title;->mContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    .line 9
    iget-object v8, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    .line 10
    iget-object v9, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    iget-object v10, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    .line 11
    iget-object v10, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v10}, Lsmartisan/widget/Title;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v10

    int-to-float v8, v8

    add-float/2addr v10, v8

    int-to-float v8, v9

    add-float/2addr v10, v8

    const/high16 v8, 0x40a00000    # 5.0f

    add-float/2addr v10, v8

    cmpl-float v5, v5, v10

    const/16 v8, 0x9

    if-lez v5, :cond_2

    float-to-int v1, v1

    .line 12
    invoke-direct {p0, v1}, Lsmartisan/widget/Title;->setPlaceHolderWidth(I)V

    .line 13
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 14
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    :cond_2
    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    .line 16
    iget-object v4, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_3
    float-to-int v2, v2

    .line 17
    invoke-direct {p0, v2}, Lsmartisan/widget/Title;->setPlaceHolderWidth(I)V

    goto :goto_2

    .line 18
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsmartisan/widget/R$dimen;->title_place_holder_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 19
    invoke-direct {p0, v2}, Lsmartisan/widget/Title;->setPlaceHolderWidth(I)V

    .line 20
    :goto_2
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v7, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_3
    return-void
.end method

.method private titleViewGone()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

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

.method private titleViewVisible()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBackButton()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    return-object v0
.end method

.method public getBackButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getButtonTextColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget p1, Lsmartisan/widget/R$color;->title_bar_button_text_colorlist:I

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Lsmartisan/widget/R$color;->title_bar_highlight_button_text_colorlist:I

    :goto_0
    return p1
.end method

.method public getOkButton()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    return-object v0
.end method

.method public getOkButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getOkButtonView()Lsmartisan/widget/ShadowButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    return-object v0
.end method

.method public getShadowView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    invoke-virtual {v0}, Lsmartisan/widget/ShadowComponent;->getShadowView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/Title;->generateInterestedConfig(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/Title;->mInterestedConfigs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lsmartisan/widget/Title;->mInterestedConfigs:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/Title;->setTitleAlign()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/Title;->isVisibilityListenerAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsmartisan/widget/Title;->isVisibilityListenerRemoved:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/Title;->mVisibilityListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/Title;->setTitleAlign()V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    :cond_1
    return-void
.end method

.method public resetBackButtonTextColorAsDefault()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$color;->title_bar_button_text_colorlist:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/Title;->setBackButtonTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public resetBackButtonTextGravityAsDefault()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public resetOkButtonTextColorAsDefault()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$color;->title_bar_highlight_button_text_colorlist:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/Title;->setOkButtonTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackBtnArrowVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    sget v0, Lsmartisan/widget/R$drawable;->selector_title_button_back:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    sget v0, Lsmartisan/widget/R$drawable;->selector_title_button_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setBackButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    return-void
.end method

.method public setBackButtonBackground(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setBackButtonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0, p2}, Lsmartisan/widget/Title;->setBackButtonShadowColorsEnable(Z)V

    return-void
.end method

.method public setBackButtonBackgroundResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    return-void
.end method

.method public setBackButtonBackgroundResource(IZ)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setBackButtonBackgroundResource(I)V

    .line 8
    invoke-virtual {p0, p2}, Lsmartisan/widget/Title;->setBackButtonShadowColorsEnable(Z)V

    return-void
.end method

.method public setBackButtonBackgroundResource(Lsmartisan/widget/Title$BackButtonBgStyle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 3
    sget-object v1, Lsmartisan/widget/Title$4;->$SwitchMap$smartisan$widget$Title$BackButtonBgStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget v0, Lsmartisan/widget/R$drawable;->selector_title_button_normal:I

    goto :goto_0

    .line 5
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_back:I

    :goto_0
    if-lez v0, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Lsmartisan/widget/Title;->setBackButtonBackgroundResource(I)V

    :cond_3
    return-void
.end method

.method public setBackButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBackButtonShadowColorsEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowTextView;->setShadowEnable(Z)V

    return-void
.end method

.method public setBackButtonText(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setBackButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBackButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/Title;->setBackBtnContentDescIfNeeded()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setBackButtonTextByBundle(Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "back_text_res_name"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v2, v1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lsmartisan/widget/Title;->setBackButtonText(I)V

    return v3

    :cond_1
    const-string v1, "back_text"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setBackButtonText(Ljava/lang/CharSequence;)V

    return v3

    :cond_2
    const-string v1, "back_text_id"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setBackButtonText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 12
    :cond_3
    sget p1, Lsmartisan/widget/R$string;->title_button_text_back:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setBackButtonText(I)V

    return v0
.end method

.method public setBackButtonTextByIntent(Landroid/content/Intent;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setBackButtonTextByBundle(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setBackButtonTextByRes(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setBackButtonText(I)V

    return-void
.end method

.method public setBackButtonTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setBackButtonTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackButtonTextGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setOkButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    return-void
.end method

.method public setOkButtonBackground(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setOkButtonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0, p2}, Lsmartisan/widget/Title;->setOkButtonShadowColorsEnable(Z)V

    return-void
.end method

.method public setOkButtonBackgroundResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    return-void
.end method

.method public setOkButtonBackgroundResource(IZ)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setOkButtonBackgroundResource(I)V

    .line 12
    invoke-virtual {p0, p2}, Lsmartisan/widget/Title;->setOkButtonShadowColorsEnable(Z)V

    return-void
.end method

.method public setOkButtonBackgroundResource(Lsmartisan/widget/Title$BackgroundStyle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 3
    sget-object v1, Lsmartisan/widget/Title$4;->$SwitchMap$smartisan$widget$Title$BackgroundStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_highlight:I

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/Title;->resetOkButtonTextColorAsDefault()V

    goto :goto_0

    .line 6
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->selector_title_button_normal:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lsmartisan/widget/R$color;->title_bar_button_text_colorlist:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setOkButtonTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 8
    :cond_3
    sget v0, Lsmartisan/widget/R$drawable;->title_btn_blue_frame:I

    .line 9
    invoke-virtual {p0}, Lsmartisan/widget/Title;->resetOkButtonTextColorAsDefault()V

    :goto_0
    if-lez v0, :cond_4

    .line 10
    invoke-virtual {p0, v0}, Lsmartisan/widget/Title;->setOkButtonBackgroundResource(I)V

    :cond_4
    return-void
.end method

.method public setOkButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOkButtonShadow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setOkButtonShadowColorsEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowButton;->setShadowEnable(Z)V

    return-void
.end method

.method public setOkButtonText(I)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setOkButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOkButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    :cond_1
    return-void
.end method

.method public setOkButtonTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setOkButtonTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowComponent;->setShadowDrawable(I)V

    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowComponent;->setShadowVisible(Z)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/Title;->mDirty:Z

    return-void
.end method

.method public setTitleBackgroundResource(Lsmartisan/widget/Title$BackgroundStyle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1
    sget-object v1, Lsmartisan/widget/Title$4;->$SwitchMap$smartisan$widget$Title$BackgroundStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget v0, Lsmartisan/widget/R$drawable;->title_bar_bg:I

    .line 3
    sget p1, Lsmartisan/widget/R$drawable;->title_bar_shadow:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setShadowDrawable(I)V

    goto :goto_0

    .line 4
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->title_bar_bg_blue_securitycenter_corner:I

    .line 5
    sget p1, Lsmartisan/widget/R$drawable;->title_bar_bg_shadow_blue_securitycenter:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setShadowDrawable(I)V

    goto :goto_0

    .line 6
    :cond_3
    sget v0, Lsmartisan/widget/R$drawable;->title_bar_bg_blue_securitycenter:I

    .line 7
    sget p1, Lsmartisan/widget/R$drawable;->title_bar_bg_shadow_blue_securitycenter:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/Title;->setShadowDrawable(I)V

    :goto_0
    if-lez v0, :cond_4

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_4
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateBackButtonEnableState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mBackButton:Lsmartisan/widget/ShadowTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public updateOkButtonEnableState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title;->mOkButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowButton;->setEnabled(Z)V

    return-void
.end method
