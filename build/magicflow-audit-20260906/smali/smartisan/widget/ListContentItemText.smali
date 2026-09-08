.class public Lsmartisan/widget/ListContentItemText;
.super Lsmartisan/widget/ListContentItem;
.source "ListContentItemText.java"


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mRightSlotView:Landroid/widget/LinearLayout;

.field private mSubtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ListContentItemText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ListContentItemText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lsmartisan/widget/R$styleable;->ListContentItemText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lsmartisan/widget/R$styleable;->ListContentItemText_show_arrow:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 6
    sget p3, Lsmartisan/widget/R$styleable;->ListContentItemText_subTitle:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-virtual {p0, p2}, Lsmartisan/widget/ListContentItemText;->setArrowVisible(Z)V

    .line 8
    invoke-virtual {p0, p3}, Lsmartisan/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lsmartisan/widget/ListContentItemText$1;

    invoke-direct {p3, p0}, Lsmartisan/widget/ListContentItemText$1;-><init>(Lsmartisan/widget/ListContentItemText;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getSubtitleRightPadding()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->list_right_text_right_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getDefaultRightLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->list_content_right_subtitle_arrow:I

    return v0
.end method

.method protected getRightContentWidth()F
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    invoke-static {v1}, Lsmartisan/util/Utils;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v1

    invoke-direct {p0}, Lsmartisan/widget/ListContentItemText;->getSubtitleRightPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lsmartisan/widget/ListContentItemText;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 6
    sget v2, Lsmartisan/widget/R$drawable;->selector_list_content_item_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 7
    :cond_1
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemText;->hasRightExpandView()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, p0, Lsmartisan/widget/ListContentItemText;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 9
    :cond_2
    sget v2, Lsmartisan/widget/R$dimen;->right_container_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lsmartisan/widget/R$dimen;->flexible_space:I

    .line 10
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasRightExpandView()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v3, p0, Lsmartisan/widget/ListContentItemText;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected initRightWidget()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    .line 2
    sget v0, Lsmartisan/widget/R$id;->arrow:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/ListContentItemText;->mArrow:Landroid/widget/ImageView;

    .line 3
    sget v0, Lsmartisan/widget/R$id;->rightExpandView:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lsmartisan/widget/ListContentItemText;->mRightSlotView:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected limitContainerWidth()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomMidView:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemText;->rightContainerHasFixedWidth()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->getLeftContentWidth()F

    move-result v1

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->getMidContentWidth()F

    move-result v2

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemText;->getRightContentWidth()F

    move-result v3

    add-float v4, v1, v2

    add-float/2addr v4, v3

    int-to-float v0, v0

    cmpl-float v4, v4, v0

    if-lez v4, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$dimen;->item_text_mid_width_limit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-nez v6, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lsmartisan/widget/R$dimen;->left_icon_area_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v4, v6

    :cond_1
    int-to-float v6, v4

    cmpl-float v7, v2, v6

    if-lez v7, :cond_2

    .line 9
    invoke-virtual {p0, v4}, Lsmartisan/widget/ListContentItem;->setMidContainerWidth(I)V

    sub-float/2addr v0, v1

    sub-float/2addr v0, v6

    goto :goto_0

    :cond_2
    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    :goto_0
    cmpl-float v1, v0, v5

    if-lez v1, :cond_4

    .line 10
    iget-object v1, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 11
    invoke-static {v1}, Lsmartisan/util/Utils;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v2

    sub-float/2addr v3, v2

    invoke-direct {p0}, Lsmartisan/widget/ListContentItemText;->getSubtitleRightPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected rightContainerHasFixedWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setArrowVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/ListContentItemText;->getSubtitleRightPadding()I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemText;->setSubtitleRightPadding(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lsmartisan/widget/ListContentItem;->setIcon(I)V

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemText;->limitContainerWidth()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lsmartisan/widget/ListContentItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemText;->limitContainerWidth()V

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
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/ListContentItemText;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lsmartisan/widget/ListContentItemText;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lsmartisan/widget/ListContentItemText;->mRightSlotView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemText;->limitContainerWidth()V

    return-void
.end method

.method public setSubtitleRightPadding(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomMidView:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lsmartisan/widget/ListContentItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemText;->limitContainerWidth()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->mIsCustomMidView:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lsmartisan/widget/ListContentItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemText;->limitContainerWidth()V

    return-void
.end method
