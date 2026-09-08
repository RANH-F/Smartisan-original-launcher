.class Lsmartisan/widget/CircleProgressPopup$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircleProgressPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/CircleProgressPopup;->playCircleAnim()V
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
    iput-object p1, p0, Lsmartisan/widget/CircleProgressPopup$4;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/CircleProgressPopup$4;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-static {p1}, Lsmartisan/widget/CircleProgressPopup;->access$400(Lsmartisan/widget/CircleProgressPopup;)Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;->cancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/CircleProgressPopup$4;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-static {p1}, Lsmartisan/widget/CircleProgressPopup;->access$000(Lsmartisan/widget/CircleProgressPopup;)Lsmartisan/widget/CircleProgressView;

    move-result-object p1

    invoke-virtual {p1}, Lsmartisan/widget/CircleProgressView;->getSweepAngle()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/16 v0, 0x168

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/CircleProgressPopup$4;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-static {p1}, Lsmartisan/widget/CircleProgressPopup;->access$400(Lsmartisan/widget/CircleProgressPopup;)Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;->complete()V

    :cond_0
    return-void
.end method
