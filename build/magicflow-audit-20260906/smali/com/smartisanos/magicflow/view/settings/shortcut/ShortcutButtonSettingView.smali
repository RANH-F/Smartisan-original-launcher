.class public Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "ShortcutButtonSettingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChecked:Z

.field private mShortcutManager:Lsmartisan/widget/ListContentItemText;

.field private mSwitch:Lsmartisan/widget/ListContentItemSwitch;

.field private mTips:Lsmartisan/widget/TipsView;

.field private mTitle:Lsmartisan/widget/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3

    const p2, 0x7f0b00d6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/c;->k(I)V

    .line 3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080373

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TitleBar;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080286

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080180

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x7f0802df

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/TipsView;

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mTips:Lsmartisan/widget/TipsView;

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x7f08028d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/ListContentItemText;

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mShortcutManager:Lsmartisan/widget/ListContentItemText;

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v2, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {v1, v2}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mChecked:Z

    .line 10
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mChecked:Z

    invoke-virtual {p3, v1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 11
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    const v1, 0x7f0d024a

    invoke-virtual {p3, v1}, Lsmartisan/widget/ListContentItem;->setTitle(I)V

    const p3, 0x7f070393

    .line 12
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 13
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mTips:Lsmartisan/widget/TipsView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0d024b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mShortcutManager:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mShortcutManager:Lsmartisan/widget/ListContentItemText;

    iget-boolean p2, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mChecked:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mShortcutManager:Lsmartisan/widget/ListContentItemText;

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

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolSettingView;-><init>(Landroid/content/Context;Z)V

    .line 3
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    return-void
.end method

.method public onRemove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->isChecked()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;->mChecked:Z

    if-eq v1, v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ShortcutButton"

    .line 3
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->refreshSettingEnabledCategoryOrder(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
