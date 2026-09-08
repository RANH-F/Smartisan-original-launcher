.class Lcom/smartisanos/magicflow/view/FloatSearchView$1;
.super Ljava/lang/Object;
.source "FloatSearchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView$1;->this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView$1;->this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->access$000(Lcom/smartisanos/magicflow/view/FloatSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
