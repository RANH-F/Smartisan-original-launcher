.class Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;
.super Ljava/lang/Object;
.source "NewsChannelStreamView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$200(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$200(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$200(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$200(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v2}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 4
    aget v1, v1, v2

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v3}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 5
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    iget-object v3, v3, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    div-int/2addr v3, v0

    if-lt v1, v3, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$500(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    sub-int v4, v1, v3

    invoke-virtual {v0, v4, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    :cond_0
    if-gt v1, v3, :cond_1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)I

    move-result v0

    if-le v0, p1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$500(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$402(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;I)I

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$200(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$200(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_2
    return-void
.end method
