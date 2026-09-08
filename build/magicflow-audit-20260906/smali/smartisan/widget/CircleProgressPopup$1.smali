.class Lsmartisan/widget/CircleProgressPopup$1;
.super Ljava/lang/Object;
.source "CircleProgressPopup.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/CircleProgressPopup;->initAnim()V
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
    iput-object p1, p0, Lsmartisan/widget/CircleProgressPopup$1;->this$0:Lsmartisan/widget/CircleProgressPopup;

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

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup$1;->this$0:Lsmartisan/widget/CircleProgressPopup;

    invoke-static {v0}, Lsmartisan/widget/CircleProgressPopup;->access$000(Lsmartisan/widget/CircleProgressPopup;)Lsmartisan/widget/CircleProgressView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsmartisan/widget/CircleProgressView;->setSweepAngle(F)V

    return-void
.end method
