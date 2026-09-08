.class Lsmartisan/widget/BHM$4;
.super Ljava/lang/Object;
.source "BHM.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/BHM;->initAnim(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/BHM;


# direct methods
.method constructor <init>(Lsmartisan/widget/BHM;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM$4;->this$0:Lsmartisan/widget/BHM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/BHM$4;->this$0:Lsmartisan/widget/BHM;

    invoke-virtual {p1}, Lsmartisan/widget/BHM;->showCombinedList()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/BHM$4;->this$0:Lsmartisan/widget/BHM;

    invoke-static {p1}, Lsmartisan/widget/BHM;->access$300(Lsmartisan/widget/BHM;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/BHM$4;->this$0:Lsmartisan/widget/BHM;

    invoke-static {p1}, Lsmartisan/widget/BHM;->access$200(Lsmartisan/widget/BHM;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/BHM$4;->this$0:Lsmartisan/widget/BHM;

    invoke-static {p1}, Lsmartisan/widget/BHM;->access$300(Lsmartisan/widget/BHM;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method
