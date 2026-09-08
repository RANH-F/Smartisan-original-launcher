.class Lsmartisan/widget/SmartisanComboTitleBar$2;
.super Ljava/lang/Object;
.source "SmartisanComboTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanComboTitleBar;->setCenterViewClickListener(Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanComboTitleBar;

.field final synthetic val$centerViewClickListener:Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanComboTitleBar;Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$2;->this$0:Lsmartisan/widget/SmartisanComboTitleBar;

    iput-object p2, p0, Lsmartisan/widget/SmartisanComboTitleBar$2;->val$centerViewClickListener:Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$2;->val$centerViewClickListener:Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;->onCenterViewClickListener(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
