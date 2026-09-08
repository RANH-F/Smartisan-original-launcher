.class Lcom/smartisanos/magicflow/h/c$a;
.super Ljava/lang/Object;
.source "CardManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/h/c;->a(Ljava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/smartisanos/magicflow/view/card/Card;

.field final synthetic c:Lcom/smartisanos/magicflow/h/c;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/c;Ljava/util/List;Lcom/smartisanos/magicflow/view/card/Card;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/h/c$a;->c:Lcom/smartisanos/magicflow/h/c;

    iput-object p2, p0, Lcom/smartisanos/magicflow/h/c$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/smartisanos/magicflow/h/c$a;->b:Lcom/smartisanos/magicflow/view/card/Card;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/h/c$a;->c:Lcom/smartisanos/magicflow/h/c;

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/c$a;->b:Lcom/smartisanos/magicflow/view/card/Card;

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/h/c;->a(Lcom/smartisanos/magicflow/h/c;Ljava/util/List;Lcom/smartisanos/magicflow/view/card/Card;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/h/c$a;->c:Lcom/smartisanos/magicflow/h/c;

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/c$a;->b:Lcom/smartisanos/magicflow/view/card/Card;

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/h/c;->a(Lcom/smartisanos/magicflow/h/c;Ljava/util/List;Lcom/smartisanos/magicflow/view/card/Card;)V

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
