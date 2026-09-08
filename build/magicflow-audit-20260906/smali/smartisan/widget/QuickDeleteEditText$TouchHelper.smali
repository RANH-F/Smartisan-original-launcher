.class public Lsmartisan/widget/QuickDeleteEditText$TouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "QuickDeleteEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/QuickDeleteEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/QuickDeleteEditText;


# direct methods
.method public constructor <init>(Lsmartisan/widget/QuickDeleteEditText;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method getItemDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$string;->quick_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 1

    .line 1
    iget-object p2, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {p2}, Lsmartisan/widget/QuickDeleteEditText;->access$000(Lsmartisan/widget/QuickDeleteEditText;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {p2}, Lsmartisan/widget/QuickDeleteEditText;->access$100(Lsmartisan/widget/QuickDeleteEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    float-to-int p1, p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    .line 4
    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-lt p1, p2, :cond_0

    const/16 p1, 0x100

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {v0}, Lsmartisan/widget/QuickDeleteEditText;->access$000(Lsmartisan/widget/QuickDeleteEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    .line 2
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    :cond_0
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

    .line 3
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {v0}, Lsmartisan/widget/QuickDeleteEditText;->access$000(Lsmartisan/widget/QuickDeleteEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p2, 0x100

    if-ne p1, p2, :cond_1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {p1}, Lsmartisan/widget/QuickDeleteEditText;->access$200(Lsmartisan/widget/QuickDeleteEditText;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->getItemDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->getItemDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/QuickDeleteEditText$TouchHelper;->this$0:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {p1}, Lsmartisan/widget/QuickDeleteEditText;->access$100(Lsmartisan/widget/QuickDeleteEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 p1, 0x10

    .line 3
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method
