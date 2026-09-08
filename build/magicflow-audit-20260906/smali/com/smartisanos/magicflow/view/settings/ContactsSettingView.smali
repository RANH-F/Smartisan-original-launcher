.class public Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "ContactsSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mChecked:Z

.field private mContactsManager:Lsmartisan/widget/ListContentItemText;

.field private mSwitch:Lsmartisan/widget/ListContentItemSwitch;

.field private mTips:Lsmartisan/widget/TipsView;

.field private mTitle:Lsmartisan/widget/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    const p2, 0x7f0b0037

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/c;->k(I)V

    .line 3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TitleBar;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080286

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

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

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mTips:Lsmartisan/widget/TipsView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemText;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mContactsManager:Lsmartisan/widget/ListContentItemText;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mTips:Lsmartisan/widget/TipsView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0d00ea

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mChecked:Z

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mChecked:Z

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    const v0, 0x7f0d00e8

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItem;->setTitle(I)V

    const p1, 0x7f070147

    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget p2, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, p2}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mContactsManager:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mContactsManager:Lsmartisan/widget/ListContentItemText;

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mContactsManager:Lsmartisan/widget/ListContentItemText;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350059"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/n;->u(Landroid/content/Context;)V

    return-void
.end method

.method public onRemove()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onRemove()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->isChecked()Z

    move-result v0

    .line 3
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;->mChecked:Z

    if-eq v1, v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Contacts"

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->refreshSettingEnabledCategoryOrder(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
