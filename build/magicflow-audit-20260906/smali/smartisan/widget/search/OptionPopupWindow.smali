.class public Lsmartisan/widget/search/OptionPopupWindow;
.super Ljava/lang/Object;
.source "OptionPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;,
        Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;,
        Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;
    }
.end annotation


# instance fields
.field private mChooseData:Lsmartisan/widget/search/data/SearchConfigTypeData;

.field private mConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;"
        }
    .end annotation
.end field

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mCountry:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lsmartisan/widget/search/data/SearchConfigTypeData;Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            "Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mConfigList:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lsmartisan/widget/search/OptionPopupWindow;->mChooseData:Lsmartisan/widget/search/data/SearchConfigTypeData;

    .line 4
    iput-object p4, p0, Lsmartisan/widget/search/OptionPopupWindow;->mListener:Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mCountry:Ljava/lang/String;

    .line 6
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 7
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p3, -0x2

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 10
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 12
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 13
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance p4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p2, p4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x17

    if-lt p2, p4, :cond_0

    .line 15
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 16
    :cond_0
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const-string p3, "style"

    const-string p4, "Animation_DropDownUp"

    invoke-static {p3, p4}, Lsmartisan/InvokeApi$c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const-string p2, "layout_inflater"

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lsmartisan/widget/search/OptionPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 18
    iget-object p1, p0, Lsmartisan/widget/search/OptionPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    sget p2, Lsmartisan/widget/R$layout;->search_option_popup:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 20
    sget p2, Lsmartisan/widget/R$id;->search_option_listview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 21
    new-instance p2, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;

    invoke-direct {p2, p0, p3}, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;-><init>(Lsmartisan/widget/search/OptionPopupWindow;Lsmartisan/widget/search/OptionPopupWindow$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lsmartisan/widget/search/OptionPopupWindow;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mConfigList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/search/OptionPopupWindow;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$400(Lsmartisan/widget/search/OptionPopupWindow;)Lsmartisan/widget/search/data/SearchConfigTypeData;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mChooseData:Lsmartisan/widget/search/data/SearchConfigTypeData;

    return-object p0
.end method

.method static synthetic access$500(Lsmartisan/widget/search/OptionPopupWindow;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mCountry:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lsmartisan/widget/search/OptionPopupWindow;)Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mListener:Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;

    return-object p0
.end method

.method static synthetic access$700(Lsmartisan/widget/search/OptionPopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 3

    const/high16 v0, -0x80000000

    const/high16 v1, 0x20000000

    .line 1
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mContentViewWidth:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/search/OptionPopupWindow;->mContentViewHeight:I

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lsmartisan/widget/search/OptionPopupWindow;->measureView(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 4
    aget v3, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lsmartisan/widget/search/OptionPopupWindow;->mContentViewWidth:I

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    const/4 v0, 0x1

    .line 5
    aget v0, v1, v0

    iget v1, p0, Lsmartisan/widget/search/OptionPopupWindow;->mContentViewHeight:I

    sub-int/2addr v0, v1

    .line 6
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7
    iget-object v3, p0, Lsmartisan/widget/search/OptionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p1, v2, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method
