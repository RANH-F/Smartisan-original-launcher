.class public Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;
.super Ljava/lang/Object;
.source "NewsViewHolder.java"


# instance fields
.field protected ad:Landroid/widget/ImageView;

.field protected adDownload:Landroid/widget/ImageView;

.field protected dislike:Landroid/widget/ImageView;

.field protected divider:Landroid/widget/ImageView;

.field protected duration:Landroid/widget/TextView;

.field protected itemView:Landroid/view/View;

.field log:Lcom/smartisanos/magicflow/LOG;

.field protected mInfo:Lcom/smartisanos/magicflow/h/l;

.field protected source:Landroid/widget/TextView;

.field protected symbol:Landroid/widget/TextView;

.field protected thumbnail:Landroid/widget/ImageView;

.field protected thumbnailLayout:Landroid/view/ViewGroup;

.field protected title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0802e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->title:Landroid/widget/TextView;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0802aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->source:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f080061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->dislike:Landroid/widget/ImageView;

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0801a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->divider:Landroid/widget/ImageView;

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0802ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->symbol:Landroid/widget/TextView;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->dislike:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->initImage()V

    return-void
.end method

.method private setImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/l;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/l;->B:Ljava/lang/String;

    const-string v1, "__all__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, p1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {p2, p1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/l;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/smartisanos/magicflow/h/l;->G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public hideDivider()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->divider:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public initImage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0802db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->thumbnailLayout:Landroid/view/ViewGroup;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0802da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f080371

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->duration:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->ad:Landroid/widget/ImageView;

    return-void
.end method

.method protected markAsRead(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/l;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/smartisanos/magicflow/h/l;->a:Z

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/l;

    .line 2
    iget-boolean p2, p1, Lcom/smartisanos/magicflow/h/l;->a:Z

    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->markAsRead(Z)V

    .line 3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/l;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->source:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/l;->o:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p1, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    .line 6
    aget-object p2, p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    iget v1, p1, Lcom/smartisanos/magicflow/h/l;->G:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/i/d;->h()I

    move-result p2

    iput p2, p1, Lcom/smartisanos/magicflow/h/l;->G:I

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget v1, p1, Lcom/smartisanos/magicflow/h/l;->G:I

    .line 10
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 11
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/i/d;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 12
    :cond_1
    iget v1, p1, Lcom/smartisanos/magicflow/h/l;->G:I

    if-ltz v1, :cond_2

    .line 13
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 15
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/i/d;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p2}, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 17
    :goto_1
    iget-boolean p2, p1, Lcom/smartisanos/magicflow/h/l;->E:Z

    const/16 v1, 0x8

    if-eqz p2, :cond_3

    .line 18
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->symbol:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->ad:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->ad:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->symbol:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :goto_2
    iget-boolean p2, p1, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-nez p2, :cond_4

    iget-boolean p2, p1, Lcom/smartisanos/magicflow/h/l;->z:Z

    if-eqz p2, :cond_4

    iget-wide v2, p1, Lcom/smartisanos/magicflow/h/l;->t:J

    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/o/n;->c(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 23
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->duration:Landroid/widget/TextView;

    iget-wide v0, p1, Lcom/smartisanos/magicflow/h/l;->t:J

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :goto_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->source:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->source:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0500de

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
