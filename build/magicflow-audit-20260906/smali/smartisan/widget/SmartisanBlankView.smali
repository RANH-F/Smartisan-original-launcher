.class public Lsmartisan/widget/SmartisanBlankView;
.super Landroid/widget/LinearLayout;
.source "SmartisanBlankView.java"


# static fields
.field private static final NORMAL:I = 0x0

.field private static final SMALL:I = 0x1

.field private static final WITH_ACTION:I = 0x2


# instance fields
.field private mActionButton:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mPrimaryHintView:Landroid/widget/TextView;

.field private mSecondaryHintView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanBlankView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanBlankView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$layout;->blank_view:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    sget v0, Lsmartisan/widget/R$id;->empty_image:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/SmartisanBlankView;->mImageView:Landroid/widget/ImageView;

    .line 7
    sget v0, Lsmartisan/widget/R$id;->empty_primary_hint:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/SmartisanBlankView;->mPrimaryHintView:Landroid/widget/TextView;

    .line 8
    sget v0, Lsmartisan/widget/R$id;->empty_secondary_hint:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/SmartisanBlankView;->mSecondaryHintView:Landroid/widget/TextView;

    .line 9
    sget v0, Lsmartisan/widget/R$id;->empty_action_btn:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lsmartisan/widget/SmartisanBlankView;->mActionButton:Landroid/widget/TextView;

    .line 10
    sget-object p3, Lsmartisan/widget/R$styleable;->SmartisanBlankView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    :try_start_0
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanBlankView_primaryHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lsmartisan/widget/SmartisanBlankView;->mPrimaryHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_0
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanBlankView_secondaryHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lsmartisan/widget/SmartisanBlankView;->mSecondaryHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_1
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanBlankView_blankStyle:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v2, 0x2

    if-eq p3, v1, :cond_2

    if-ne p3, v2, :cond_4

    .line 18
    :cond_2
    iget-object v1, p0, Lsmartisan/widget/SmartisanBlankView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lsmartisan/widget/R$dimen;->small_blank_image_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lsmartisan/widget/R$dimen;->small_blank_image_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne p3, v2, :cond_3

    .line 21
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 22
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/SmartisanBlankView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-nez p3, :cond_5

    .line 23
    sget p1, Lsmartisan/widget/R$drawable;->blank_icon_large:I

    goto :goto_0

    :cond_5
    sget p1, Lsmartisan/widget/R$drawable;->blank_icon_small:I

    .line 24
    :goto_0
    sget v1, Lsmartisan/widget/R$styleable;->SmartisanBlankView_emptyDrawable:I

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-ltz p1, :cond_6

    .line 25
    iget-object v1, p0, Lsmartisan/widget/SmartisanBlankView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lsmartisan/widget/R$dimen;->blank_view_vertical_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-ne p3, v2, :cond_7

    .line 27
    iget-object p1, p0, Lsmartisan/widget/SmartisanBlankView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lsmartisan/widget/SmartisanBlankView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 30
    iget-object p3, p0, Lsmartisan/widget/SmartisanBlankView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    sget p1, Lsmartisan/widget/R$styleable;->SmartisanBlankView_emptyActionBackground:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-ltz p1, :cond_8

    .line 32
    iget-object p3, p0, Lsmartisan/widget/SmartisanBlankView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 33
    :cond_7
    iget-object p3, p0, Lsmartisan/widget/SmartisanBlankView;->mSecondaryHintView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 35
    iget-object p1, p0, Lsmartisan/widget/SmartisanBlankView;->mSecondaryHintView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_8
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    throw p1
.end method


# virtual methods
.method public getActionButton()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBlankView;->mActionButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBlankView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrimaryHintView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBlankView;->mPrimaryHintView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSecondaryHintView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBlankView;->mSecondaryHintView:Landroid/widget/TextView;

    return-object v0
.end method
