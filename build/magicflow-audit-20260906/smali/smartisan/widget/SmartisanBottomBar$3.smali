.class Lsmartisan/widget/SmartisanBottomBar$3;
.super Ljava/lang/Object;
.source "SmartisanBottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanBottomBar;->createItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanBottomBar;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanBottomBar;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanBottomBar$3;->this$0:Lsmartisan/widget/SmartisanBottomBar;

    iput p2, p0, Lsmartisan/widget/SmartisanBottomBar$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar$3;->this$0:Lsmartisan/widget/SmartisanBottomBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanBottomBar;->access$100(Lsmartisan/widget/SmartisanBottomBar;)Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar$3;->this$0:Lsmartisan/widget/SmartisanBottomBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanBottomBar;->access$100(Lsmartisan/widget/SmartisanBottomBar;)Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;

    move-result-object v0

    iget v1, p0, Lsmartisan/widget/SmartisanBottomBar$3;->val$index:I

    invoke-interface {v0, v1, p1}, Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;->onClick(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
