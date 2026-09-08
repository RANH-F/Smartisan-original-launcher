.class Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;
.super Ljava/lang/Object;
.source "OptionPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;

.field final synthetic val$chooseItem:Z

.field final synthetic val$searchType:Lsmartisan/widget/search/data/SearchConfigTypeData;


# direct methods
.method constructor <init>(Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;ZLsmartisan/widget/search/data/SearchConfigTypeData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;->this$1:Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;

    iput-boolean p2, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;->val$chooseItem:Z

    iput-object p3, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;->val$searchType:Lsmartisan/widget/search/data/SearchConfigTypeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;->val$chooseItem:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;->this$1:Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;

    iget-object v0, v0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-static {v0}, Lsmartisan/widget/search/OptionPopupWindow;->access$600(Lsmartisan/widget/search/OptionPopupWindow;)Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;->val$searchType:Lsmartisan/widget/search/data/SearchConfigTypeData;

    invoke-interface {v0, p1, v1}, Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;->onChoosedChanged(Landroid/view/View;Lsmartisan/widget/search/data/SearchConfigTypeData;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter$1;->this$1:Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;

    iget-object p1, p1, Lsmartisan/widget/search/OptionPopupWindow$OptionAdapter;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-static {p1}, Lsmartisan/widget/search/OptionPopupWindow;->access$700(Lsmartisan/widget/search/OptionPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
