.class public Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "MusicFastPaymentSettingView.java"


# instance fields
.field private mChecked:Z

.field private mSwitch:Lsmartisan/widget/ListContentItemSwitch;

.field private mTips:Lsmartisan/widget/TipsView;

.field private mTitle:Lsmartisan/widget/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    const p2, 0x7f0b0080

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/c;->k(I)V

    .line 3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TitleBar;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080286

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080180

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0802df

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/TipsView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mTips:Lsmartisan/widget/TipsView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mTips:Lsmartisan/widget/TipsView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0d01bd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mChecked:Z

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    iget-boolean p3, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mChecked:Z

    invoke-virtual {p1, p3}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    const p3, 0x7f0d01bc

    invoke-virtual {p1, p3}, Lsmartisan/widget/ListContentItem;->setTitle(I)V

    const p1, 0x7f07024b

    .line 11
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget p2, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, p2}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onRemove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->isChecked()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;->mChecked:Z

    if-eq v1, v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "MusicFastPayment"

    .line 3
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->refreshSettingEnabledCategoryOrder(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
