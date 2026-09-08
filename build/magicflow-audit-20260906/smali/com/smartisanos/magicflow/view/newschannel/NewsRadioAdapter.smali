.class public Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;
.super Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;
.source "NewsRadioAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field mListCategory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->mListCategory:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->mListCategory:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->mListCategory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getRadioButton(I)Landroid/widget/RadioButton;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0b009a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/o/n;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->mListCategory:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;->notifyDataSetChanged()V

    return-void
.end method
