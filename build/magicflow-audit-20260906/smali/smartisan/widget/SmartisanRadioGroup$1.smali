.class Lsmartisan/widget/SmartisanRadioGroup$1;
.super Ljava/lang/Object;
.source "SmartisanRadioGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanRadioGroup;->initRadioButtonStyle(Lsmartisan/widget/SmartisanRadioShadowButton;I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanRadioGroup;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanRadioGroup;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanRadioGroup$1;->this$0:Lsmartisan/widget/SmartisanRadioGroup;

    iput p2, p0, Lsmartisan/widget/SmartisanRadioGroup$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanRadioGroup$1;->this$0:Lsmartisan/widget/SmartisanRadioGroup;

    invoke-static {p1}, Lsmartisan/widget/SmartisanRadioGroup;->access$000(Lsmartisan/widget/SmartisanRadioGroup;)Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanRadioGroup$1;->this$0:Lsmartisan/widget/SmartisanRadioGroup;

    invoke-static {p1}, Lsmartisan/widget/SmartisanRadioGroup;->access$000(Lsmartisan/widget/SmartisanRadioGroup;)Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

    move-result-object p1

    iget v0, p0, Lsmartisan/widget/SmartisanRadioGroup$1;->val$position:I

    invoke-interface {p1, v0}, Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;->onRadioTabClick(I)V

    :cond_0
    return-void
.end method
