.class Lsmartisan/app/MenuDialog$1;
.super Ljava/lang/Object;
.source "MenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/app/MenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/app/MenuDialog;


# direct methods
.method constructor <init>(Lsmartisan/app/MenuDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/app/MenuDialog$1;->this$0:Lsmartisan/app/MenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/app/MenuDialog$1;->this$0:Lsmartisan/app/MenuDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
