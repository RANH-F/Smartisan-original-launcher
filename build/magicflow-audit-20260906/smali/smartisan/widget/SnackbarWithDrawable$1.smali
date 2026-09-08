.class Lsmartisan/widget/SnackbarWithDrawable$1;
.super Ljava/lang/Object;
.source "SnackbarWithDrawable.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SnackbarWithDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SnackbarWithDrawable;


# direct methods
.method constructor <init>(Lsmartisan/widget/SnackbarWithDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SnackbarWithDrawable$1;->this$0:Lsmartisan/widget/SnackbarWithDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithDrawable$1;->this$0:Lsmartisan/widget/SnackbarWithDrawable;

    invoke-static {v0}, Lsmartisan/widget/SnackbarWithDrawable;->access$000(Lsmartisan/widget/SnackbarWithDrawable;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithDrawable$1;->this$0:Lsmartisan/widget/SnackbarWithDrawable;

    invoke-static {v0}, Lsmartisan/widget/SnackbarWithDrawable;->access$000(Lsmartisan/widget/SnackbarWithDrawable;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
