.class Lsmartisan/widget/QuickBar$5;
.super Ljava/lang/Object;
.source "QuickBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/QuickBar;->showPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/QuickBar;


# direct methods
.method constructor <init>(Lsmartisan/widget/QuickBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar$5;->this$0:Lsmartisan/widget/QuickBar;

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
    iget-object p2, p0, Lsmartisan/widget/QuickBar$5;->this$0:Lsmartisan/widget/QuickBar;

    invoke-static {p2}, Lsmartisan/widget/QuickBar;->access$800(Lsmartisan/widget/QuickBar;)Lsmartisan/widget/QuickBar$SurnameListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lsmartisan/widget/QuickBar$SurnameListener;->onSurnameClicked(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/QuickBar$5;->this$0:Lsmartisan/widget/QuickBar;

    invoke-virtual {p1}, Lsmartisan/widget/QuickBar;->hideLetterGrid()V

    return-void
.end method
