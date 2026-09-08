.class Lsmartisan/widget/editor/EditorLeftLabelWidget$1;
.super Ljava/lang/Object;
.source "EditorLeftLabelWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/editor/EditorLeftLabelWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/editor/EditorLeftLabelWidget;


# direct methods
.method constructor <init>(Lsmartisan/widget/editor/EditorLeftLabelWidget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget$1;->this$0:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget$1;->this$0:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-static {v0}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->access$000(Lsmartisan/widget/editor/EditorLeftLabelWidget;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget$1;->this$0:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-static {v0}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->access$100(Lsmartisan/widget/editor/EditorLeftLabelWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/EditorLeftLabelWidget$1;->this$0:Lsmartisan/widget/editor/EditorLeftLabelWidget;

    invoke-static {v0}, Lsmartisan/widget/editor/EditorLeftLabelWidget;->access$000(Lsmartisan/widget/editor/EditorLeftLabelWidget;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
