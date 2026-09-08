.class Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShortcutToolAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field contentItemText:Lsmartisan/widget/ListContentItemText;

.field info:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->view:Landroid/view/View;

    const v0, 0x7f08028e

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ListContentItemText;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemText;->setArrowVisible(Z)V

    return-void
.end method


# virtual methods
.method public setData(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->getSettingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/ListContentItemText;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemText;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemText;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemText;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
