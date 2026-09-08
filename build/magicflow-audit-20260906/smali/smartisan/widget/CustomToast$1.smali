.class final Lsmartisan/widget/CustomToast$1;
.super Ljava/lang/Object;
.source "CustomToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/CustomToast;->makeButtonSnackbar(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lsmartisan/widget/CustomToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionListener:Landroid/view/View$OnClickListener;

.field final synthetic val$result:Lsmartisan/widget/CustomToast;


# direct methods
.method constructor <init>(Lsmartisan/widget/CustomToast;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/CustomToast$1;->val$result:Lsmartisan/widget/CustomToast;

    iput-object p2, p0, Lsmartisan/widget/CustomToast$1;->val$actionListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CustomToast$1;->val$result:Lsmartisan/widget/CustomToast;

    invoke-virtual {v0}, Lsmartisan/widget/CustomToast;->cancel()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CustomToast$1;->val$actionListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
