.class Lcom/smartisanos/magicflow/g/a$b;
.super Ljava/lang/Object;
.source "Anim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/smartisanos/magicflow/g/b0;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/g/a;Lcom/smartisanos/magicflow/g/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/smartisanos/magicflow/g/a$b;->a:Lcom/smartisanos/magicflow/g/b0;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a$b;->a:Lcom/smartisanos/magicflow/g/b0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/g/b0;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_0
    return-void
.end method
