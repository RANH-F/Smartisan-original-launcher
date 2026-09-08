.class public final Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;
.super Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
.source "ItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleImage"
.end annotation


# instance fields
.field duration:Landroid/widget/TextView;

.field thumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->setViewInfo(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setAdapter(Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setAdapter(Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;)V

    return-void
.end method

.method public setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V

    .line 2
    iget-object p2, p1, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    .line 3
    aget-object p2, p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    iget v1, p1, Lcom/smartisanos/magicflow/h/l;->G:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/i/d;->h()I

    move-result p2

    iput p2, p1, Lcom/smartisanos/magicflow/h/l;->G:I

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->thumbnail:Landroid/widget/ImageView;

    iget v1, p1, Lcom/smartisanos/magicflow/h/l;->G:I

    .line 7
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 8
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/i/d;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 9
    :cond_1
    iget v1, p1, Lcom/smartisanos/magicflow/h/l;->G:I

    if-ltz v1, :cond_2

    .line 10
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->thumbnail:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 12
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/i/d;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 14
    :goto_1
    iget-boolean p2, p1, Lcom/smartisanos/magicflow/h/l;->z:Z

    if-eqz p2, :cond_3

    iget-wide v1, p1, Lcom/smartisanos/magicflow/h/l;->t:J

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/o/n;->c(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 15
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->duration:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->duration:Landroid/widget/TextView;

    iget-wide v0, p1, Lcom/smartisanos/magicflow/h/l;->t:J

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->duration:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setViewInfo(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setViewInfo(Landroid/view/View;)V

    const v0, 0x7f0802da

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->thumbnail:Landroid/widget/ImageView;

    const v0, 0x7f080371

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->duration:Landroid/widget/TextView;

    return-void
.end method
