.class Lsmartisan/widget/calendar/SmartisanTimePicker1Day$4;
.super Ljava/lang/Object;
.source "SmartisanTimePicker1Day.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$4;->this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$4;->this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-static {p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->access$000(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->access$002(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;Z)Z

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$4;->this$0:Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-static {p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->access$100(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)V

    return-void
.end method
