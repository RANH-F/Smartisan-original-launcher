.class Lsmartisan/widget/tabswitcher/AnimationPanel$1;
.super Ljava/lang/Object;
.source "AnimationPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/tabswitcher/AnimationPanel;->doPut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;


# direct methods
.method constructor <init>(Lsmartisan/widget/tabswitcher/AnimationPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$400(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Putable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$600(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Pickable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$600(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Pickable;

    move-result-object p1

    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$500(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$700(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v1

    invoke-interface {v1}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v2}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$700(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v2

    invoke-interface {v2}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-interface {p1, v0, v1, v2}, Lsmartisan/widget/tabswitcher/Pickable;->update(Lsmartisan/widget/tabswitcher/model/TabBrick;FF)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$400(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Putable;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$700(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v1

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v2}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$500(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v2

    invoke-interface {v2}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v3}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$500(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v3

    invoke-interface {v3}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-interface {p1, v0, v1, v2, v3}, Lsmartisan/widget/tabswitcher/Putable;->put(ILsmartisan/widget/tabswitcher/model/TabBrick;FF)V

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$800(Lsmartisan/widget/tabswitcher/AnimationPanel;)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$302(Lsmartisan/widget/tabswitcher/AnimationPanel;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$302(Lsmartisan/widget/tabswitcher/AnimationPanel;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$400(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Putable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$400(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Putable;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$500(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v1

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v2}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$500(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v2

    invoke-interface {v2}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel$1;->this$0:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-static {v3}, Lsmartisan/widget/tabswitcher/AnimationPanel;->access$500(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v3

    invoke-interface {v3}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-interface {p1, v0, v1, v2, v3}, Lsmartisan/widget/tabswitcher/Putable;->put(ILsmartisan/widget/tabswitcher/model/TabBrick;FF)V

    :cond_0
    return-void
.end method
