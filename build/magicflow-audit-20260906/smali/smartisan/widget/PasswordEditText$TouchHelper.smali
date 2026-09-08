.class public Lsmartisan/widget/PasswordEditText$TouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "PasswordEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/PasswordEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/PasswordEditText;


# direct methods
.method public constructor <init>(Lsmartisan/widget/PasswordEditText;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method getItemDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {v0}, Lsmartisan/widget/PasswordEditText;->access$000(Lsmartisan/widget/PasswordEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lsmartisan/widget/R$string;->hide_password:I

    goto :goto_0

    :cond_0
    sget v0, Lsmartisan/widget/R$string;->show_password:I

    .line 2
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 1

    .line 1
    iget-object p2, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p2}, Lsmartisan/widget/PasswordEditText;->access$400(Lsmartisan/widget/PasswordEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    float-to-int p1, p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    .line 4
    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    const/16 p1, 0x10

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_2

    .line 2
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->access$500(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$EyeAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->setDirection()V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->access$500(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$EyeAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->start()V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->access$600(Lsmartisan/widget/PasswordEditText;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    new-instance p2, Lsmartisan/widget/PasswordEditText$TouchHelper$1;

    invoke-direct {p2, p0}, Lsmartisan/widget/PasswordEditText$TouchHelper$1;-><init>(Lsmartisan/widget/PasswordEditText$TouchHelper;)V

    invoke-static {p1, p2}, Lsmartisan/widget/PasswordEditText;->access$602(Lsmartisan/widget/PasswordEditText;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->access$600(Lsmartisan/widget/PasswordEditText;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object p3, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p3}, Lsmartisan/widget/PasswordEditText;->access$500(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$EyeAnimator;

    move-result-object p3

    invoke-virtual {p3}, Lsmartisan/widget/PasswordEditText$EyeAnimator;->getAnimationDuration()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->access$700(Lsmartisan/widget/PasswordEditText;)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->access$800(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$TouchHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateRoot()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->access$700(Lsmartisan/widget/PasswordEditText;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/PasswordEditText$TouchHelper;->getItemDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/PasswordEditText$TouchHelper;->getItemDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->access$400(Lsmartisan/widget/PasswordEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_0
    const/16 p1, 0x10

    .line 4
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method
