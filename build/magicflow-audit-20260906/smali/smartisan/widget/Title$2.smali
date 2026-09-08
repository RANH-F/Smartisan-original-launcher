.class Lsmartisan/widget/Title$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "Title.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/Title;->setAccessibilityFocusOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/Title;


# direct methods
.method constructor <init>(Lsmartisan/widget/Title;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/Title$2;->this$0:Lsmartisan/widget/Title;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/Title$2;->this$0:Lsmartisan/widget/Title;

    invoke-static {v0}, Lsmartisan/widget/Title;->access$100(Lsmartisan/widget/Title;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/Title$2;->this$0:Lsmartisan/widget/Title;

    invoke-static {p1}, Lsmartisan/widget/Title;->access$200(Lsmartisan/widget/Title;)Lsmartisan/widget/ShadowTextView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/Title$2;->this$0:Lsmartisan/widget/Title;

    invoke-static {v0}, Lsmartisan/widget/Title;->access$300(Lsmartisan/widget/Title;)Lsmartisan/widget/ShadowButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lsmartisan/widget/Title$2;->this$0:Lsmartisan/widget/Title;

    invoke-static {p1}, Lsmartisan/widget/Title;->access$200(Lsmartisan/widget/Title;)Lsmartisan/widget/ShadowTextView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lsmartisan/widget/Title$2;->this$0:Lsmartisan/widget/Title;

    invoke-static {p1}, Lsmartisan/widget/Title;->access$100(Lsmartisan/widget/Title;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
