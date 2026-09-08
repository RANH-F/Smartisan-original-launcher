.class Lsmartisan/widget/BHM$BHMDialog;
.super Landroid/app/Dialog;
.source "BHM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/BHM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BHMDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/BHM;


# direct methods
.method public constructor <init>(Lsmartisan/widget/BHM;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM$BHMDialog;->this$0:Lsmartisan/widget/BHM;

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM$BHMDialog;->this$0:Lsmartisan/widget/BHM;

    invoke-static {v0}, Lsmartisan/widget/BHM;->access$600(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$BHMDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/BHM$BHMDialog;->this$0:Lsmartisan/widget/BHM;

    invoke-static {v0}, Lsmartisan/widget/BHM;->access$600(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$BHMDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lsmartisan/widget/BHM$BHMDialogListener;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :cond_0
    return-void
.end method
