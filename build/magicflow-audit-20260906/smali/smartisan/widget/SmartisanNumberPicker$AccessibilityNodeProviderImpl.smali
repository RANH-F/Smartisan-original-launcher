.class Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SmartisanNumberPicker.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_CURRENT_VALUE:I = 0x3

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x2

.field private static final VIRTUAL_VIEW_ID_DECREMENT_SECOND:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x4

.field private static final VIRTUAL_VIEW_ID_INCREMENT_SECOND:I = 0x5


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lsmartisan/widget/SmartisanNumberPicker;


# direct methods
.method private constructor <init>(Lsmartisan/widget/SmartisanNumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    .line 4
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method synthetic constructor <init>(Lsmartisan/widget/SmartisanNumberPicker;Lsmartisan/widget/SmartisanNumberPicker$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;-><init>(Lsmartisan/widget/SmartisanNumberPicker;)V

    return-void
.end method

.method static synthetic access$400(Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2
    const-class v1, Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->hasSecondVirtualDecrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 9
    :cond_1
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 10
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 12
    :cond_2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->hasSecondVirtualIncrementButton()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 14
    :cond_3
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 15
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 17
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsmartisan/InvokeApi$d;->a(Landroid/content/Context;)F

    move-result v1

    .line 18
    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    invoke-static {v3, v1}, Lsmartisan/InvokeApi$j;->a(Landroid/graphics/Rect;F)V

    .line 21
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 22
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p1}, Lsmartisan/InvokeApi$p;->c(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 23
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 24
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 25
    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 26
    invoke-static {v3, v1}, Lsmartisan/InvokeApi$j;->a(Landroid/graphics/Rect;F)V

    .line 27
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 28
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 29
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 30
    :cond_4
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, p2, :cond_5

    .line 31
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 32
    :cond_5
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 33
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2}, Lsmartisan/widget/SmartisanNumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 34
    :cond_6
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 35
    :cond_7
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2}, Lsmartisan/widget/SmartisanNumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_9

    .line 36
    :cond_8
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_9
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 2
    const-class v4, Landroid/widget/Button;

    goto :goto_1

    :cond_1
    const-class v4, Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v3, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 5
    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 6
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 8
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 9
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 10
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p3, p2}, Lsmartisan/InvokeApi$p;->b(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p3

    invoke-virtual {v3, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 13
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 14
    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 15
    iget-object p4, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 16
    aget p4, p3, v1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 17
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 18
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_2

    .line 19
    sget-object p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 20
    :cond_2
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_3

    .line 21
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 22
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_4
    return-object v3
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getSecondVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getCurrentValueVirtualButtonText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_4
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getSecondVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p0, p2}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private getCurrentValueVirtualButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$900(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualButtonTextAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecondVirtualDecrementButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$900(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualButtonTextAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecondVirtualIncrementButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$900(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualButtonTextAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVirtualButtonTextAt(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$1000(Lsmartisan/widget/SmartisanNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$1100(Lsmartisan/widget/SmartisanNumberPicker;I)I

    move-result p1

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$1200(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$1300(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$1400(Lsmartisan/widget/SmartisanNumberPicker;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$1500(Lsmartisan/widget/SmartisanNumberPicker;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 5
    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$1400(Lsmartisan/widget/SmartisanNumberPicker;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v1}, Lsmartisan/widget/SmartisanNumberPicker;->access$1300(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v1

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$900(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualButtonTextAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$900(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualButtonTextAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasSecondVirtualDecrementButton()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v2}, Lsmartisan/widget/SmartisanNumberPicker;->getMinValue()I

    move-result v2

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private hasSecondVirtualIncrementButton()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v2}, Lsmartisan/widget/SmartisanNumberPicker;->getMaxValue()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanNumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanNumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsmartisan/InvokeApi$a;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 3
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 7
    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1, p1, p2}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualView(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->hasSecondVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getSecondVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getCurrentValueVirtualButtonText()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->hasSecondVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getSecondVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x5

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getSecondVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 4
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$700(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$600(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    add-int v4, p1, v0

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 6
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v6, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, p1, v0

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v6}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x4

    .line 8
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 10
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$700(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v4

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 11
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 12
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v6, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int/2addr p1, v0

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$600(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    sub-int v6, p1, v0

    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v6}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x3

    .line 14
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getCurrentValueVirtualButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 15
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 16
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$500(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v4

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 17
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 18
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$700(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v6

    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v6}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v1, 0x2

    .line 20
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 21
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 22
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$600(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    add-int v4, p1, v0

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 23
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 24
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$500(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v6

    move-object v0, p0

    .line 25
    invoke-direct/range {v0 .. v6}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->getSecondVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 27
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 28
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 29
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 30
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$500(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$600(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    sub-int v6, p1, v0

    move-object v0, p0

    .line 31
    invoke-direct/range {v0 .. v6}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 32
    :cond_5
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 33
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 34
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 35
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 36
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v7, :cond_1

    if-eq p2, v6, :cond_1

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    .line 7
    :cond_2
    invoke-direct {p0, v0, v7, v1}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 8
    invoke-direct {p0, v0, v6, v1}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 9
    invoke-direct {p0, v0, v5, v1}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 10
    invoke-direct {p0, v0, v4, v1}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 11
    invoke-direct {p0, v0, v3, v1}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_15

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    if-eq p1, v4, :cond_e

    const/4 v8, 0x2

    if-eq p1, v8, :cond_e

    const/4 v8, 0x3

    if-eq p1, v8, :cond_7

    const/4 v8, 0x4

    if-eq p1, v8, :cond_0

    const/4 v8, 0x5

    if-eq p1, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p2, v7, :cond_5

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    return v5

    .line 1
    :cond_1
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    .line 2
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$700(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result p2

    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_2
    return v5

    .line 5
    :cond_3
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_4

    .line 6
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 7
    invoke-direct {p0, p1, v6}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$700(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result p2

    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_4
    return v5

    .line 9
    :cond_5
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 10
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p2, v4}, Lsmartisan/widget/SmartisanNumberPicker;->access$800(Lsmartisan/widget/SmartisanNumberPicker;Z)V

    .line 11
    invoke-direct {p0, p1, v4}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_6
    return v5

    :cond_7
    if-eq p2, v7, :cond_c

    if-eq p2, v3, :cond_a

    if-eq p2, v2, :cond_8

    return v5

    .line 12
    :cond_8
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_9

    .line 13
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 14
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 15
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$500(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result p2

    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$700(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_9
    return v5

    .line 16
    :cond_a
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_b

    .line 17
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 18
    invoke-direct {p0, p1, v6}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 19
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->access$500(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result p2

    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPicker;->access$700(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_b
    return v5

    .line 20
    :cond_c
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 21
    invoke-direct {p0, p1, v4}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_d
    return v5

    :cond_e
    if-eq p2, v7, :cond_13

    if-eq p2, v3, :cond_11

    if-eq p2, v2, :cond_f

    return v5

    .line 22
    :cond_f
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_10

    .line 23
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 24
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 25
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p3}, Lsmartisan/widget/SmartisanNumberPicker;->access$500(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_10
    return v5

    .line 26
    :cond_11
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_12

    .line 27
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 28
    invoke-direct {p0, p1, v6}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 29
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p3, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p3}, Lsmartisan/widget/SmartisanNumberPicker;->access$500(Lsmartisan/widget/SmartisanNumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_12
    return v5

    .line 30
    :cond_13
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 31
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p2, v5}, Lsmartisan/widget/SmartisanNumberPicker;->access$800(Lsmartisan/widget/SmartisanNumberPicker;Z)V

    .line 32
    invoke-direct {p0, p1, v4}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_14
    return v5

    :cond_15
    if-eq p2, v3, :cond_1e

    if-eq p2, v2, :cond_1c

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_19

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_16

    .line 33
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 34
    :cond_16
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 35
    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2}, Lsmartisan/widget/SmartisanNumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_18

    .line 36
    :cond_17
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p1, v5}, Lsmartisan/widget/SmartisanNumberPicker;->access$800(Lsmartisan/widget/SmartisanNumberPicker;Z)V

    return v4

    :cond_18
    return v5

    .line 37
    :cond_19
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    .line 38
    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p2}, Lsmartisan/widget/SmartisanNumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_1b

    .line 39
    :cond_1a
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p1, v4}, Lsmartisan/widget/SmartisanNumberPicker;->access$800(Lsmartisan/widget/SmartisanNumberPicker;Z)V

    return v4

    :cond_1b
    return v5

    .line 40
    :cond_1c
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1d

    .line 41
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 42
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p1}, Lsmartisan/InvokeApi$p;->a(Landroid/view/View;)V

    return v4

    :cond_1d
    return v5

    .line 43
    :cond_1e
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1f

    .line 44
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 45
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {p1}, Lsmartisan/InvokeApi$p;->d(Landroid/view/View;)Z

    return v4

    :cond_1f
    return v5
.end method
