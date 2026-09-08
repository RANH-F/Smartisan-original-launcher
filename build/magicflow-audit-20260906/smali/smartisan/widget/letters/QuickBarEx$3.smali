.class Lsmartisan/widget/letters/QuickBarEx$3;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/letters/QuickBarEx;->initGridView()V
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
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$3;->this$0:Lsmartisan/widget/letters/QuickBarEx;

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
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$3;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$200(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsmartisan/widget/letters/AlphabetsConfig;->isSymbol(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$3;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$000(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$QBListener;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$3;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p2}, Lsmartisan/widget/letters/QuickBarEx;->access$200(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lsmartisan/widget/letters/QuickBarEx$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$3;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$3;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$300(Lsmartisan/widget/letters/QuickBarEx;)V

    return-void
.end method
