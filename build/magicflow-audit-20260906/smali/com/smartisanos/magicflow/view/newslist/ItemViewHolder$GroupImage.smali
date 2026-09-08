.class public final Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;
.super Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
.source "ItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupImage"
.end annotation


# instance fields
.field private imageOne:Landroid/widget/ImageView;

.field private imageThree:Landroid/widget/ImageView;

.field private imageTwo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f080175

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageOne:Landroid/widget/ImageView;

    const p1, 0x7f080179

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageTwo:Landroid/widget/ImageView;

    const p1, 0x7f080177

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageThree:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V

    .line 2
    iget-object p2, p1, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    array-length v0, p2

    const v1, 0x7f070263

    const/4 v2, 0x0

    const v3, 0x7f070264

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageTwo:Landroid/widget/ImageView;

    const p2, 0x7f070262

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageTwo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageThree:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageOne:Landroid/widget/ImageView;

    aget-object p2, p2, v2

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageTwo:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p0, p2, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageThree:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    aget-object p1, p1, v5

    invoke-virtual {p0, p2, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageOne:Landroid/widget/ImageView;

    aget-object p2, p2, v2

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageTwo:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    aget-object p1, p1, v4

    invoke-virtual {p0, p2, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageThree:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageOne:Landroid/widget/ImageView;

    aget-object p2, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageTwo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;->imageThree:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
