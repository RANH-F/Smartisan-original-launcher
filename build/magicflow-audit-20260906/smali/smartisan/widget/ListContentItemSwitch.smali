.class public Lsmartisan/widget/ListContentItemSwitch;
.super Lsmartisan/widget/ListContentItem;
.source "ListContentItemSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;,
        Lsmartisan/widget/ListContentItemSwitch$SavedState;,
        Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;
    }
.end annotation


# instance fields
.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnDisabledClickListenerDelegate:Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;

.field private mRightSlotView:Landroid/widget/LinearLayout;

.field private mSwitch:Lsmartisan/widget/SwitchEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ListContentItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ListContentItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lsmartisan/widget/R$styleable;->ListContentItemSwitch:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lsmartisan/widget/R$styleable;->ListContentItemSwitch_isChecked:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    iget-boolean p1, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->mSwitch:Lsmartisan/widget/SwitchEx;

    invoke-virtual {p1, p2}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    .line 11
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->mSwitch:Lsmartisan/widget/SwitchEx;

    new-instance p2, Lsmartisan/widget/ListContentItemSwitch$1;

    invoke-direct {p2, p0}, Lsmartisan/widget/ListContentItemSwitch$1;-><init>(Lsmartisan/widget/ListContentItemSwitch;)V

    invoke-virtual {p1, p2}, Lsmartisan/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setSaveFromParentEnabled(Z)V

    .line 13
    invoke-virtual {p0, v1}, Lsmartisan/widget/ListContentItem;->setPressable(Z)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/ListContentItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method


# virtual methods
.method protected getDefaultRightLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->list_content_right_switch:I

    return v0
.end method

.method public getSwitch()Lsmartisan/widget/SwitchEx;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mSwitch:Lsmartisan/widget/SwitchEx;

    return-object v0
.end method

.method protected initRightWidget()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$id;->switchex:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SwitchEx;

    iput-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mSwitch:Lsmartisan/widget/SwitchEx;

    .line 2
    sget v0, Lsmartisan/widget/R$id;->rightExpandView:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mRightSlotView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mSwitch:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0}, Lsmartisan/widget/SwitchEx;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lsmartisan/widget/ListContentItemSwitch$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget-boolean p1, p1, Lsmartisan/widget/ListContentItemSwitch$SavedState;->isChecked:Z

    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/ListContentItemSwitch$SavedState;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lsmartisan/widget/ListContentItemSwitch$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemSwitch;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lsmartisan/widget/ListContentItemSwitch$SavedState;->isChecked:Z

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 4
    iget-object v1, p0, Lsmartisan/widget/ListContentItemSwitch;->mSwitch:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v1, p1}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    .line 5
    iput-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setCheckedWithListenerCallback(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mSwitch:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mSwitch:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SwitchEx;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setRightExpandView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->mRightSlotView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSwitcherCallback(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iput-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnDisabledClickListenerDelegate:Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnDisabledClickListenerDelegate:Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;

    invoke-direct {v1, p1, v0}, Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;-><init>(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;Lsmartisan/widget/ListContentItemSwitch$1;)V

    iput-object v1, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnDisabledClickListenerDelegate:Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v1, p1}, Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;->access$200(Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnDisabledClickListenerDelegate:Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;

    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setOnDisabledClickListener(Lsmartisan/widget/ListContentItem$OnDisabledClickListener;)V

    return-void
.end method

.method protected shouldHandleDisabledTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lsmartisan/widget/ListContentItemSwitch;->mOnDisabledClickListenerDelegate:Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;

    if-nez v2, :cond_0

    iget v2, p0, Lsmartisan/widget/ListContentItem;->mDisableReasonStringId:I

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method
