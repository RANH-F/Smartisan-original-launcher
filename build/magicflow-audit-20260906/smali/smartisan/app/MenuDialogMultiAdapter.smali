.class public Lsmartisan/app/MenuDialogMultiAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuDialogMultiAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasRecentCall:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/app/MenuDialogMultiAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 2
    iput-object p1, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-eqz p2, :cond_0

    .line 4
    iput-object p1, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 6
    iput-object p2, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mList:Ljava/util/List;

    .line 7
    iput-boolean p3, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mHasRecentCall:Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private dipToPx(D)I
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lsmartisan/widget/R$layout;->menu_dialog_list_multi_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsmartisan/app/MenuDialogMultiAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_1

    .line 3
    sget p3, Lsmartisan/widget/R$drawable;->menu_dialog_last_item_selector:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean p3, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mHasRecentCall:Z

    if-eqz p3, :cond_2

    if-nez p1, :cond_2

    .line 5
    sget p3, Lsmartisan/widget/R$drawable;->recent_call_multi_item_selector:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    iget-object p3, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->recent_call_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, p3, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 8
    :cond_2
    sget p3, Lsmartisan/widget/R$drawable;->menu_dialog_multi_item_selector:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    :goto_0
    move-object p3, p2

    check-cast p3, Lsmartisan/widget/FontFitTextView;

    .line 10
    iget-object v0, p0, Lsmartisan/app/MenuDialogMultiAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->menu_dialog_item_text_min_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p3, p1}, Lsmartisan/widget/FontFitTextView;->setMinTextSize(F)V

    return-object p2
.end method
