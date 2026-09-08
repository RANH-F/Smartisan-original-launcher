.class Lsmartisan/widget/letters/QuickBarEx$7;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/letters/QuickBarEx;->hideLetterGridWithAnim()V
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
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$7;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$7;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsmartisan/widget/letters/QuickBarEx;->access$1302(Lsmartisan/widget/letters/QuickBarEx;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$7;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$1400(Lsmartisan/widget/letters/QuickBarEx;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$7;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$000(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$QBListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$7;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$000(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$QBListener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/letters/QuickBarEx$QBListener;->onLetterGridHidden()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$7;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/letters/QuickBarEx;->access$1302(Lsmartisan/widget/letters/QuickBarEx;Z)Z

    return-void
.end method
