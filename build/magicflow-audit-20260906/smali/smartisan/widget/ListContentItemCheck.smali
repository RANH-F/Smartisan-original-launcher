.class public Lsmartisan/widget/ListContentItemCheck;
.super Lsmartisan/widget/ListContentItem;
.source "ListContentItemCheck.java"


# instance fields
.field private final DEFAULT_ICON_RES:I

.field private mSelectedIcon:Landroid/widget/ImageView;

.field private mSelectedIconRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ListContentItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ListContentItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget v0, Lsmartisan/widget/R$drawable;->selector_radio_choice:I

    iput v0, p0, Lsmartisan/widget/ListContentItemCheck;->DEFAULT_ICON_RES:I

    .line 5
    iget v0, p0, Lsmartisan/widget/ListContentItemCheck;->DEFAULT_ICON_RES:I

    iput v0, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIconRes:I

    .line 6
    sget-object v0, Lsmartisan/widget/R$styleable;->ListContentItemCheck:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lsmartisan/widget/R$styleable;->ListContentItemCheck_selectedIcon:I

    iget p3, p0, Lsmartisan/widget/ListContentItemCheck;->DEFAULT_ICON_RES:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIconRes:I

    .line 8
    iget p2, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIconRes:I

    invoke-virtual {p0, p2}, Lsmartisan/widget/ListContentItemCheck;->setSelectedIconRes(I)V

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getDefaultRightLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->list_content_right_image_view:I

    return v0
.end method

.method protected initRightWidget()V
    .locals 2

    .line 1
    sget v0, Lsmartisan/widget/R$id;->imageview:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIcon:Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIcon:Landroid/widget/ImageView;

    iget v1, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemCheck;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setCheckedIconLight(Z)V
    .locals 0

    return-void
.end method

.method public setSelectedIconRes(I)V
    .locals 1

    .line 1
    iput p1, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIconRes:I

    .line 2
    iget-object p1, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lsmartisan/widget/ListContentItemCheck;->mSelectedIconRes:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
