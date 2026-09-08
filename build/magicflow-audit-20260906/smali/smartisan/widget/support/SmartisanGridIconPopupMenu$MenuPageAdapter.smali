.class Lsmartisan/widget/support/SmartisanGridIconPopupMenu$MenuPageAdapter;
.super Lsmartisan/view/PagerAdapter;
.source "SmartisanGridIconPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/support/SmartisanGridIconPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;


# direct methods
.method constructor <init>(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$MenuPageAdapter;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-direct {p0}, Lsmartisan/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$MenuPageAdapter;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-static {p3}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->access$400(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$MenuPageAdapter;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-static {v0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->access$500(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$MenuPageAdapter;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-static {v0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->access$400(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
