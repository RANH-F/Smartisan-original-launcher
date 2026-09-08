.class Lsmartisan/widget/TickMarkView$Marker$1;
.super Ljava/lang/Object;
.source "TickMarkView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/TickMarkView$Marker;->animateLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsmartisan/widget/TickMarkView$Marker;


# direct methods
.method constructor <init>(Lsmartisan/widget/TickMarkView$Marker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/TickMarkView$Marker$1;->this$1:Lsmartisan/widget/TickMarkView$Marker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TickMarkView$Marker$1;->this$1:Lsmartisan/widget/TickMarkView$Marker;

    invoke-virtual {v0}, Lsmartisan/widget/TickMarkView$Marker;->animateLabel()V

    return-void
.end method
