.class Lsmartisan/widget/SmartisanSpinnerView$1;
.super Ljava/lang/Object;
.source "SmartisanSpinnerView.java"

# interfaces
.implements Lsmartisan/widget/SmartisanWheelTextView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanSpinnerView;->setTitleStyle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanSpinnerView;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanSpinnerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView$1;->this$0:Lsmartisan/widget/SmartisanSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lsmartisan/widget/SmartisanWheelTextView;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView$1;->this$0:Lsmartisan/widget/SmartisanSpinnerView;

    invoke-static {v0}, Lsmartisan/widget/SmartisanSpinnerView;->access$000(Lsmartisan/widget/SmartisanSpinnerView;)Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView$1;->this$0:Lsmartisan/widget/SmartisanSpinnerView;

    invoke-static {v0}, Lsmartisan/widget/SmartisanSpinnerView;->access$000(Lsmartisan/widget/SmartisanSpinnerView;)Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;->onWheelTextChangeListener(Lsmartisan/widget/SmartisanWheelTextView;II)V

    :cond_0
    return-void
.end method
