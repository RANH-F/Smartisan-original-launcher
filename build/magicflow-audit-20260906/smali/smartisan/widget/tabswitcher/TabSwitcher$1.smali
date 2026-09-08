.class Lsmartisan/widget/tabswitcher/TabSwitcher$1;
.super Ljava/lang/Object;
.source "TabSwitcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/tabswitcher/TabSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;


# direct methods
.method constructor <init>(Lsmartisan/widget/tabswitcher/TabSwitcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$1;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$1;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {v0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$000(Lsmartisan/widget/tabswitcher/TabSwitcher;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$1;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {v0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$100(Lsmartisan/widget/tabswitcher/TabSwitcher;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$1;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {v1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$000(Lsmartisan/widget/tabswitcher/TabSwitcher;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTop(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$1;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {v0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$100(Lsmartisan/widget/tabswitcher/TabSwitcher;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$202(Lsmartisan/widget/tabswitcher/TabSwitcher;I)I

    .line 4
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher$1;->this$0:Lsmartisan/widget/tabswitcher/TabSwitcher;

    invoke-static {v0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->access$100(Lsmartisan/widget/tabswitcher/TabSwitcher;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
