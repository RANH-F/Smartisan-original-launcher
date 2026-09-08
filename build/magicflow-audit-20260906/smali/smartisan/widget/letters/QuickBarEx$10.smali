.class Lsmartisan/widget/letters/QuickBarEx$10;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Lsmartisan/widget/SurnameGridView$OnPressChangeListener;


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
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$10;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouched(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lsmartisan/widget/letters/QuickBarEx$10$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/letters/QuickBarEx$10$1;-><init>(Lsmartisan/widget/letters/QuickBarEx$10;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$10;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisan/widget/letters/QuickBarEx;->access$1900(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/SurnameGridView;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx$10;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v1}, Lsmartisan/widget/letters/QuickBarEx;->access$1900(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/SurnameGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx$10;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v1}, Lsmartisan/widget/letters/QuickBarEx;->access$1900(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/SurnameGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$10;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1, v0}, Lsmartisan/widget/letters/QuickBarEx;->access$1800(Lsmartisan/widget/letters/QuickBarEx;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
