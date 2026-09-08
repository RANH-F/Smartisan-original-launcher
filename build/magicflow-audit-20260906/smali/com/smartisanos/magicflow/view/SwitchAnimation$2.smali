.class Lcom/smartisanos/magicflow/view/SwitchAnimation$2;
.super Ljava/lang/Object;
.source "SwitchAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/SwitchAnimation;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/SwitchAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$100(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation$2;->this$0:Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/SwitchAnimation;->access$100(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
