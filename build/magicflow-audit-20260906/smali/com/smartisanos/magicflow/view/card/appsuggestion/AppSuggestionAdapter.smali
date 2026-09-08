.class public Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AppSuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppSuggestionItemInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->mAppSuggestionItemInfoList:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->mAppSuggestionItemInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->mAppSuggestionItemInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->onBindViewHolder(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->mAppSuggestionItemInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->bindData(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00c0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;-><init>(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->mAppSuggestionItemInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;->mAppSuggestionItemInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
