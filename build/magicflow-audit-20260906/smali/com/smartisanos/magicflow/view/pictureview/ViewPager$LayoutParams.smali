.class Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/pictureview/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutParams"
.end annotation


# instance fields
.field childIndex:I

.field public gravity:I

.field public isDecor:Z

.field needsMeasure:Z

.field position:I

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/pictureview/ViewPager;

.field widthFactor:F


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->this$0:Lcom/smartisanos/magicflow/view/pictureview/ViewPager;

    const/4 p1, -0x1

    .line 2
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->widthFactor:F

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->this$0:Lcom/smartisanos/magicflow/view/pictureview/ViewPager;

    .line 5
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->widthFactor:F

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->access$200()[I

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x30

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
