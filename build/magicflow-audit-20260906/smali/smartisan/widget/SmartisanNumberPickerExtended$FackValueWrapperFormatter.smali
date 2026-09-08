.class Lsmartisan/widget/SmartisanNumberPickerExtended$FackValueWrapperFormatter;
.super Ljava/lang/Object;
.source "SmartisanNumberPickerExtended.java"

# interfaces
.implements Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanNumberPickerExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FackValueWrapperFormatter"
.end annotation


# instance fields
.field private mFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

.field final synthetic this$0:Lsmartisan/widget/SmartisanNumberPickerExtended;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanNumberPickerExtended;Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerExtended$FackValueWrapperFormatter;->this$0:Lsmartisan/widget/SmartisanNumberPickerExtended;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerExtended$FackValueWrapperFormatter;->mFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerExtended$FackValueWrapperFormatter;->this$0:Lsmartisan/widget/SmartisanNumberPickerExtended;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->getMaxValue()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerExtended$FackValueWrapperFormatter;->this$0:Lsmartisan/widget/SmartisanNumberPickerExtended;

    invoke-static {v1}, Lsmartisan/widget/SmartisanNumberPickerExtended;->access$000(Lsmartisan/widget/SmartisanNumberPickerExtended;)I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerExtended$FackValueWrapperFormatter;->mFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    invoke-interface {v0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
