.class Lsmartisan/widget/letters/QuickBarEx$8;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/letters/QuickBarEx;->showFlowPopupWindow(Landroid/view/View;I)V
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
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$8;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$8;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisan/widget/letters/QuickBarEx;->access$1500(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$SurnameListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lsmartisan/widget/letters/QuickBarEx$SurnameListener;->onSurnameClicked(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$8;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-virtual {p1}, Lsmartisan/widget/letters/QuickBarEx;->hideLetterGrid()V

    return-void
.end method
