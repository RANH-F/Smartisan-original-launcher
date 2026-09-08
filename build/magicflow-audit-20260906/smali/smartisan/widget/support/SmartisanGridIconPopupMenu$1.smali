.class Lsmartisan/widget/support/SmartisanGridIconPopupMenu$1;
.super Ljava/lang/Object;
.source "SmartisanGridIconPopupMenu.java"

# interfaces
.implements Lsmartisan/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->initMenuPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;


# direct methods
.method constructor <init>(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$1;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$1;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-static {v0}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->access$100(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Lsmartisan/app/IndicatorView;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/support/SmartisanGridIconPopupMenu$1;->this$0:Lsmartisan/widget/support/SmartisanGridIconPopupMenu;

    invoke-static {v1}, Lsmartisan/widget/support/SmartisanGridIconPopupMenu;->access$000(Lsmartisan/widget/support/SmartisanGridIconPopupMenu;)Lsmartisan/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lsmartisan/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lsmartisan/app/IndicatorView;->setState(II)V

    return-void
.end method
