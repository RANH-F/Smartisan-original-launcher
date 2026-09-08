.class Lsmartisan/widget/ShadowComponent$1;
.super Ljava/lang/Object;
.source "ShadowComponent.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/ShadowComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/ShadowComponent;


# direct methods
.method constructor <init>(Lsmartisan/widget/ShadowComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ShadowComponent$1;->this$0:Lsmartisan/widget/ShadowComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowComponent$1;->this$0:Lsmartisan/widget/ShadowComponent;

    invoke-static {v0}, Lsmartisan/widget/ShadowComponent;->access$000(Lsmartisan/widget/ShadowComponent;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ShadowComponent$1;->this$0:Lsmartisan/widget/ShadowComponent;

    invoke-static {v0}, Lsmartisan/widget/ShadowComponent;->access$100(Lsmartisan/widget/ShadowComponent;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/ShadowComponent$1;->this$0:Lsmartisan/widget/ShadowComponent;

    iget-object v1, v1, Lsmartisan/widget/ShadowComponent;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/ShadowComponent$1;->this$0:Lsmartisan/widget/ShadowComponent;

    invoke-virtual {v0}, Lsmartisan/widget/ShadowComponent;->onShadowLayout()V

    return-void
.end method
