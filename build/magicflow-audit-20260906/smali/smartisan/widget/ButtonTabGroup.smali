.class public Lsmartisan/widget/ButtonTabGroup;
.super Landroid/widget/LinearLayout;
.source "ButtonTabGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;
    }
.end annotation


# static fields
.field private static final DEF_HAS_GAP_VALUE:Z = false

.field public static final NO_WIDTH:I = -0x80000000


# instance fields
.field private mActivableView:Landroid/view/View;

.field private mAlwaysKeepClickListen:Z

.field private mBtnCount:I

.field private mBtnDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBtns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/ShadowButton;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEachGapValue:I

.field private mHasBtnGap:Z

.field private mItemListener:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ButtonTabGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ButtonTabGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x80000000

    .line 4
    iput p2, p0, Lsmartisan/widget/ButtonTabGroup;->mWidth:I

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x11

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 8
    iput-object p1, p0, Lsmartisan/widget/ButtonTabGroup;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->button_tab_group_each_gap:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/ButtonTabGroup;->mEachGapValue:I

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/ButtonTabGroup;->mBtns:Ljava/util/List;

    return-void
.end method

.method private checkButtonIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnCount:I

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private generateShadowButton(I)Lsmartisan/widget/ShadowButton;
    .locals 6

    .line 1
    new-instance v0, Lsmartisan/widget/ShadowButton;

    iget-object v1, p0, Lsmartisan/widget/ButtonTabGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsmartisan/widget/ShadowButton;-><init>(Landroid/content/Context;)V

    .line 2
    iget-boolean v1, p0, Lsmartisan/widget/ButtonTabGroup;->mHasBtnGap:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget v1, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnCount:I

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lsmartisan/widget/R$style;->SmallButton_Filter:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    if-nez p1, :cond_1

    .line 4
    sget v1, Lsmartisan/widget/R$drawable;->selector_small_btn_filter_left:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnCount:I

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_2

    .line 6
    sget v1, Lsmartisan/widget/R$drawable;->selector_small_btn_filter_right:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    sget v1, Lsmartisan/widget/R$drawable;->selector_small_btn_filter_middle:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 8
    :goto_0
    sget v1, Lsmartisan/widget/R$color;->filter_button_text_shadow_colors:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    const/high16 v5, -0x40000000    # -2.0f

    .line 10
    invoke-virtual {v0, v1, v3, v4, v5}, Lsmartisan/widget/ShadowButton;->setShadowColors(Landroid/content/res/ColorStateList;FFF)V

    goto :goto_2

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lsmartisan/widget/R$style;->SmallButton_Standard:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 12
    sget v1, Lsmartisan/widget/R$drawable;->selector_small_btn_standard:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 13
    :goto_2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMaxLines(I)V

    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnText:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_4
    iget-object v1, p0, Lsmartisan/widget/ButtonTabGroup;->mBtns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnDrawables:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 20
    iget-object v1, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnDrawables:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lsmartisan/widget/ButtonTabGroup;->setButtonDrawable(II)V

    :cond_5
    return-object v0
.end method

.method private generateShadowButtonLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3
    iget-boolean v1, p0, Lsmartisan/widget/ButtonTabGroup;->mHasBtnGap:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget p1, p0, Lsmartisan/widget/ButtonTabGroup;->mEachGapValue:I

    neg-int p1, p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_0
    return-object v0
.end method

.method private getListButtonsTextOrCreate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnText:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnText:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnText:Ljava/util/List;

    return-object v0
.end method

.method private setButtonActivatedInner(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lsmartisan/widget/ButtonTabGroup;->mItemListener:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lsmartisan/widget/ButtonTabGroup;->mActivableView:Landroid/view/View;

    if-ne v0, v3, :cond_3

    .line 4
    iget-boolean v1, p0, Lsmartisan/widget/ButtonTabGroup;->mHasBtnGap:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lsmartisan/widget/ButtonTabGroup;->mAlwaysKeepClickListen:Z

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lsmartisan/widget/ButtonTabGroup;->mItemListener:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

    invoke-interface {p2, v0, p1}, Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;->onButtonGroupItemClick(Landroid/view/View;I)V

    :cond_2
    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v3, v2}, Landroid/view/View;->setActivated(Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 7
    iget-object p2, p0, Lsmartisan/widget/ButtonTabGroup;->mItemListener:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

    invoke-interface {p2, v0, p1}, Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;->onButtonGroupItemClick(Landroid/view/View;I)V

    .line 8
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 9
    iput-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mActivableView:Landroid/view/View;

    return-void
.end method

.method private setButtonDrawable(II)V
    .locals 8

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->action_button_icon_inset_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->action_button_icon_inset_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 7
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 8
    iget-object p2, p0, Lsmartisan/widget/ButtonTabGroup;->mBtns:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ShadowButton;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p2, p2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getButtonTab(I)Lsmartisan/widget/ShadowButton;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/ButtonTabGroup;->checkButtonIndex(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ShadowButton;

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ButtonTabGroup;->setButtonActivatedInner(IZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/ButtonTabGroup;->mWidth:I

    if-lez v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 2
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setAlwaysKeepClickListen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/ButtonTabGroup;->mAlwaysKeepClickListen:Z

    return-void
.end method

.method public setButtonActivated(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/ButtonTabGroup;->checkButtonIndex(I)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ButtonTabGroup;->setButtonActivatedInner(IZ)V

    return-void
.end method

.method public setButtonDrawable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnDrawables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnDrawables:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setButtonGroupData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/ButtonTabGroup;->setButtonGroupData(Ljava/util/List;Z)V

    return-void
.end method

.method public setButtonGroupData(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/ButtonTabGroup;->getListButtonsTextOrCreate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    iget v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnCount:I

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6
    :cond_0
    iput p1, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnCount:I

    .line 7
    iput-boolean p2, p0, Lsmartisan/widget/ButtonTabGroup;->mHasBtnGap:Z

    return-void
.end method

.method public setEnabled(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ButtonTabGroup;->getButtonTab(I)Lsmartisan/widget/ShadowButton;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lsmartisan/widget/ShadowButton;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3e99999a    # 0.3f

    .line 3
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method public setOnButtonGroupItemClickListener(Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ButtonTabGroup;->mItemListener:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/ButtonTabGroup;->mWidth:I

    return-void
.end method

.method public setup()V
    .locals 3

    .line 1
    iget v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnCount:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->mBtns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lsmartisan/widget/ButtonTabGroup;->mBtnCount:I

    if-ge v0, v1, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lsmartisan/widget/ButtonTabGroup;->generateShadowButton(I)Lsmartisan/widget/ShadowButton;

    move-result-object v1

    .line 5
    invoke-direct {p0, v0}, Lsmartisan/widget/ButtonTabGroup;->generateShadowButtonLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
