.class Lsmartisan/widget/letters/QuickBarEx$11;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/letters/QuickBarEx;->showGridPopupWindow(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/letters/QuickBarEx;


# direct methods
.method constructor <init>(Lsmartisan/widget/letters/QuickBarEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$11;->this$0:Lsmartisan/widget/letters/QuickBarEx;

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
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$11;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p2}, Lsmartisan/widget/letters/QuickBarEx;->access$1500(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$SurnameListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lsmartisan/widget/letters/QuickBarEx$SurnameListener;->onSurnameClicked(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$11;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-virtual {p1}, Lsmartisan/widget/letters/QuickBarEx;->hideLetterGrid()V

    return-void
.end method
