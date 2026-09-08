.class Lsmartisan/widget/SmartisanDatePickerDialog$1;
.super Ljava/lang/Object;
.source "SmartisanDatePickerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanDatePickerDialog;-><init>(Landroid/content/Context;Lsmartisan/widget/SmartisanDatePickerDialog$OnDateSetListener;IIILsmartisan/widget/SmartisanDatePicker$DatePickerType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanDatePickerDialog;

.field final synthetic val$bottom:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanDatePickerDialog;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanDatePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDatePickerDialog;

    iput-object p2, p0, Lsmartisan/widget/SmartisanDatePickerDialog$1;->val$bottom:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDatePickerDialog;

    invoke-static {v0}, Lsmartisan/widget/SmartisanDatePickerDialog;->access$000(Lsmartisan/widget/SmartisanDatePickerDialog;)Lsmartisan/widget/SmartisanDatePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDatePickerDialog;

    invoke-static {v0}, Lsmartisan/widget/SmartisanDatePickerDialog;->access$100(Lsmartisan/widget/SmartisanDatePickerDialog;)Lsmartisan/widget/MenuDialogTitleBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDatePickerDialog;

    invoke-static {v1}, Lsmartisan/widget/SmartisanDatePickerDialog;->access$000(Lsmartisan/widget/SmartisanDatePickerDialog;)Lsmartisan/widget/SmartisanDatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 4
    iget-object v2, p0, Lsmartisan/widget/SmartisanDatePickerDialog$1;->val$bottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "h1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " h2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " h3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " total:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatePicker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDatePickerDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x0

    return v0
.end method
