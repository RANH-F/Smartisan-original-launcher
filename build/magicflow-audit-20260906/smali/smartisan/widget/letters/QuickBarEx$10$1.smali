.class Lsmartisan/widget/letters/QuickBarEx$10$1;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/letters/QuickBarEx$10;->onTouched(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsmartisan/widget/letters/QuickBarEx$10;


# direct methods
.method constructor <init>(Lsmartisan/widget/letters/QuickBarEx$10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$10$1;->this$1:Lsmartisan/widget/letters/QuickBarEx$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$10$1;->this$1:Lsmartisan/widget/letters/QuickBarEx$10;

    iget-object v0, v0, Lsmartisan/widget/letters/QuickBarEx$10;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisan/widget/letters/QuickBarEx;->access$1800(Lsmartisan/widget/letters/QuickBarEx;Landroid/view/View;)V

    return-void
.end method
