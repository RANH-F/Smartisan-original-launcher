.class Lcom/smartisanos/magicflow/view/RootView$2;
.super Ljava/lang/Object;
.source "RootView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/RootView;->horizontalScrollAnim(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/RootView;

.field final synthetic val$targetLocX:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/RootView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$2;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    iput p2, p0, Lcom/smartisanos/magicflow/view/RootView$2;->val$targetLocX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView$2;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/RootView;->access$000(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/view/ContentView;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView$2;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/RootView;->access$000(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/view/ContentView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/ContentView;->setNavigationBarAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView$2;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/RootView;->access$100(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/view/BackgroundView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/BackgroundView;->updateShadowBackground(F)V

    .line 6
    iget v0, p0, Lcom/smartisanos/magicflow/view/RootView$2;->val$targetLocX:I

    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    if-ne v0, v1, :cond_1

    sub-int/2addr p1, v0

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$2;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/RootView;->access$100(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/view/BackgroundView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$2;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/RootView;->access$100(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/view/BackgroundView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$2;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/RootView;->access$200(Lcom/smartisanos/magicflow/view/RootView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
