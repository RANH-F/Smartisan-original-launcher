.class Lsmartisan/app/MenuDialogListAdapter$1;
.super Ljava/lang/Object;
.source "MenuDialogListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/app/MenuDialogListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/app/MenuDialogListAdapter;

.field final synthetic val$button:Lsmartisan/widget/ShadowButton;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lsmartisan/app/MenuDialogListAdapter;ILsmartisan/widget/ShadowButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/app/MenuDialogListAdapter$1;->this$0:Lsmartisan/app/MenuDialogListAdapter;

    iput p2, p0, Lsmartisan/app/MenuDialogListAdapter$1;->val$position:I

    iput-object p3, p0, Lsmartisan/app/MenuDialogListAdapter$1;->val$button:Lsmartisan/widget/ShadowButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/app/MenuDialogListAdapter$1;->this$0:Lsmartisan/app/MenuDialogListAdapter;

    invoke-static {p1}, Lsmartisan/app/MenuDialogListAdapter;->access$000(Lsmartisan/app/MenuDialogListAdapter;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/app/MenuDialogListAdapter$1;->this$0:Lsmartisan/app/MenuDialogListAdapter;

    invoke-static {p1}, Lsmartisan/app/MenuDialogListAdapter;->access$000(Lsmartisan/app/MenuDialogListAdapter;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/app/MenuDialogListAdapter$1;->this$0:Lsmartisan/app/MenuDialogListAdapter;

    invoke-static {p1}, Lsmartisan/app/MenuDialogListAdapter;->access$100(Lsmartisan/app/MenuDialogListAdapter;)Lsmartisan/tablet/widget/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lsmartisan/app/MenuDialogListAdapter$1;->this$0:Lsmartisan/app/MenuDialogListAdapter;

    invoke-static {p1}, Lsmartisan/app/MenuDialogListAdapter;->access$100(Lsmartisan/app/MenuDialogListAdapter;)Lsmartisan/tablet/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lsmartisan/tablet/widget/a;->a()V

    .line 5
    :cond_1
    iget-object p1, p0, Lsmartisan/app/MenuDialogListAdapter$1;->this$0:Lsmartisan/app/MenuDialogListAdapter;

    invoke-static {p1}, Lsmartisan/app/MenuDialogListAdapter;->access$200(Lsmartisan/app/MenuDialogListAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lsmartisan/app/MenuDialogListAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lsmartisan/app/MenuDialogListAdapter$1;->val$button:Lsmartisan/widget/ShadowButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
