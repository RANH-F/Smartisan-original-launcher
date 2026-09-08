.class Lsmartisan/widget/MenuDialogTitleBar$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "MenuDialogTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/MenuDialogTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/MenuDialogTitleBar;


# direct methods
.method constructor <init>(Lsmartisan/widget/MenuDialogTitleBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar$3;->this$0:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar$3;->this$0:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-static {p1}, Lsmartisan/widget/MenuDialogTitleBar;->access$200(Lsmartisan/widget/MenuDialogTitleBar;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    return-void
.end method
