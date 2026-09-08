.class public Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PageViewAdapter.java"


# instance fields
.field private HEIGHT:I

.field private WIDTH:I

.field private mAllUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->mAllUrls:Ljava/util/ArrayList;

    const/16 v0, 0x438

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->WIDTH:I

    const/16 v0, 0x780

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->HEIGHT:I

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->mContext:Landroid/content/Context;

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iput p3, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->WIDTH:I

    .line 9
    iput p4, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->HEIGHT:I

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->WIDTH:I

    return p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->HEIGHT:I

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1
    move-object p2, p3

    check-cast p2, Luk/co/senab/photoview/PhotoView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Luk/co/senab/photoview/PhotoView;->setOnViewTapListener(Luk/co/senab/photoview/d$h;)V

    .line 2
    invoke-virtual {p2, v0}, Luk/co/senab/photoview/PhotoView;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 3
    move-object p2, p3

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ImageView;)V

    .line 4
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Luk/co/senab/photoview/PhotoView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc/a/a/h;->b(Landroid/content/Context;)Lc/a/a/k;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/e;

    move-result-object p2

    sget-object v1, Lc/a/a/o/i/b;->c:Lc/a/a/o/i/b;

    invoke-virtual {p2, v1}, Lc/a/a/d;->a(Lc/a/a/o/i/b;)Lc/a/a/d;

    const v1, 0x7f07027f

    invoke-virtual {p2, v1}, Lc/a/a/d;->a(I)Lc/a/a/d;

    new-instance v1, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;Luk/co/senab/photoview/PhotoView;)V

    invoke-virtual {p2, v1}, Lc/a/a/f;->a(Lc/a/a/r/h/j;)Lc/a/a/r/h/j;

    const/4 p2, -0x1

    .line 7
    invoke-virtual {p1, v0, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
