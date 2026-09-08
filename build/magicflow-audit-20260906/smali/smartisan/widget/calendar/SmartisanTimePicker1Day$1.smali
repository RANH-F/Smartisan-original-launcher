.class Lsmartisan/widget/calendar/SmartisanTimePicker1Day$1;
.super Ljava/lang/Object;
.source "SmartisanTimePicker1Day.java"

# interfaces
.implements Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/calendar/SmartisanTimePicker1Day;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;


# direct methods
.method constructor <init>(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$1;->this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$1;->this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-virtual {p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->is24HourView()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_4

    if-ne p3, v0, :cond_4

    .line 2
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$1;->this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-static {p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->access$000(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->access$002(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;Z)Z

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$1;->this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-static {p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->access$100(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-nez p2, :cond_4

    .line 4
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$1;->this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-static {p1, p3}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->access$200(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;I)V

    :cond_4
    :goto_0
    return-void
.end method
