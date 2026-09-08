.class Lsmartisan/widget/CustomToast$TN$1;
.super Landroid/os/Handler;
.source "CustomToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/CustomToast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/CustomToast$TN;


# direct methods
.method constructor <init>(Lsmartisan/widget/CustomToast$TN;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/CustomToast$TN$1;->this$0:Lsmartisan/widget/CustomToast$TN;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/CustomToast$TN$1;->this$0:Lsmartisan/widget/CustomToast$TN;

    invoke-static {p1}, Lsmartisan/widget/CustomToast$TN;->access$100(Lsmartisan/widget/CustomToast$TN;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/CustomToast$TN$1;->this$0:Lsmartisan/widget/CustomToast$TN;

    const/4 v0, 0x0

    iput-object v0, p1, Lsmartisan/widget/CustomToast$TN;->mNextView:Landroid/view/View;

    .line 4
    iput-object v0, p1, Lsmartisan/widget/CustomToast$TN;->mActivity:Landroid/app/Activity;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/CustomToast$TN$1;->this$0:Lsmartisan/widget/CustomToast$TN;

    invoke-static {p1}, Lsmartisan/widget/CustomToast$TN;->access$000(Lsmartisan/widget/CustomToast$TN;)V

    :goto_0
    return-void
.end method
