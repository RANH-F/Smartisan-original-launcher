.class public Lsmartisan/widget/BHMItemView;
.super Landroid/widget/RelativeLayout;
.source "BHMItemView.java"


# static fields
.field public static final COUNT_BLUE:I = 0x0

.field public static final COUNT_GREY:I = 0x2

.field public static final COUNT_RED:I = 0x1


# instance fields
.field private mAlert:Landroid/widget/ImageView;

.field private mCount:Landroid/widget/TextView;

.field private mCountNum:Ljava/lang/String;

.field private mIcon:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/BHMItemView;->setTitle(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lsmartisan/widget/R$dimen;->bhm_list_view_title_max_width:I

    goto :goto_0

    :cond_0
    sget v0, Lsmartisan/widget/R$dimen;->bhm_list_view_title_max_width_subtitle_exists:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/BHMItemView;->setTitleMaxWidth(I)V

    .line 3
    invoke-virtual {p0, p2}, Lsmartisan/widget/BHMItemView;->setIcon(I)V

    .line 4
    invoke-virtual {p0, p3}, Lsmartisan/widget/BHMItemView;->setCount(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p4}, Lsmartisan/widget/BHMItemView;->setCountColor(I)V

    .line 6
    invoke-virtual {p0, p5}, Lsmartisan/widget/BHMItemView;->showProgressBar(Z)V

    .line 7
    invoke-virtual {p0, p6}, Lsmartisan/widget/BHMItemView;->showAlert(Z)V

    .line 8
    invoke-virtual {p0, p7}, Lsmartisan/widget/BHMItemView;->setSubTitle(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p8}, Lsmartisan/widget/BHMItemView;->setLeftPadding(I)V

    return-void
.end method

.method public final getCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mCountNum:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    sget v0, Lsmartisan/widget/R$id;->bhm_item_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BHMItemView;->mRootView:Landroid/view/View;

    .line 3
    sget v0, Lsmartisan/widget/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/BHMItemView;->mTitle:Landroid/widget/TextView;

    .line 4
    sget v0, Lsmartisan/widget/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/BHMItemView;->mIcon:Landroid/widget/ImageView;

    .line 5
    sget v0, Lsmartisan/widget/R$id;->count:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/BHMItemView;->mCount:Landroid/widget/TextView;

    .line 6
    sget v0, Lsmartisan/widget/R$id;->progress:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lsmartisan/widget/BHMItemView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 7
    sget v0, Lsmartisan/widget/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/BHMItemView;->mSubTitle:Landroid/widget/TextView;

    .line 8
    sget v0, Lsmartisan/widget/R$id;->alert:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/BHMItemView;->mAlert:Landroid/widget/ImageView;

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHMItemView;->mCountNum:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/BHMItemView;->mCount:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCountColor(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    sget p1, Lsmartisan/widget/R$drawable;->bhm_num_blue_2:I

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Lsmartisan/widget/R$drawable;->bhm_num_grey:I

    goto :goto_0

    .line 3
    :cond_1
    sget p1, Lsmartisan/widget/R$drawable;->bhm_num_red:I

    goto :goto_0

    .line 4
    :cond_2
    sget p1, Lsmartisan/widget/R$drawable;->bhm_num_blue_2:I

    .line 5
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public setCountSelected(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftPadding(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/BHMItemView;->mSubTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleMaxWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public setTitleSelected(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public showAlert(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mAlert:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showProgressBar(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHMItemView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
