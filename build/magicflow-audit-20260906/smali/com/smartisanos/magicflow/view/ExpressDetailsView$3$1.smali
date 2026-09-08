.class Lcom/smartisanos/magicflow/view/ExpressDetailsView$3$1;
.super Ljava/lang/Object;
.source "ExpressDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;

.field final synthetic val$detailsInfo:Lcom/smartisanos/magicflow/h/f;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;Lcom/smartisanos/magicflow/h/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3$1;->this$1:Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3$1;->val$detailsInfo:Lcom/smartisanos/magicflow/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3$1;->this$1:Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$3$1;->val$detailsInfo:Lcom/smartisanos/magicflow/h/f;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$500(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Lcom/smartisanos/magicflow/h/f;)V

    return-void
.end method
