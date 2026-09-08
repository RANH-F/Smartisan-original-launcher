.class public Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;
.super Landroid/widget/RadioGroup;
.source "NewsTabRadioGroup.java"


# instance fields
.field private mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateAdapter(Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup$1;-><init>(Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public reLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;->getRadioButton(I)Landroid/widget/RadioButton;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->updateAdapter(Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
