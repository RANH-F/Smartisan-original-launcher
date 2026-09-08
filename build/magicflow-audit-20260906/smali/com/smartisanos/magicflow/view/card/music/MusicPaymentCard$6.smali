.class Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$6;
.super Ljava/lang/Object;
.source "MusicPaymentCard.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->hideFullMusicControlLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$6;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

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
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$6;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$1400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$6;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$6;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$1500(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$6;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$700(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$6;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$700(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
