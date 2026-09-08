.class Lsmartisan/widget/CountDownTimerView$2;
.super Ljava/lang/Object;
.source "CountDownTimerView.java"

# interfaces
.implements Lsmartisan/widget/TickMarkView$TrackTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/CountDownTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/CountDownTimerView;


# direct methods
.method constructor <init>(Lsmartisan/widget/CountDownTimerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/CountDownTimerView$2;->this$0:Lsmartisan/widget/CountDownTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTrack(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/CountDownTimerView$2;->this$0:Lsmartisan/widget/CountDownTimerView;

    invoke-static {p1}, Lsmartisan/widget/CountDownTimerView;->access$100(Lsmartisan/widget/CountDownTimerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/CountDownTimerView$2;->this$0:Lsmartisan/widget/CountDownTimerView;

    invoke-static {p1}, Lsmartisan/widget/CountDownTimerView;->access$200(Lsmartisan/widget/CountDownTimerView;)V

    :cond_0
    return-void
.end method

.method public onStopTrack(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView$2;->this$0:Lsmartisan/widget/CountDownTimerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/TickMarkView;->getThumbCenterXByTouchEvent(Landroid/view/MotionEvent;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView$2;->this$0:Lsmartisan/widget/CountDownTimerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/TickMarkView;->thumbCenterXToMarkerIndex(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView$2;->this$0:Lsmartisan/widget/CountDownTimerView;

    invoke-static {v0, p1}, Lsmartisan/widget/CountDownTimerView;->access$300(Lsmartisan/widget/CountDownTimerView;I)V

    :cond_0
    return-void
.end method
