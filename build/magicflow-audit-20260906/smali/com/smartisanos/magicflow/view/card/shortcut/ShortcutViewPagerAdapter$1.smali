.class Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutViewPagerAdapter.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->access$000(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getToolShortcutInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getToolShortcutInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method
