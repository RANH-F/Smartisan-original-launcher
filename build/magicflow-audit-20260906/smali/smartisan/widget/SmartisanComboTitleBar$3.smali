.class Lsmartisan/widget/SmartisanComboTitleBar$3;
.super Ljava/lang/Object;
.source "SmartisanComboTitleBar.java"

# interfaces
.implements Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanComboTitleBar;
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
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$3;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioTabClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$3;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->access$100(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$3;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->access$100(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar$3;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v1}, Lsmartisan/widget/SmartisanComboTitleBar;->access$200(Lsmartisan/widget/SmartisanComboTitleBar;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;->onCenterViewClickListener(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
