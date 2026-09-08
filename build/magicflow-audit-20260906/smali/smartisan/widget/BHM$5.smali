.class Lsmartisan/widget/BHM$5;
.super Ljava/lang/Object;
.source "BHM.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/BHM;->onViewCreated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/BHM;


# direct methods
.method constructor <init>(Lsmartisan/widget/BHM;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM$5;->this$0:Lsmartisan/widget/BHM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM$5;->this$0:Lsmartisan/widget/BHM;

    invoke-static {v0}, Lsmartisan/widget/BHM;->access$400(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$OnTitleButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BHM$5;->this$0:Lsmartisan/widget/BHM;

    invoke-static {v0}, Lsmartisan/widget/BHM;->access$400(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$OnTitleButtonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lsmartisan/widget/BHM$OnTitleButtonClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
