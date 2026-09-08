.class Lsmartisan/widget/CustomToast$TN;
.super Ljava/lang/Object;
.source "CustomToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/CustomToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# static fields
.field private static final MSG_HIDE:I = 0x2

.field private static final MSG_SHOW:I = 0x1


# instance fields
.field mActivity:Landroid/app/Activity;

.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 3
    new-instance v0, Lsmartisan/widget/CustomToast$TN$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/CustomToast$TN$1;-><init>(Lsmartisan/widget/CustomToast$TN;)V

    iput-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mHandler:Landroid/os/Handler;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v1, "style"

    const-string v2, "Animation_Toast"

    .line 8
    invoke-static {v1, v2}, Lsmartisan/InvokeApi$c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v1, 0x2

    .line 9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xa8

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v1, "CustomToast"

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/CustomToast$TN;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/CustomToast$TN;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lsmartisan/widget/CustomToast$TN;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/CustomToast$TN;->handleHide()V

    return-void
.end method

.method private handleHide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private handleShow()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/CustomToast$TN;->handleHide()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    const-string v2, "window"

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mWM:Landroid/view/WindowManager;

    .line 7
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8
    iget v2, p0, Lsmartisan/widget/CustomToast$TN;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9
    iget-object v2, p0, Lsmartisan/widget/CustomToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v3, v0, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x7

    if-ne v3, v5, :cond_1

    .line 10
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_1
    const/16 v2, 0x70

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 11
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 12
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lsmartisan/widget/CustomToast$TN;->mX:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 13
    iget v2, p0, Lsmartisan/widget/CustomToast$TN;->mY:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 14
    iget v2, p0, Lsmartisan/widget/CustomToast$TN;->mVerticalMargin:F

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 15
    iget v2, p0, Lsmartisan/widget/CustomToast$TN;->mHorizontalMargin:F

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 16
    iget-object v2, p0, Lsmartisan/widget/CustomToast$TN;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 17
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 20
    :cond_3
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lsmartisan/widget/CustomToast$TN;->mView:Landroid/view/View;

    iget-object v2, p0, Lsmartisan/widget/CustomToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/CustomToast$TN;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lsmartisan/widget/CustomToast$TN;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
