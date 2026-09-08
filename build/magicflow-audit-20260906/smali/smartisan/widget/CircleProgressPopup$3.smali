.class Lsmartisan/widget/CircleProgressPopup$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircleProgressPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/CircleProgressPopup;->playEndAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/CircleProgressPopup;


# direct methods
.method constructor <init>(Lsmartisan/widget/CircleProgressPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/CircleProgressPopup$3;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/CircleProgressPopup$3;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/CircleProgressPopup$3;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-static {p1}, Lsmartisan/widget/CircleProgressPopup;->access$200(Lsmartisan/widget/CircleProgressPopup;)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/CircleProgressPopup$3;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-static {p1}, Lsmartisan/widget/CircleProgressPopup;->access$301(Lsmartisan/widget/CircleProgressPopup;)V

    :cond_0
    return-void
.end method
