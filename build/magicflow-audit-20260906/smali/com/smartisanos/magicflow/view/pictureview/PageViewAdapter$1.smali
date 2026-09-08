.class Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;
.super Lc/a/a/r/h/g;
.source "PageViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/r/h/g<",
        "Lc/a/a/o/k/f/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

.field final synthetic val$photoView:Luk/co/senab/photoview/PhotoView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;Luk/co/senab/photoview/PhotoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->val$photoView:Luk/co/senab/photoview/PhotoView;

    invoke-direct {p0}, Lc/a/a/r/h/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Lc/a/a/o/k/f/b;Lc/a/a/r/g/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/k/f/b;",
            "Lc/a/a/r/g/c<",
            "-",
            "Lc/a/a/o/k/f/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->val$photoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {p2, p1}, Luk/co/senab/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->val$photoView:Luk/co/senab/photoview/PhotoView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 p2, -0x1

    .line 4
    invoke-virtual {p1, p2}, Lc/a/a/o/k/f/b;->b(I)V

    .line 5
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$000(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    mul-float/2addr v0, p1

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$000(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$100(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    mul-float p1, v0, p2

    .line 11
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$100(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result p2

    int-to-float v0, p2

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$000(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result p2

    int-to-float p2, p2

    const/4 v1, 0x0

    add-float/2addr p2, v1

    div-float/2addr p2, p1

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-static {v2}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$100(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    div-float/2addr v2, v0

    cmpl-float p2, p2, v2

    const/high16 v2, 0x40200000    # 2.5f

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    .line 13
    invoke-static {p2}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$000(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v1

    mul-float/2addr p2, v2

    div-float/2addr p2, p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$100(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v1

    mul-float/2addr p1, v2

    div-float p2, p1, v0

    .line 14
    :goto_1
    new-instance p1, Luk/co/senab/photoview/d;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->val$photoView:Luk/co/senab/photoview/PhotoView;

    invoke-direct {p1, v0}, Luk/co/senab/photoview/d;-><init>(Landroid/widget/ImageView;)V

    .line 15
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Luk/co/senab/photoview/d;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    invoke-virtual {p1, p2}, Luk/co/senab/photoview/d;->a(F)V

    .line 17
    new-instance p2, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$000(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;->access$100(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter;)I

    move-result v1

    invoke-direct {p2, p1, v0, v1}, Lcom/smartisanos/magicflow/view/pictureview/DoubleTapListener;-><init>(Luk/co/senab/photoview/d;II)V

    invoke-virtual {p1, p2}, Luk/co/senab/photoview/d;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 18
    new-instance p2, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1$1;-><init>(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;)V

    invoke-virtual {p1, p2}, Luk/co/senab/photoview/d;->a(Luk/co/senab/photoview/d$h;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lc/a/a/r/g/c;)V
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/k/f/b;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->onResourceReady(Lc/a/a/o/k/f/b;Lc/a/a/r/g/c;)V

    return-void
.end method
