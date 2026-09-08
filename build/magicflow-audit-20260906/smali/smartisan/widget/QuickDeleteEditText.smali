.class public Lsmartisan/widget/QuickDeleteEditText;
.super Landroid/widget/EditText;
.source "QuickDeleteEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/QuickDeleteEditText$TouchHelper;,
        Lsmartisan/widget/QuickDeleteEditText$OnDeleteIconClickListener;
    }
.end annotation


# static fields
.field private static final DELETE_BUTTON_VIR_ID:I = 0x100

.field private static final TAG:Ljava/lang/String; = "QuickDeleteEditText"


# instance fields
.field private mDeleteListener:Lsmartisan/widget/QuickDeleteEditText$OnDeleteIconClickListener;

.field private mDrawIcon:Z

.field private mIconPaddingLeft:I

.field private mIconPaddingRight:I

.field private mIconPaddingTop:I

.field private mIconVisible:Z

.field private mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTouchHelper:Lsmartisan/widget/QuickDeleteEditText$TouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/QuickDeleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "editTextStyle"

    const-string v2, "attr"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/QuickDeleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lsmartisan/widget/QuickDeleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x36

    .line 5
    iput p2, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingRight:I

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingLeft:I

    .line 7
    iput p2, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingTop:I

    .line 8
    iput-boolean p2, p0, Lsmartisan/widget/QuickDeleteEditText;->mDrawIcon:Z

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconVisible:Z

    .line 10
    sget p2, Lsmartisan/widget/R$drawable;->quick_icon_delete:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    new-instance p1, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;

    invoke-direct {p1, p0, p0}, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;-><init>(Lsmartisan/widget/QuickDeleteEditText;Landroid/view/View;)V

    iput-object p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mTouchHelper:Lsmartisan/widget/QuickDeleteEditText$TouchHelper;

    .line 12
    iget-object p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mTouchHelper:Lsmartisan/widget/QuickDeleteEditText$TouchHelper;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/QuickDeleteEditText;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/QuickDeleteEditText;->mDrawIcon:Z

    return p0
.end method

.method static synthetic access$100(Lsmartisan/widget/QuickDeleteEditText;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/QuickDeleteEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/QuickDeleteEditText;->onDeleteIconClick()V

    return-void
.end method

.method private onDeleteIconClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mDeleteListener:Lsmartisan/widget/QuickDeleteEditText$OnDeleteIconClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lsmartisan/widget/QuickDeleteEditText$OnDeleteIconClickListener;->onDeleteIconClick()V

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mTouchHelper:Lsmartisan/widget/QuickDeleteEditText$TouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private shouldDrawIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mDrawIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mTouchHelper:Lsmartisan/widget/QuickDeleteEditText$TouchHelper;

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
    invoke-direct {p0}, Lsmartisan/widget/QuickDeleteEditText;->shouldDrawIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingRight:I

    iget v3, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingLeft:I

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
    invoke-direct {p0}, Lsmartisan/widget/QuickDeleteEditText;->shouldDrawIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/QuickDeleteEditText;->shouldDrawIcon()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 6
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_1
    iget-object v1, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 9
    iget-object v2, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 10
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingTop:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 11
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    iget v6, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingRight:I

    sub-int/2addr v6, v0

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 12
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/QuickDeleteEditText;->updateDrawableVisibility(Z)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/QuickDeleteEditText;->updateDrawableVisibility(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/QuickDeleteEditText;->shouldDrawIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

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

    if-lt v1, v0, :cond_3

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setPressed(Z)V

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-ne p1, v1, :cond_2

    const-string p1, ""

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-direct {p0}, Lsmartisan/widget/QuickDeleteEditText;->onDeleteIconClick()V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 11
    iget-object v2, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    new-array v3, v1, [I

    .line 12
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "state_pressed"

    const-string v6, "attr"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 13
    invoke-static {p1, v3}, Landroid/widget/EditText;->mergeDrawableStates([I[I)[I

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    :goto_1
    return v1

    .line 14
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawable(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDrawable Fails, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickDeleteEditText"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIconPaddingLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingLeft:I

    return-void
.end method

.method public setIconPaddingRight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingRight:I

    return-void
.end method

.method public setIconPaddingTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconPaddingTop:I

    return-void
.end method

.method public setIconVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mIconVisible:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setOnDeleteIconClickListener(Lsmartisan/widget/QuickDeleteEditText$OnDeleteIconClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mDeleteListener:Lsmartisan/widget/QuickDeleteEditText$OnDeleteIconClickListener;

    return-void
.end method

.method public updateDrawableVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mQuickDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsmartisan/widget/QuickDeleteEditText;->mDrawIcon:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mDrawIcon:Z

    .line 3
    iget-object p1, p0, Lsmartisan/widget/QuickDeleteEditText;->mTouchHelper:Lsmartisan/widget/QuickDeleteEditText$TouchHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_0
    return-void
.end method
