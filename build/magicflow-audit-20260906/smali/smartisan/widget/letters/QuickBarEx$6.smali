.class Lsmartisan/widget/letters/QuickBarEx$6;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/letters/QuickBarEx;->showLetterGridWithAnim()V
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
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$6;->this$0:Lsmartisan/widget/letters/QuickBarEx;

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
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$6;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsmartisan/widget/letters/QuickBarEx;->access$1002(Lsmartisan/widget/letters/QuickBarEx;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$6;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$1200(Lsmartisan/widget/letters/QuickBarEx;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$6;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/letters/QuickBarEx;->access$1002(Lsmartisan/widget/letters/QuickBarEx;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$6;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1, v0}, Lsmartisan/widget/letters/QuickBarEx;->access$1100(Lsmartisan/widget/letters/QuickBarEx;Z)V

    return-void
.end method
