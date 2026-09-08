.class public Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;
.super Ljava/lang/Object;
.source "NewsHeadViewHolder.java"


# instance fields
.field protected itemView:Landroid/view/View;

.field protected mInfo:Lcom/smartisanos/magicflow/h/l;

.field protected summary:Landroid/widget/TextView;

.field protected title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->itemView:Landroid/view/View;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0802e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->title:Landroid/widget/TextView;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0802c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->summary:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public markAsRead(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/l;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/smartisanos/magicflow/h/l;->a:Z

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setItemInfo(Lcom/smartisanos/magicflow/h/l;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/l;

    .line 2
    iget-boolean v0, p1, Lcom/smartisanos/magicflow/h/l;->a:Z

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->markAsRead(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->summary:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/l;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
