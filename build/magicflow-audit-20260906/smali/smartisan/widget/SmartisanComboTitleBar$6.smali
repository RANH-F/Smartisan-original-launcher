.class Lsmartisan/widget/SmartisanComboTitleBar$6;
.super Ljava/lang/Object;
.source "SmartisanComboTitleBar.java"

# interfaces
.implements Lsmartisan/widget/SmartisanSpinnerView$SpinnerDropDownClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanComboTitleBar;->setCenterTextStyle(I[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanComboTitleBar;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanComboTitleBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$6;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDropDownClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$6;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->access$400(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterDropClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$6;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->access$400(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterDropClickListener;

    move-result-object v0

    invoke-interface {v0}, Lsmartisan/widget/SmartisanComboTitleBar$CenterDropClickListener;->onCenterDropClickListener()V

    :cond_0
    return-void
.end method
