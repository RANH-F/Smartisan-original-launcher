.class public Lcom/smartisanos/magicflow/view/PictureView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "PictureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;


# instance fields
.field private HEIGHT:I

.field private WIDTH:I

.field private adapter:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mAllUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mParent:Landroid/widget/RelativeLayout;

.field private mSaveBtn:Landroid/widget/ImageView;

.field private mShareBtn:Landroid/widget/ImageView;

.field private mViewPager:Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

.field private titleContentTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f0b009c

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/PictureView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mAllUrls:Ljava/util/ArrayList;

    const/16 p1, 0x438

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->WIDTH:I

    const/16 p1, 0x780

    .line 5
    iput p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->HEIGHT:I

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iput p3, p0, Lcom/smartisanos/magicflow/view/PictureView;->mCurrentIndex:I

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/PictureView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/PictureView;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/PictureView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method private initView()V
    .locals 5

    .line 1
    sget v0, Lcom/smartisanos/magicflow/h/d;->H:I

    iput v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->WIDTH:I

    .line 2
    sget v0, Lcom/smartisanos/magicflow/h/d;->I:I

    iput v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->HEIGHT:I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080200

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mParent:Landroid/widget/RelativeLayout;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mViewPager:Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/PictureView;->mAllUrls:Ljava/util/ArrayList;

    iget v3, p0, Lcom/smartisanos/magicflow/view/PictureView;->WIDTH:I

    iget v4, p0, Lcom/smartisanos/magicflow/view/PictureView;->HEIGHT:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;II)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->adapter:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mViewPager:Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/PictureView;->adapter:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mViewPager:Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

    iget v1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItem(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mViewPager:Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mViewPager:Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setOnPageChangeListener(Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0802e2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->titleContentTv:Landroid/widget/TextView;

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/PictureView;->onTitleChanged()V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080245

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mSaveBtn:Landroid/widget/ImageView;

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080288

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mShareBtn:Landroid/widget/ImageView;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mSaveBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mShareBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onTitleChanged()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/PictureView;->titleContentTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/smartisanos/magicflow/o/j;->a(Landroid/content/Context;ILcom/smartisanos/magicflow/o/j$c;Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mSaveBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mViewPager:Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getCurrentItem()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc/a/a/h;->b(Landroid/content/Context;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/e;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/magicflow/view/PictureView$1;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/magicflow/view/PictureView$1;-><init>(Lcom/smartisanos/magicflow/view/PictureView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/a/a/e;->b(Lc/a/a/r/h/j;)Lc/a/a/r/h/j;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mShareBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mViewPager:Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getCurrentItem()I

    move-result p1

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mAllUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc/a/a/h;->b(Landroid/content/Context;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/e;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/magicflow/view/PictureView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/PictureView$2;-><init>(Lcom/smartisanos/magicflow/view/PictureView;)V

    invoke-virtual {p1, v0}, Lc/a/a/e;->b(Lc/a/a/r/h/j;)Lc/a/a/r/h/j;

    :cond_4
    :goto_0
    return-void
.end method

.method public onExit()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->adapter:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->destroy()V

    .line 4
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/PictureView;->adapter:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mSaveBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mShareBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mViewPager:Lcom/smartisanos/magicflow/view/pictureview/PicViewPager;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView;->mParent:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_2
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/PictureView;->mCurrentIndex:I

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/PictureView;->onTitleChanged()V

    return-void
.end method
