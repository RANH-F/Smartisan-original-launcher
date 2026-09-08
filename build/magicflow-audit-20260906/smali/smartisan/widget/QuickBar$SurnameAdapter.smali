.class final Lsmartisan/widget/QuickBar$SurnameAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/QuickBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SurnameAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private surnames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsmartisan/widget/QuickBar;


# direct methods
.method public constructor <init>(Lsmartisan/widget/QuickBar;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar$SurnameAdapter;->this$0:Lsmartisan/widget/QuickBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lsmartisan/widget/QuickBar$SurnameAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lsmartisan/widget/QuickBar$SurnameAdapter;->surnames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar$SurnameAdapter;->surnames:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar$SurnameAdapter;->surnames:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lsmartisan/widget/QuickBar$SurnameAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$layout;->surname_popup_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v0, p0, Lsmartisan/widget/QuickBar$SurnameAdapter;->this$0:Lsmartisan/widget/QuickBar;

    invoke-static {v0}, Lsmartisan/widget/QuickBar;->access$900(Lsmartisan/widget/QuickBar;)I

    move-result v0

    iget-object v1, p0, Lsmartisan/widget/QuickBar$SurnameAdapter;->this$0:Lsmartisan/widget/QuickBar;

    invoke-static {v1}, Lsmartisan/widget/QuickBar;->access$1000(Lsmartisan/widget/QuickBar;)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    :cond_0
    rem-int/lit8 p3, p1, 0x8

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/QuickBar$SurnameAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 5
    sget p3, Lsmartisan/widget/R$drawable;->surname_popup_item_special:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    .line 6
    sget p3, Lsmartisan/widget/R$drawable;->surname_popup_item_right:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    if-eq p3, v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/QuickBar$SurnameAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    sget p3, Lsmartisan/widget/R$drawable;->surname_popup_item_middle:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    sget p3, Lsmartisan/widget/R$drawable;->surname_popup_item_left:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    :goto_1
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lsmartisan/widget/QuickBar$SurnameAdapter;->surnames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
