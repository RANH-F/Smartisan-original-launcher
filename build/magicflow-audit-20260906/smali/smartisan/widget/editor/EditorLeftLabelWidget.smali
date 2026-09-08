.class Lsmartisan/widget/editor/EditorLeftLabelWidget;
.super Landroid/widget/LinearLayout;
.source "EditorLeftLabelWidget.java"


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mDividerView:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconContainer:Landroid/view/ViewGroup;

.field private mLabel:Landroid/widget/TextView;

.field private mLabelClickListener:Landroid/view/View$OnClickListener;

.field private mRightSlotView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/editor/EditorLeftLabelWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/editor/EditorLeftLabelWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x10

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->editor_left_right_widget_min_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$layout;->editor_left_label_layout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    sget p2, Lsmartisan/widget/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIcon:Landroid/widget/ImageView;

    .line 9
    sget p2, Lsmartisan/widget/R$id;->label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    .line 10
    sget p2, Lsmartisan/widget/R$id;->arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mArrow:Landroid/widget/ImageView;

    .line 11
    sget p2, Lsmartisan/widget/R$id;->rightExpandView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mRightSlotView:Landroid/widget/LinearLayout;

    .line 12
    sget p2, Lsmartisan/widget/R$id;->iconContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIconContainer:Landroid/view/ViewGroup;

    .line 13
    sget p2, Lsmartisan/widget/R$id;->divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mDividerView:Landroid/view/View;

    .line 14
    iget-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIcon:Landroid/widget/ImageView;

    new-instance p2, Lsmartisan/widget/editor/EditorLeftLabelWidget$1;

    invoke-direct {p2, p0}, Lsmartisan/widget/editor/EditorLeftLabelWidget$1;-><init>(Lsmartisan/widget/editor/EditorLeftLabelWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    new-instance p2, Lsmartisan/widget/editor/EditorLeftLabelWidget$2;

    invoke-direct {p2, p0}, Lsmartisan/widget/editor/EditorLeftLabelWidget$2;-><init>(Lsmartisan/widget/editor/EditorLeftLabelWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/editor/EditorLeftLabelWidget;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIconClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/editor/EditorLeftLabelWidget;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/editor/EditorLeftLabelWidget;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabelClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private setArrowRightMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-static {v0}, Lsmartisan/util/Utils;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v0

    return v0
.end method

.method public setArrowVisible(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lsmartisan/widget/R$dimen;->editor_element_margin_left_right:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setArrowRightMargin(I)V

    .line 4
    invoke-virtual {p0, v1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setLabelRightMargin(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0, v1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setArrowRightMargin(I)V

    .line 6
    invoke-virtual {p0, v0}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setLabelRightMargin(I)V

    :goto_1
    return-void
.end method

.method public setIconContainerBackground(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIconContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIconContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIconContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setLabelGravity(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x30

    if-ne p1, v1, :cond_0

    .line 1
    iget-object v1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    const/16 v2, 0x1e

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    const/16 v2, 0x12

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setLabelLeftMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLabelRightMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLabelWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLabelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRightExpandView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mRightSlotView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScale(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mDividerView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget;->mLabel:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
