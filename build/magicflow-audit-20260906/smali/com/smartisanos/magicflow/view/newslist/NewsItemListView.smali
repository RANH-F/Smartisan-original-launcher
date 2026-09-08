.class public Lcom/smartisanos/magicflow/view/newslist/NewsItemListView;
.super Lcom/smartisanos/magicflow/view/newslist/ItemListView;
.source "NewsItemListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/newslist/NewsItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/newslist/NewsItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/j/a;

    invoke-direct {p1}, Lcom/smartisanos/magicflow/j/a;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mParser:Lcom/smartisanos/magicflow/j/e;

    return-void
.end method


# virtual methods
.method public bind(Lcom/smartisanos/magicflow/h/q;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->bind(Lcom/smartisanos/magicflow/h/q;)V

    return-void
.end method
