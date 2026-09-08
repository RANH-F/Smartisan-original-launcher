.class public Lsmartisan/widget/editor/LabelEditor;
.super Lsmartisan/widget/editor/AbsEditor;
.source "LabelEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/editor/LabelEditor$LeftIconContainerBgStyle;
    }
.end annotation


# instance fields
.field private final mGrayIconDrawables:[I

.field private mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

.field private mLineChangeWatcher:Landroid/text/TextWatcher;

.field private mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/editor/LabelEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/editor/LabelEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/editor/AbsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x4

    new-array p3, p3, [I

    .line 4
    sget v0, Lsmartisan/widget/R$drawable;->editor_left_icon_bg_single:I

    const/4 v1, 0x0

    aput v0, p3, v1

    sget v0, Lsmartisan/widget/R$drawable;->editor_left_icon_bg_top:I

    const/4 v2, 0x1

    aput v0, p3, v2

    sget v0, Lsmartisan/widget/R$drawable;->editor_left_icon_bg_middle:I

    const/4 v2, 0x2

    aput v0, p3, v2

    sget v0, Lsmartisan/widget/R$drawable;->editor_left_icon_bg_bottom:I

    const/4 v2, 0x3

    aput v0, p3, v2

    iput-object p3, p0, Lsmartisan/widget/editor/LabelEditor;->mGrayIconDrawables:[I

    .line 5
    new-instance p3, Lsmartisan/widget/editor/LabelEditor$1;

    invoke-direct {p3, p0}, Lsmartisan/widget/editor/LabelEditor$1;-><init>(Lsmartisan/widget/editor/LabelEditor;)V

    iput-object p3, p0, Lsmartisan/widget/editor/LabelEditor;->mLineChangeWatcher:Landroid/text/TextWatcher;

    .line 6
    sget-object p3, Lsmartisan/widget/R$styleable;->LabelEditor:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lsmartisan/widget/R$styleable;->LabelEditor_leftIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 8
    invoke-virtual {p0, p2}, Lsmartisan/widget/editor/LabelEditor;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    .line 9
    sget p2, Lsmartisan/widget/R$styleable;->LabelEditor_leftLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p0, p2}, Lsmartisan/widget/editor/LabelEditor;->setLeftLabel(Ljava/lang/CharSequence;)V

    .line 11
    sget p2, Lsmartisan/widget/R$styleable;->LabelEditor_showLeftArrow:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 12
    invoke-virtual {p0, p2}, Lsmartisan/widget/editor/LabelEditor;->setShowLeftLabelArrow(Z)V

    .line 13
    sget p2, Lsmartisan/widget/R$styleable;->LabelEditor_rightIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 14
    invoke-virtual {p0, p2}, Lsmartisan/widget/editor/LabelEditor;->setRightIcon(Landroid/graphics/drawable/Drawable;)V

    .line 15
    sget p3, Lsmartisan/widget/R$styleable;->LabelEditor_showRightDivide:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p0, p3}, Lsmartisan/widget/editor/LabelEditor;->setShowRightDevide(Z)V

    .line 17
    :cond_0
    sget p2, Lsmartisan/widget/R$styleable;->LabelEditor_rightLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p0, p2}, Lsmartisan/widget/editor/LabelEditor;->setRightLabel(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    iget-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    iget-object p2, p0, Lsmartisan/widget/editor/LabelEditor;->mLineChangeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/editor/LabelEditor;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/editor/LabelEditor;->editorLineCountChange(Z)V

    return-void
.end method

.method private editorLineCountChange(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/editor/AbsEditor;->setLeftContainerCenterVertical(Z)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x30

    :goto_0
    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setLabelGravity(I)V

    return-void
.end method

.method private resetLeftIconPadding()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->editor_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/editor/AbsEditor;->setContainerLeftPadding(I)V

    return-void
.end method


# virtual methods
.method public addSpecialEditorRightExpandView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    instance-of v0, v0, Lsmartisan/widget/QuickDeleteEditText;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mMidContainer:Landroid/widget/LinearLayout;

    sget v1, Lsmartisan/widget/R$id;->rightExpandView:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected getDefaultLeftLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->label_editor_left_layout:I

    return v0
.end method

.method protected getDefaultRightLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->label_editor_right_layout:I

    return v0
.end method

.method public getLeftContainer()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    return-object v0
.end method

.method public getLeftLabelWidth()I
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->getTextWidth()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLeftWidgetIconView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->getIconView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRightContainer()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    return-object v0
.end method

.method protected initLeftWidget()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$id;->left_widget:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/editor/EditorLeftLabelWidget;

    iput-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    return-void
.end method

.method protected initRightWidget()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$id;->right_widget:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/editor/EditorRightIconWidget;

    iput-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lsmartisan/widget/editor/LabelEditor;->mLineChangeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setLeftIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/editor/AbsEditor;->setContainerLeftPadding(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/editor/LabelEditor;->resetLeftIconPadding()V

    .line 3
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftIconContainerBgStyle(Lsmartisan/widget/editor/LabelEditor$LeftIconContainerBgStyle;)V
    .locals 2

    .line 1
    sget-object v0, Lsmartisan/widget/editor/LabelEditor$2;->$SwitchMap$smartisan$widget$editor$LabelEditor$LeftIconContainerBgStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/editor/LabelEditor;->mGrayIconDrawables:[I

    iget v1, p0, Lsmartisan/widget/editor/AbsEditor;->mBackgroundStyle:I

    sub-int/2addr v1, v0

    aget p1, p1, v1

    :goto_0
    if-lez p1, :cond_1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setIconContainerBackground(I)V

    :cond_1
    return-void
.end method

.method public setLeftIconResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/editor/AbsEditor;->setContainerLeftPadding(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setIconResource(I)V

    return-void
.end method

.method public setLeftLabel(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setText(I)V

    return-void
.end method

.method public setLeftLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftLabelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setOnLabelClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeftLabelGravity(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lsmartisan/widget/editor/LabelEditor;->mLineChangeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setLabelGravity(I)V

    return-void
.end method

.method public setLeftLabelLeftMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setLabelLeftMargin(I)V

    return-void
.end method

.method public setLeftLabelRightMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setLabelRightMargin(I)V

    return-void
.end method

.method public setLeftLabelWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setLabelWidth(I)V

    return-void
.end method

.method public setLeftWidgetBackgroundResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/editor/AbsEditor;->setContainerLeftPadding(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setLeftWidgetExpandView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setRightExpandView(Landroid/view/View;)V

    return-void
.end method

.method public setOnLeftIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setOnIconClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLeftLabelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setOnLabelClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnRightWidgetClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorRightIconWidget;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightIconContentDescription(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorRightIconWidget;->setIconContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setRightIconResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorRightIconWidget;->setIconResource(I)V

    return-void
.end method

.method public setRightLabel(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorRightIconWidget;->setText(I)V

    return-void
.end method

.method public setRightLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorRightIconWidget;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightWidgetWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorRightIconWidget;->setWidth(I)V

    return-void
.end method

.method public setShowLeftDivider(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setShowDivider(Z)V

    return-void
.end method

.method public setShowLeftLabelArrow(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->setArrowVisible(Z)V

    return-void
.end method

.method public setShowLeftWidget(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mLeftWidget:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setShowRightDevide(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/editor/AbsEditor;->setContainerRightPadding(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    invoke-virtual {v0, p1}, Lsmartisan/widget/editor/EditorRightIconWidget;->setDevideVisible(Z)V

    return-void
.end method

.method public setShowRightWidget(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/LabelEditor;->mRightWidget:Lsmartisan/widget/editor/EditorRightIconWidget;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lsmartisan/widget/editor/AbsEditor;->setSingleLine(Z)V

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/editor/LabelEditor;->editorLineCountChange(Z)V

    return-void
.end method
