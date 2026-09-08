.class Lsmartisan/widget/letters/QuickBarEx$9;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$surnameView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lsmartisan/widget/letters/QuickBarEx;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$9;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    iput-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$9;->val$surnameView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$9;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lsmartisan/widget/letters/QuickBarEx;->access$1800(Lsmartisan/widget/letters/QuickBarEx;Landroid/view/View;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$9;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p2}, Lsmartisan/widget/letters/QuickBarEx;->access$1600(Lsmartisan/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$9;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p2}, Lsmartisan/widget/letters/QuickBarEx;->access$1700(Lsmartisan/widget/letters/QuickBarEx;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$9;->val$surnameView:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$9;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisan/widget/letters/QuickBarEx;->access$1700(Lsmartisan/widget/letters/QuickBarEx;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$9;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p2}, Lsmartisan/widget/letters/QuickBarEx;->access$1600(Lsmartisan/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    :cond_2
    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$9;->val$surnameView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lsmartisan/widget/letters/QuickBarEx$9;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p2, p1}, Lsmartisan/widget/letters/QuickBarEx;->access$1800(Lsmartisan/widget/letters/QuickBarEx;Landroid/view/View;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
