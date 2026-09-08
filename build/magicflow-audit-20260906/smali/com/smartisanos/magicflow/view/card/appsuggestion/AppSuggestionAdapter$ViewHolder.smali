.class Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AppSuggestionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private itemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f08021e

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->itemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->itemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->itemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    iget-boolean p1, p1, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mResize:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->itemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->itemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/n;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionAdapter$ViewHolder;->itemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
