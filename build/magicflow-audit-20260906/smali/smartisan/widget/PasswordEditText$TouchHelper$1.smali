.class Lsmartisan/widget/PasswordEditText$TouchHelper$1;
.super Ljava/lang/Object;
.source "PasswordEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/PasswordEditText$TouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsmartisan/widget/PasswordEditText$TouchHelper;


# direct methods
.method constructor <init>(Lsmartisan/widget/PasswordEditText$TouchHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper$1;->this$1:Lsmartisan/widget/PasswordEditText$TouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$TouchHelper$1;->this$1:Lsmartisan/widget/PasswordEditText$TouchHelper;

    iget-object v0, v0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    and-int/lit16 v0, v0, -0x1000

    .line 2
    iget-object v1, p0, Lsmartisan/widget/PasswordEditText$TouchHelper$1;->this$1:Lsmartisan/widget/PasswordEditText$TouchHelper;

    iget-object v1, v1, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 3
    iget-object v2, p0, Lsmartisan/widget/PasswordEditText$TouchHelper$1;->this$1:Lsmartisan/widget/PasswordEditText$TouchHelper;

    iget-object v2, v2, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {v2}, Lsmartisan/widget/PasswordEditText;->access$000(Lsmartisan/widget/PasswordEditText;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lsmartisan/widget/PasswordEditText$TouchHelper$1;->this$1:Lsmartisan/widget/PasswordEditText$TouchHelper;

    iget-object v2, v2, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {v2}, Lsmartisan/widget/PasswordEditText;->access$100(Lsmartisan/widget/PasswordEditText;)I

    move-result v4

    or-int/2addr v0, v4

    invoke-static {v2, v0, v3}, Lsmartisan/widget/PasswordEditText;->access$200(Lsmartisan/widget/PasswordEditText;IZ)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lsmartisan/widget/PasswordEditText$TouchHelper$1;->this$1:Lsmartisan/widget/PasswordEditText$TouchHelper;

    iget-object v2, v2, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-static {v2}, Lsmartisan/widget/PasswordEditText;->access$300(Lsmartisan/widget/PasswordEditText;)I

    move-result v4

    or-int/2addr v0, v4

    invoke-static {v2, v0, v3}, Lsmartisan/widget/PasswordEditText;->access$200(Lsmartisan/widget/PasswordEditText;IZ)V

    .line 6
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$TouchHelper$1;->this$1:Lsmartisan/widget/PasswordEditText$TouchHelper;

    iget-object v0, v0, Lsmartisan/widget/PasswordEditText$TouchHelper;->this$0:Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
