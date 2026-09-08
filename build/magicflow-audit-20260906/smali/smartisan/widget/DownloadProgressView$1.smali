.class Lsmartisan/widget/DownloadProgressView$1;
.super Ljava/lang/Object;
.source "DownloadProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/DownloadProgressView;->startShadowAlphaAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/DownloadProgressView;


# direct methods
.method constructor <init>(Lsmartisan/widget/DownloadProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/DownloadProgressView$1;->this$0:Lsmartisan/widget/DownloadProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/DownloadProgressView$1;->this$0:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lsmartisan/widget/DownloadProgressView;->access$002(Lsmartisan/widget/DownloadProgressView;I)I

    .line 2
    iget-object p1, p0, Lsmartisan/widget/DownloadProgressView$1;->this$0:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
