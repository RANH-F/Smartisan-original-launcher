.class Lcom/smartisanos/magicflow/view/weather/HeadView$3;
.super Ljava/lang/Object;
.source "HeadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/weather/HeadView;
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView$3;->this$0:Lcom/smartisanos/magicflow/view/weather/HeadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView$3;->this$0:Lcom/smartisanos/magicflow/view/weather/HeadView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->access$100(Lcom/smartisanos/magicflow/view/weather/HeadView;)V

    return-void
.end method
