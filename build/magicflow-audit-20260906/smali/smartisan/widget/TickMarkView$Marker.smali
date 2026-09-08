.class Lsmartisan/widget/TickMarkView$Marker;
.super Ljava/lang/Object;
.source "TickMarkView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/TickMarkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Marker"
.end annotation


# static fields
.field static final TYPE_END:I = 0x2

.field static final TYPE_MID:I = 0x1

.field static final TYPE_START:I


# instance fields
.field centerX:I

.field centerY:I

.field focused:Z

.field index:I

.field label:Ljava/lang/String;

.field labelColor:I

.field labelTransY:F

.field final synthetic this$0:Lsmartisan/widget/TickMarkView;

.field type:I


# direct methods
.method constructor <init>(Lsmartisan/widget/TickMarkView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/TickMarkView$Marker;->this$0:Lsmartisan/widget/TickMarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lsmartisan/widget/TickMarkView;->access$000()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    .line 3
    sget p1, Lsmartisan/widget/TickMarkView;->LABEL_COLOR_UNSELECTED:I

    iput p1, p0, Lsmartisan/widget/TickMarkView$Marker;->labelColor:I

    return-void
.end method


# virtual methods
.method public animateLabel()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/TickMarkView$Marker;->focused:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lsmartisan/widget/TickMarkView;->LABEL_COLOR_SELECTED:I

    iput v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelColor:I

    .line 3
    iget v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    sub-float/2addr v0, v2

    iput v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    .line 4
    iget v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    invoke-static {}, Lsmartisan/widget/TickMarkView;->access$100()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 5
    invoke-static {}, Lsmartisan/widget/TickMarkView;->access$100()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lsmartisan/widget/TickMarkView;->LABEL_COLOR_UNSELECTED:I

    iput v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelColor:I

    .line 7
    iget v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    add-float/2addr v0, v2

    iput v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    .line 8
    iget v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    invoke-static {}, Lsmartisan/widget/TickMarkView;->access$000()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 9
    invoke-static {}, Lsmartisan/widget/TickMarkView;->access$000()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 10
    iget-object v0, p0, Lsmartisan/widget/TickMarkView$Marker;->this$0:Lsmartisan/widget/TickMarkView;

    new-instance v1, Lsmartisan/widget/TickMarkView$Marker$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/TickMarkView$Marker$1;-><init>(Lsmartisan/widget/TickMarkView$Marker;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/TickMarkView$Marker;->this$0:Lsmartisan/widget/TickMarkView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
