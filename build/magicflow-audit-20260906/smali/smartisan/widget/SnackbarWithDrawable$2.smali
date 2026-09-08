.class Lsmartisan/widget/SnackbarWithDrawable$2;
.super Ljava/lang/Object;
.source "SnackbarWithDrawable.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

.field final synthetic val$divider:Landroid/view/View;


# direct methods
.method constructor <init>(Lsmartisan/widget/SnackbarWithDrawable;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SnackbarWithDrawable$2;->this$0:Lsmartisan/widget/SnackbarWithDrawable;

    iput-object p2, p0, Lsmartisan/widget/SnackbarWithDrawable$2;->val$divider:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithDrawable$2;->this$0:Lsmartisan/widget/SnackbarWithDrawable;

    invoke-static {v0}, Lsmartisan/widget/SnackbarWithDrawable;->access$100(Lsmartisan/widget/SnackbarWithDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithDrawable$2;->this$0:Lsmartisan/widget/SnackbarWithDrawable;

    invoke-static {v0}, Lsmartisan/widget/SnackbarWithDrawable;->access$100(Lsmartisan/widget/SnackbarWithDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SnackbarWithDrawable$2;->val$divider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithDrawable$2;->val$divider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    return v0
.end method
