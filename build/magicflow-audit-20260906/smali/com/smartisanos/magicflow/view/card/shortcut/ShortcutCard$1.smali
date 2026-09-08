.class Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard$1;
.super Ljava/lang/Object;
.source "ShortcutCard.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->onReadyToLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->access$000(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;)Lcom/smartisanos/magicflow/view/card/shortcut/DotsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/card/shortcut/DotsView;->setSelectedIndex(I)V

    return-void
.end method
