.class final Lcom/smartisanos/magicflow/cache/ShortcutInfoCache$1;
.super Ljava/lang/Object;
.source "ShortcutInfoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->onShortcutToolPackageChanged(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache$1;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache$1;->val$context:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->isEnabledItem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v1}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->addShortcutToolList(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;)V

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void
.end method
