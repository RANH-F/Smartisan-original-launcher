.class Lsmartisan/widget/SmartisanDateTimePickerDialog$1;
.super Ljava/lang/Object;
.source "SmartisanDateTimePickerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanDateTimePickerDialog;-><init>(Landroid/content/Context;Lsmartisan/widget/OnTimeSetListener;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanDateTimePickerDialog;

.field final synthetic val$bottom:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanDateTimePickerDialog;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDateTimePickerDialog;

    iput-object p2, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog$1;->val$bottom:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDateTimePickerDialog;

    invoke-static {v0}, Lsmartisan/widget/SmartisanDateTimePickerDialog;->access$000(Lsmartisan/widget/SmartisanDateTimePickerDialog;)Lsmartisan/widget/SmartisanDateTimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDateTimePickerDialog;

    invoke-static {v0}, Lsmartisan/widget/SmartisanDateTimePickerDialog;->access$100(Lsmartisan/widget/SmartisanDateTimePickerDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDateTimePickerDialog;

    invoke-static {v1}, Lsmartisan/widget/SmartisanDateTimePickerDialog;->access$000(Lsmartisan/widget/SmartisanDateTimePickerDialog;)Lsmartisan/widget/SmartisanDateTimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 4
    iget-object v2, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog$1;->val$bottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 5
    iget-object v3, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog$1;->this$0:Lsmartisan/widget/SmartisanDateTimePickerDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    const/4 v1, -0x1

    invoke-virtual {v3, v1, v0}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x0

    return v0
.end method
