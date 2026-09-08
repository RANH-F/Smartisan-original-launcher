.class Lsmartisan/widget/search/RadioFrameLayout$3;
.super Ljava/lang/Object;
.source "RadioFrameLayout.java"

# interfaces
.implements Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/search/RadioFrameLayout;->showPopupWindow(Landroid/widget/RadioButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/search/RadioFrameLayout;

.field final synthetic val$anchorView:Landroid/widget/RadioButton;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lsmartisan/widget/search/RadioFrameLayout;Landroid/widget/RadioButton;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout$3;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    iput-object p2, p0, Lsmartisan/widget/search/RadioFrameLayout$3;->val$anchorView:Landroid/widget/RadioButton;

    iput p3, p0, Lsmartisan/widget/search/RadioFrameLayout$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoosedChanged(Landroid/view/View;Lsmartisan/widget/search/data/SearchConfigTypeData;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout$3;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    iget v0, p0, Lsmartisan/widget/search/RadioFrameLayout$3;->val$index:I

    invoke-static {p1, v0, p2}, Lsmartisan/widget/search/RadioFrameLayout;->access$700(Lsmartisan/widget/search/RadioFrameLayout;ILsmartisan/widget/search/data/SearchConfigTypeData;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout$3;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    iget p2, p0, Lsmartisan/widget/search/RadioFrameLayout$3;->val$index:I

    invoke-static {p1, p2}, Lsmartisan/widget/search/RadioFrameLayout;->access$800(Lsmartisan/widget/search/RadioFrameLayout;I)V

    return-void
.end method
