.class Lcom/smartisanos/magicflow/view/DetailsContentView$2;
.super Ljava/lang/Object;
.source "DetailsContentView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/g/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/DetailsContentView;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/DetailsContentView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$2;->this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    return-void
.end method

.method public onComplete(I)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$2;->this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$2;->this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$2;->this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/DetailsContentView;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    return-void
.end method
