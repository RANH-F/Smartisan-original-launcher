.class Lsmartisan/widget/BHM$7;
.super Ljava/lang/Object;
.source "BHM.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/BHM;->setDialogListener(Lsmartisan/widget/BHM$BHMDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/BHM;


# direct methods
.method constructor <init>(Lsmartisan/widget/BHM;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM$7;->this$0:Lsmartisan/widget/BHM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/BHM$7;->this$0:Lsmartisan/widget/BHM;

    invoke-static {p1}, Lsmartisan/widget/BHM;->access$600(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$BHMDialogListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/BHM$7;->this$0:Lsmartisan/widget/BHM;

    invoke-static {p1}, Lsmartisan/widget/BHM;->access$600(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$BHMDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/BHM$BHMDialogListener;->onDialogDismiss()V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/BHM$7;->this$0:Lsmartisan/widget/BHM;

    invoke-static {p1}, Lsmartisan/widget/BHM;->access$600(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$BHMDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/BHM$BHMDialogListener;->onDialogStatueChanged()V

    :cond_0
    return-void
.end method
