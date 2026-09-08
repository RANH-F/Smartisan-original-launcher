.class public Lsmartisan/widget/SurnameGridView;
.super Landroid/widget/GridView;
.source "SurnameGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SurnameGridView$OnPressChangeListener;
    }
.end annotation


# instance fields
.field private mPrePosition:I

.field private mPressChangeListener:Lsmartisan/widget/SurnameGridView$OnPressChangeListener;

.field private mTouchedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lsmartisan/widget/SurnameGridView;->mTouchedPosition:I

    .line 3
    iput p1, p0, Lsmartisan/widget/SurnameGridView;->mPrePosition:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x3

    :cond_0
    move v0, v2

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lsmartisan/widget/SurnameGridView;->mTouchedPosition:I

    if-ne v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 6
    :cond_2
    iput v0, p0, Lsmartisan/widget/SurnameGridView;->mTouchedPosition:I

    .line 7
    :goto_0
    iget v1, p0, Lsmartisan/widget/SurnameGridView;->mPrePosition:I

    if-eq v1, v0, :cond_3

    .line 8
    iget-object v1, p0, Lsmartisan/widget/SurnameGridView;->mPressChangeListener:Lsmartisan/widget/SurnameGridView$OnPressChangeListener;

    invoke-interface {v1, v0}, Lsmartisan/widget/SurnameGridView$OnPressChangeListener;->onTouched(I)V

    .line 9
    iput v0, p0, Lsmartisan/widget/SurnameGridView;->mPrePosition:I

    .line 10
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnPressChangeListener(Lsmartisan/widget/SurnameGridView$OnPressChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SurnameGridView;->mPressChangeListener:Lsmartisan/widget/SurnameGridView$OnPressChangeListener;

    return-void
.end method
