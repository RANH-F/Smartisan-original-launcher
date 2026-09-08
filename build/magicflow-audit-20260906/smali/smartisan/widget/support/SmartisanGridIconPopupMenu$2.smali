.class Lsmartisan/widget/support/SmartisanGridIconPopupMenu$2;
.super Ljava/lang/Object;
.source "SmartisanGridIconPopupMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->createPageViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

.field final synthetic val$maxPageIconCount:I


# direct methods
.method constructor <init>(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$2;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    iput p2, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$2;->val$maxPageIconCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$2;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-static {p1}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->access$200(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Lsmartisan/widget/support/SmartisanGridIconPopupMenu$OnMenuItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$2;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-static {p1}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->access$200(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Lsmartisan/widget/support/SmartisanGridIconPopupMenu$OnMenuItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$2;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-static {p2}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->access$300(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Lsmartisan/view/ViewPager;

    move-result-object p2

    invoke-virtual {p2}, Lsmartisan/view/ViewPager;->getCurrentItem()I

    move-result p2

    iget p4, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$2;->val$maxPageIconCount:I

    mul-int/2addr p2, p4

    add-int/2addr p2, p3

    invoke-interface {p1, p2}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$OnMenuItemClickListener;->onMenuItemClick(I)V

    :cond_0
    return-void
.end method
