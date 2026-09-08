.class Lsmartisan/widget/SmartisanBottomBar$2;
.super Ljava/lang/Object;
.source "SmartisanBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanBottomBar;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanBottomBar;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanBottomBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanBottomBar$2;->this$0:Lsmartisan/widget/SmartisanBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar$2;->this$0:Lsmartisan/widget/SmartisanBottomBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanBottomBar;->access$000(Lsmartisan/widget/SmartisanBottomBar;)V

    return-void
.end method
