.class final Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;
.super Ljava/lang/Object;
.source "AppSuggestionInfoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->updateAppSuggestion(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->access$000(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->loadAppIcon()Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->access$102(Z)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->access$100()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 7
    :cond_2
    new-instance v1, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1$1;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1$1;-><init>(Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;Ljava/util/List;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
