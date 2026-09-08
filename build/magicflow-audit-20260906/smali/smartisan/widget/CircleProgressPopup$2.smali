.class Lsmartisan/widget/CircleProgressPopup$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircleProgressPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/CircleProgressPopup;->playStartAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/CircleProgressPopup;

.field final synthetic val$nextAnim:Z


# direct methods
.method constructor <init>(Lsmartisan/widget/CircleProgressPopup;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/CircleProgressPopup$2;->this$0:Lsmartisan/widget/CircleProgressPopup;

    iput-boolean p2, p0, Lsmartisan/widget/CircleProgressPopup$2;->val$nextAnim:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-boolean p1, p0, Lsmartisan/widget/CircleProgressPopup$2;->val$nextAnim:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/CircleProgressPopup$2;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-static {p1}, Lsmartisan/widget/CircleProgressPopup;->access$100(Lsmartisan/widget/CircleProgressPopup;)V

    :cond_0
    return-void
.end method
