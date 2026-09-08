.class Lcom/smartisanos/magicflow/view/UpDownAnimation$1;
.super Ljava/lang/Object;
.source "UpDownAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/UpDownAnimation;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

.field final synthetic val$screenh:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/UpDownAnimation;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$1;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    iput p2, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$1;->val$screenh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$1;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$000(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$1;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$000(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$1;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$100(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$1;->this$0:Lcom/smartisanos/magicflow/view/UpDownAnimation;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->access$000(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation$1;->val$screenh:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    :goto_0
    return-void
.end method
