.class Lsmartisan/widget/calendar/SmartisanTimePicker1Day$2;
.super Ljava/lang/Object;
.source "SmartisanTimePicker1Day.java"

# interfaces
.implements Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;


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
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$2;->this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getTwoDigitFormatter()Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;

    move-result-object v0

    invoke-interface {v0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
