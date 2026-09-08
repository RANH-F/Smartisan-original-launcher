.class public abstract Lcom/smartisanos/magicflow/view/card/Card;
.super Ljava/lang/Object;
.source "Card.java"


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field protected mCardInfo:Lcom/smartisanos/magicflow/h/b;

.field protected mCardInnerSubViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field protected mHasTitle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/card/Card;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInfo:Lcom/smartisanos/magicflow/h/b;

    .line 6
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/card/Card;->mHasTitle:Z

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/Card;->setContentView()V

    return-void
.end method


# virtual methods
.method public animatorEndResetInnerSubView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCardInfo()Lcom/smartisanos/magicflow/h/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInfo:Lcom/smartisanos/magicflow/h/b;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getUnderSubCategoryViewAnimators(Ljava/lang/String;IJ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected initView(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/b;->g()Landroid/view/ViewGroup;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Card initView parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 4
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card initView parent is null !!! card.category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInfo:Lcom/smartisanos/magicflow/h/b;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " card.subCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInfo:Lcom/smartisanos/magicflow/h/b;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInfo:Lcom/smartisanos/magicflow/h/b;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/b;->a()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInfo:Lcom/smartisanos/magicflow/h/b;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onReadyToLoadData()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setContentView()V
    .locals 0

    return-void
.end method
