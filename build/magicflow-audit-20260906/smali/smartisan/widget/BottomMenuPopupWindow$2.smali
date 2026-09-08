.class Lsmartisan/widget/BottomMenuPopupWindow$2;
.super Ljava/lang/Object;
.source "BottomMenuPopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/BottomMenuPopupWindow;->showAtLocation(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/BottomMenuPopupWindow;


# direct methods
.method constructor <init>(Lsmartisan/widget/BottomMenuPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BottomMenuPopupWindow$2;->this$0:Lsmartisan/widget/BottomMenuPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/BottomMenuPopupWindow$2;->this$0:Lsmartisan/widget/BottomMenuPopupWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsmartisan/widget/BottomMenuPopupWindow;->access$002(Lsmartisan/widget/BottomMenuPopupWindow;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
