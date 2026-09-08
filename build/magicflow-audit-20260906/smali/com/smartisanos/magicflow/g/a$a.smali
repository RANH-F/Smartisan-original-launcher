.class Lcom/smartisanos/magicflow/g/a$a;
.super Ljava/lang/Object;
.source "Anim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/smartisanos/magicflow/g/b0;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/g/a;Lcom/smartisanos/magicflow/g/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/smartisanos/magicflow/g/a$a;->a:Lcom/smartisanos/magicflow/g/b0;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/g/a$a;->a:Lcom/smartisanos/magicflow/g/b0;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-interface {p1, v0}, Lcom/smartisanos/magicflow/g/b0;->onComplete(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/g/a$a;->a:Lcom/smartisanos/magicflow/g/b0;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Lcom/smartisanos/magicflow/g/b0;->onComplete(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/g/a$a;->a:Lcom/smartisanos/magicflow/g/b0;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/smartisanos/magicflow/g/b0;->onStart()V

    :cond_0
    return-void
.end method
