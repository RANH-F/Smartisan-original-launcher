.class Lsmartisan/widget/SmartisanSpinnerView$4;
.super Ljava/lang/Object;
.source "SmartisanSpinnerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanSpinnerView;->setRangeIconStyle()V
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
    iput-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView$4;->this$0:Lsmartisan/widget/SmartisanSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView$4;->this$0:Lsmartisan/widget/SmartisanSpinnerView;

    invoke-static {p1}, Lsmartisan/widget/SmartisanSpinnerView;->access$200(Lsmartisan/widget/SmartisanSpinnerView;)Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView$4;->this$0:Lsmartisan/widget/SmartisanSpinnerView;

    invoke-static {p1}, Lsmartisan/widget/SmartisanSpinnerView;->access$200(Lsmartisan/widget/SmartisanSpinnerView;)Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;->onRangeRightClick()V

    :cond_0
    return-void
.end method
