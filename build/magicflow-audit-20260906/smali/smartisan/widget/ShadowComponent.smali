.class public abstract Lsmartisan/widget/ShadowComponent;
.super Ljava/lang/Object;
.source "ShadowComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/ShadowComponent$IllegalParentException;
    }
.end annotation


# static fields
.field public static final ORIENTATION_ABOVE_HOST:I = 0x1

.field public static final ORIENTATION_BELOW_HOST:I = 0x2


# instance fields
.field final globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mContext:Landroid/content/Context;

.field private mHostView:Landroid/view/View;

.field private mShadowDrawable:I

.field private mShadowView:Landroid/widget/ImageView;

.field private mShadowVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lsmartisan/widget/ShadowComponent$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/ShadowComponent$1;-><init>(Lsmartisan/widget/ShadowComponent;)V

    iput-object v0, p0, Lsmartisan/widget/ShadowComponent;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3
    iput-object p1, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/ShadowComponent;->mContext:Landroid/content/Context;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/ShadowComponent;->mContext:Landroid/content/Context;

    sget-object v1, Lsmartisan/widget/R$styleable;->SmartisanShadow:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanShadow_shadowDrawable:I

    invoke-virtual {p0}, Lsmartisan/widget/ShadowComponent;->getDefaultShadowRes()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/ShadowComponent;->mShadowDrawable:I

    .line 7
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanShadow_shadowVisible:I

    invoke-virtual {p0}, Lsmartisan/widget/ShadowComponent;->isShadowVisibleDefault()Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lsmartisan/widget/ShadowComponent;->mShadowVisible:Z

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/ShadowComponent;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/ShadowComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/ShadowComponent;->invalidateShadow()V

    return-void
.end method

.method static synthetic access$100(Lsmartisan/widget/ShadowComponent;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    return-object p0
.end method

.method private invalidateShadow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lsmartisan/widget/ShadowComponent;->mShadowVisible:Z

    if-eqz v1, :cond_9

    .line 3
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz v1, :cond_5

    .line 4
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 5
    iget-object v1, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    .line 6
    new-instance v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lsmartisan/widget/ShadowComponent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    .line 7
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/ShadowComponent;->getShadowOrientation()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 9
    iget-object v2, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x2

    .line 10
    iget-object v3, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0xc

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v2, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x3

    .line 14
    iget-object v3, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v2, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 16
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    iget v3, p0, Lsmartisan/widget/ShadowComponent;->mShadowDrawable:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 17
    iget-object v2, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 18
    :cond_4
    iget v0, p0, Lsmartisan/widget/ShadowComponent;->mShadowDrawable:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 19
    :cond_5
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    .line 20
    check-cast v0, Landroid/widget/FrameLayout;

    .line 21
    iget-object v1, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    if-nez v1, :cond_7

    .line 22
    new-instance v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lsmartisan/widget/ShadowComponent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    .line 23
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {p0}, Lsmartisan/widget/ShadowComponent;->getShadowOrientation()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 25
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0x50

    .line 26
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 27
    :cond_6
    iget-object v2, p0, Lsmartisan/widget/ShadowComponent;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 28
    :goto_1
    iget-object v2, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    iget v3, p0, Lsmartisan/widget/ShadowComponent;->mShadowDrawable:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 29
    iget-object v2, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 30
    :cond_7
    iget v0, p0, Lsmartisan/widget/ShadowComponent;->mShadowDrawable:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 31
    :cond_8
    new-instance v0, Lsmartisan/widget/ShadowComponent$IllegalParentException;

    const-string v1, "parent must be RelativeLayout or FrameLayout if you want to show shadow"

    invoke-direct {v0, v1}, Lsmartisan/widget/ShadowComponent$IllegalParentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_9
    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    iget-object v1, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    :goto_2
    return-void
.end method


# virtual methods
.method abstract getDefaultShadowRes()I
.end method

.method protected getShadowOrientation()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getShadowView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowComponent;->mShadowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method abstract isShadowVisibleDefault()Z
.end method

.method protected onShadowLayout()V
    .locals 0

    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/ShadowComponent;->mShadowDrawable:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/ShadowComponent;->mShadowDrawable:I

    .line 3
    iget-boolean p1, p0, Lsmartisan/widget/ShadowComponent;->mShadowVisible:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/ShadowComponent;->invalidateShadow()V

    :cond_0
    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ShadowComponent;->mShadowVisible:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/ShadowComponent;->mShadowVisible:Z

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/ShadowComponent;->invalidateShadow()V

    :cond_0
    return-void
.end method
