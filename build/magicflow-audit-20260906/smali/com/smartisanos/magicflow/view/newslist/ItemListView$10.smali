.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$10;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView;->startTipFadeInFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$10;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

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
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$10;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$1102(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$10;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$1102(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Z)Z

    return-void
.end method
