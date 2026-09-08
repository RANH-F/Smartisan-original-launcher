.class Lcom/smartisanos/magicflow/view/weather/HeadView$1$1;
.super Ljava/lang/Object;
.source "HeadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/weather/HeadView$1;->onDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/weather/HeadView$1;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/weather/HeadView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView$1$1;->this$1:Lcom/smartisanos/magicflow/view/weather/HeadView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView$1$1;->this$1:Lcom/smartisanos/magicflow/view/weather/HeadView$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/weather/HeadView$1;->this$0:Lcom/smartisanos/magicflow/view/weather/HeadView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->refreshUI()V

    return-void
.end method
