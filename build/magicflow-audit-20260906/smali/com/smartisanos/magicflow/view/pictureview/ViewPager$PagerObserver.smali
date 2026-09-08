.class Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/pictureview/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/pictureview/ViewPager;


# direct methods
.method private constructor <init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;->this$0:Lcom/smartisanos/magicflow/view/pictureview/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;Lcom/smartisanos/magicflow/view/pictureview/ViewPager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;->this$0:Lcom/smartisanos/magicflow/view/pictureview/ViewPager;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;->this$0:Lcom/smartisanos/magicflow/view/pictureview/ViewPager;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->dataSetChanged()V

    return-void
.end method
