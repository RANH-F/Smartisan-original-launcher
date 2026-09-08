.class Lsmartisan/widget/editor/LabelEditor$1;
.super Ljava/lang/Object;
.source "LabelEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/editor/LabelEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lineCount:I

.field final synthetic this$0:Lsmartisan/widget/editor/LabelEditor;


# direct methods
.method constructor <init>(Lsmartisan/widget/editor/LabelEditor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/editor/LabelEditor$1;->this$0:Lsmartisan/widget/editor/LabelEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lsmartisan/widget/editor/LabelEditor$1;->lineCount:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/editor/LabelEditor$1;->this$0:Lsmartisan/widget/editor/LabelEditor;

    iget-object p1, p1, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lsmartisan/widget/editor/LabelEditor$1;->this$0:Lsmartisan/widget/editor/LabelEditor;

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-static {p2, p3}, Lsmartisan/widget/editor/LabelEditor;->access$000(Lsmartisan/widget/editor/LabelEditor;Z)V

    .line 3
    iget p2, p0, Lsmartisan/widget/editor/LabelEditor$1;->lineCount:I

    if-eq p1, p2, :cond_2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    .line 4
    iget-object p2, p0, Lsmartisan/widget/editor/LabelEditor$1;->this$0:Lsmartisan/widget/editor/LabelEditor;

    iget-object p2, p2, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestLayout()V

    .line 5
    :cond_2
    iput p1, p0, Lsmartisan/widget/editor/LabelEditor$1;->lineCount:I

    return-void
.end method
