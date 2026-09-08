.class Lsmartisan/widget/QuickBar$2;
.super Ljava/lang/Object;
.source "QuickBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/QuickBar;->hideLetterGridWithAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/QuickBar;

.field final synthetic val$visibleFlag:I


# direct methods
.method constructor <init>(Lsmartisan/widget/QuickBar;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar$2;->this$0:Lsmartisan/widget/QuickBar;

    iput p2, p0, Lsmartisan/widget/QuickBar$2;->val$visibleFlag:I

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
    iget-object p1, p0, Lsmartisan/widget/QuickBar$2;->this$0:Lsmartisan/widget/QuickBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsmartisan/widget/QuickBar;->access$202(Lsmartisan/widget/QuickBar;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/QuickBar$2;->this$0:Lsmartisan/widget/QuickBar;

    iget v0, p0, Lsmartisan/widget/QuickBar$2;->val$visibleFlag:I

    invoke-static {p1, v0}, Lsmartisan/widget/QuickBar;->access$300(Lsmartisan/widget/QuickBar;I)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/QuickBar$2;->this$0:Lsmartisan/widget/QuickBar;

    invoke-static {p1}, Lsmartisan/widget/QuickBar;->access$400(Lsmartisan/widget/QuickBar;)Lsmartisan/widget/QuickBar$QBHideListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lsmartisan/widget/QuickBar$2;->this$0:Lsmartisan/widget/QuickBar;

    invoke-static {p1}, Lsmartisan/widget/QuickBar;->access$400(Lsmartisan/widget/QuickBar;)Lsmartisan/widget/QuickBar$QBHideListener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/QuickBar$QBHideListener;->onLetterGridHidden()V

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
    iget-object p1, p0, Lsmartisan/widget/QuickBar$2;->this$0:Lsmartisan/widget/QuickBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/QuickBar;->access$202(Lsmartisan/widget/QuickBar;Z)Z

    return-void
.end method
