.class Lsmartisan/widget/SmartisanComboTitleBar$1;
.super Landroid/os/Handler;
.source "SmartisanComboTitleBar.java"


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
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$1;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$1;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {p1}, Lsmartisan/widget/SmartisanComboTitleBar;->access$000(Lsmartisan/widget/SmartisanComboTitleBar;)V

    return-void
.end method
