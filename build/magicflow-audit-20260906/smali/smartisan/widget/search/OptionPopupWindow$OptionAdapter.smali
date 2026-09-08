.class Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "OptionPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/search/OptionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/search/OptionPopupWindow;


# direct methods
.method private constructor <init>(Lsmartisan/widget/search/OptionPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsmartisan/widget/search/OptionPopupWindow;Lsmartisan/widget/search/OptionPopupWindow$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;-><init>(Lsmartisan/widget/search/OptionPopupWindow;)V

    return-void
.end method

.method private getTypeName(Ljava/lang/String;Lsmartisan/widget/search/data/SearchConfigTypeData;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x86b

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa83

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "US"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_2
    const-string v0, "CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    .line 2
    invoke-virtual {p2}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_4
    invoke-virtual {p2}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getTwName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_5
    invoke-virtual {p2}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getEnName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-static {v0}, Lsmartisan/widget/search/OptionPopupWindow;->access$100(Lsmartisan/widget/search/OptionPopupWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-static {p2}, Lsmartisan/widget/search/OptionPopupWindow;->access$200(Lsmartisan/widget/search/OptionPopupWindow;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lsmartisan/widget/R$layout;->search_option_listitem:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;

    iget-object v1, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    const/4 v2, 0x0

    invoke-direct {p3, v1, v2}, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;-><init>(Lsmartisan/widget/search/OptionPopupWindow;Lsmartisan/widget/search/OptionPopupWindow$1;)V

    .line 3
    sget v1, Lsmartisan/widget/R$id;->search_item_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;->mIconImageView:Landroid/widget/ImageView;

    .line 4
    sget v1, Lsmartisan/widget/R$id;->search_item_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 5
    sget v1, Lsmartisan/widget/R$id;->search_item_check:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;->mCheckedImageView:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;

    .line 8
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-static {v1}, Lsmartisan/widget/search/OptionPopupWindow;->access$100(Lsmartisan/widget/search/OptionPopupWindow;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/search/data/SearchConfigTypeData;

    if-eqz p1, :cond_2

    .line 9
    iget-object v1, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-static {v1}, Lsmartisan/widget/search/OptionPopupWindow;->access$400(Lsmartisan/widget/search/OptionPopupWindow;)Lsmartisan/widget/search/data/SearchConfigTypeData;

    move-result-object v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 10
    :cond_1
    iget-object v1, p3, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lsmartisan/widget/search/WebSearchUtils;->getBoomIconDrawable(Landroid/content/Context;Lsmartisan/widget/search/data/SearchConfigTypeData;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v1, p3, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-static {v2}, Lsmartisan/widget/search/OptionPopupWindow;->access$500(Lsmartisan/widget/search/OptionPopupWindow;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->getTypeName(Ljava/lang/String;Lsmartisan/widget/search/data/SearchConfigTypeData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p3, p3, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;->mCheckedImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 13
    new-instance p3, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;

    invoke-direct {p3, p0, v0, p1}, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;-><init>(Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;ZLsmartisan/widget/search/data/SearchConfigTypeData;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object p2
.end method
