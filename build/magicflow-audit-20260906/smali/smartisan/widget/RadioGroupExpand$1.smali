.class Lsmartisan/widget/RadioGroupExpand$1;
.super Ljava/lang/Object;
.source "RadioGroupExpand.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/RadioGroupExpand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/RadioGroupExpand;


# direct methods
.method constructor <init>(Lsmartisan/widget/RadioGroupExpand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand$1;->this$0:Lsmartisan/widget/RadioGroupExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/RadioGroupExpand$1;->this$0:Lsmartisan/widget/RadioGroupExpand;

    invoke-static {v0}, Lsmartisan/widget/RadioGroupExpand;->access$000(Lsmartisan/widget/RadioGroupExpand;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/RadioGroupExpand$1;->this$0:Lsmartisan/widget/RadioGroupExpand;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/RadioGroupExpand$1;->this$0:Lsmartisan/widget/RadioGroupExpand;

    iget-object v1, v1, Lsmartisan/widget/RadioGroupExpand;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
