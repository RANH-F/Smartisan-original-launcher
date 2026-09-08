.class Lsmartisan/widget/SmartisanDateTimePicker$3;
.super Ljava/lang/Object;
.source "SmartisanDateTimePicker.java"

# interfaces
.implements Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanDateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanDateTimePicker;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanDateTimePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker$3;->this$0:Lsmartisan/widget/SmartisanDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$3;->this$0:Lsmartisan/widget/SmartisanDateTimePicker;

    invoke-static {v0, p1}, Lsmartisan/widget/SmartisanDateTimePicker;->access$200(Lsmartisan/widget/SmartisanDateTimePicker;I)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker$3;->this$0:Lsmartisan/widget/SmartisanDateTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanDateTimePicker;->access$300(Lsmartisan/widget/SmartisanDateTimePicker;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
