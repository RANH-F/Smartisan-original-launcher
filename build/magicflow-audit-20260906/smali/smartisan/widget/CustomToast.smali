.class public Lsmartisan/widget/CustomToast;
.super Ljava/lang/Object;
.source "CustomToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/CustomToast$TN;
    }
.end annotation


# static fields
.field public static final DURATION_LONG:I = 0xdac

.field public static final DURATION_SHORT:I = 0x7d0

.field static final SNACKBAR_DURATION:I = 0x7d0

.field public static final STYLE_DARK:I = 0x1

.field public static final STYLE_LIGHT:I = 0x0

.field static final TAG:Ljava/lang/String; = "CustomToast"

.field static final localLOGV:Z = false


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field final mTN:Lsmartisan/widget/CustomToast$TN;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsmartisan/widget/CustomToast;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Lsmartisan/widget/CustomToast$TN;

    invoke-direct {v0}, Lsmartisan/widget/CustomToast$TN;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/CustomToast;->mTN:Lsmartisan/widget/CustomToast$TN;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mTN:Lsmartisan/widget/CustomToast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lsmartisan/widget/R$dimen;->toast_y_offset:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Lsmartisan/widget/CustomToast$TN;->mY:I

    .line 5
    iget-object p1, p0, Lsmartisan/widget/CustomToast;->mTN:Lsmartisan/widget/CustomToast$TN;

    const/16 v0, 0x51

    iput v0, p1, Lsmartisan/widget/CustomToast$TN;->mGravity:I

    return-void
.end method

.method public static makeButtonSnackbar(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lsmartisan/widget/CustomToast;
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/CustomToast;

    invoke-direct {v0, p0}, Lsmartisan/widget/CustomToast;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lsmartisan/widget/SnackbarWithButton;

    invoke-direct {v1, p0}, Lsmartisan/widget/SnackbarWithButton;-><init>(Landroid/content/Context;)V

    .line 3
    sget p0, Lsmartisan/widget/R$drawable;->toast_frame_smartisanos:I

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4
    invoke-virtual {v1, p1}, Lsmartisan/widget/SnackbarWithButton;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v1, p2}, Lsmartisan/widget/SnackbarWithButton;->setActionText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p0, Lsmartisan/widget/CustomToast$1;

    invoke-direct {p0, v0, p3}, Lsmartisan/widget/CustomToast$1;-><init>(Lsmartisan/widget/CustomToast;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Lsmartisan/widget/SnackbarWithButton;->setActionListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, v0, Lsmartisan/widget/CustomToast;->mNextView:Landroid/view/View;

    const/16 p0, 0x7d0

    .line 8
    iput p0, v0, Lsmartisan/widget/CustomToast;->mDuration:I

    return-object v0
.end method

.method public static makeDrawableSnackbar(Landroid/content/Context;Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Lsmartisan/widget/CustomToast;
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/CustomToast;

    invoke-direct {v0, p0}, Lsmartisan/widget/CustomToast;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lsmartisan/widget/SnackbarWithDrawable;

    invoke-direct {v1, p0}, Lsmartisan/widget/SnackbarWithDrawable;-><init>(Landroid/content/Context;)V

    .line 3
    sget p0, Lsmartisan/widget/R$drawable;->toast_frame_smartisanos:I

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4
    invoke-virtual {v1, p1}, Lsmartisan/widget/SnackbarWithDrawable;->setMessage(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_0

    .line 5
    invoke-virtual {v1, p2}, Lsmartisan/widget/SnackbarWithDrawable;->setImageResource(I)V

    .line 6
    :cond_0
    new-instance p0, Lsmartisan/widget/CustomToast$2;

    invoke-direct {p0, v0, p3}, Lsmartisan/widget/CustomToast$2;-><init>(Lsmartisan/widget/CustomToast;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Lsmartisan/widget/SnackbarWithDrawable;->setActionListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, v0, Lsmartisan/widget/CustomToast;->mNextView:Landroid/view/View;

    const/16 p0, 0x7d0

    .line 8
    iput p0, v0, Lsmartisan/widget/CustomToast;->mDuration:I

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Lsmartisan/widget/CustomToast;
    .locals 5

    .line 1
    new-instance v0, Lsmartisan/widget/CustomToast;

    invoke-direct {v0, p0}, Lsmartisan/widget/CustomToast;-><init>(Landroid/content/Context;)V

    const-string v1, "layout_inflater"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3
    sget v2, Lsmartisan/widget/R$layout;->custom_toast_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4
    sget v2, Lsmartisan/widget/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 7
    sget p1, Lsmartisan/widget/R$drawable;->tip_toast_bg_dark:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    sget p1, Lsmartisan/widget/R$color;->toast_dark_text_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x3dcccccd    # 0.1f

    const/4 p3, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    .line 9
    sget v4, Lsmartisan/widget/R$color;->text_shadow_color_enable:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p1, p3, v3, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown style value:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", available values: {STYLE_LIGHT="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", STYLE_DARK="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    sget p1, Lsmartisan/widget/R$drawable;->tip_toast_bg_light:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    sget p1, Lsmartisan/widget/R$color;->toast_light_text_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :goto_0
    iput-object v1, v0, Lsmartisan/widget/CustomToast;->mNextView:Landroid/view/View;

    .line 14
    iput p2, v0, Lsmartisan/widget/CustomToast;->mDuration:I

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mTN:Lsmartisan/widget/CustomToast$TN;

    invoke-virtual {v0}, Lsmartisan/widget/CustomToast$TN;->hide()V

    return-void
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mTN:Lsmartisan/widget/CustomToast$TN;

    iget v0, v0, Lsmartisan/widget/CustomToast$TN;->mGravity:I

    return v0
.end method

.method public getXOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mTN:Lsmartisan/widget/CustomToast$TN;

    iget v0, v0, Lsmartisan/widget/CustomToast$TN;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mTN:Lsmartisan/widget/CustomToast$TN;

    iget v0, v0, Lsmartisan/widget/CustomToast$TN;->mY:I

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    .line 6
    aget v6, v1, v5

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    const/4 v7, 0x0

    .line 7
    aget v8, v1, v7

    div-int/2addr v3, v0

    add-int/2addr v8, v3

    .line 8
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr p1, v8

    sub-int v8, p1, v3

    .line 11
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ge v6, p1, :cond_2

    .line 12
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    aget v3, v1, v5

    sub-int v3, p1, v3

    int-to-float v3, v3

    const/high16 v6, 0x42c80000    # 100.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v6

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    const p1, 0x800035

    .line 13
    aget v0, v1, v5

    add-int/2addr v0, v4

    iget v1, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v8, v0}, Lsmartisan/widget/CustomToast;->setGravity(III)V

    goto :goto_0

    :cond_1
    const v0, 0x800055

    .line 14
    aget v1, v1, v5

    sub-int/2addr p1, v1

    invoke-virtual {p0, v0, v8, p1}, Lsmartisan/widget/CustomToast;->setGravity(III)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x51

    .line 15
    invoke-virtual {p0, p1, v7, v4}, Lsmartisan/widget/CustomToast;->setGravity(III)V

    :goto_0
    return-void
.end method

.method public setGravity(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mTN:Lsmartisan/widget/CustomToast$TN;

    iput p1, v0, Lsmartisan/widget/CustomToast$TN;->mGravity:I

    .line 2
    iput p2, v0, Lsmartisan/widget/CustomToast$TN;->mX:I

    .line 3
    iput p3, v0, Lsmartisan/widget/CustomToast$TN;->mY:I

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/CustomToast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mNextView:Landroid/view/View;

    const-string v1, "This Toast was not created with Toast.makeText()"

    if-eqz v0, :cond_1

    .line 3
    sget v2, Lsmartisan/widget/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/CustomToast;->mTN:Lsmartisan/widget/CustomToast$TN;

    .line 3
    iput-object v0, v1, Lsmartisan/widget/CustomToast$TN;->mNextView:Landroid/view/View;

    .line 4
    iget v0, p0, Lsmartisan/widget/CustomToast;->mDuration:I

    iput v0, v1, Lsmartisan/widget/CustomToast$TN;->mDuration:I

    .line 5
    iput-object p1, v1, Lsmartisan/widget/CustomToast$TN;->mActivity:Landroid/app/Activity;

    .line 6
    invoke-virtual {v1}, Lsmartisan/widget/CustomToast$TN;->show()V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setView must have been called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
