.class Lcom/smartisanos/magicflow/view/FloatSearchView$2;
.super Ljava/lang/Object;
.source "FloatSearchView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/FloatSearchView;->showFloatSearchMask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/FloatSearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView$2;->this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView$2;->this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/FloatSearchView;->access$000(Lcom/smartisanos/magicflow/view/FloatSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->access$102(Lcom/smartisanos/magicflow/view/FloatSearchView;F)F

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView$2;->this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->access$102(Lcom/smartisanos/magicflow/view/FloatSearchView;F)F

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
