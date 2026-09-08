.class Lcom/smartisanos/magicflow/view/weather/HeadView$2;
.super Ljava/lang/Object;
.source "HeadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/weather/HeadView;->onStepChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/weather/HeadView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/weather/HeadView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView$2;->this$0:Lcom/smartisanos/magicflow/view/weather/HeadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView$2;->this$0:Lcom/smartisanos/magicflow/view/weather/HeadView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->access$000(Lcom/smartisanos/magicflow/view/weather/HeadView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
