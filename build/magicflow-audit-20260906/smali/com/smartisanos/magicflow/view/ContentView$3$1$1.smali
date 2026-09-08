.class Lcom/smartisanos/magicflow/view/ContentView$3$1$1;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/ContentView$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/smartisanos/magicflow/view/ContentView$3$1;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ContentView$3$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$3$1$1;->this$2:Lcom/smartisanos/magicflow/view/ContentView$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3$1$1;->this$2:Lcom/smartisanos/magicflow/view/ContentView$3$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/ContentView$3$1;->this$1:Lcom/smartisanos/magicflow/view/ContentView$3;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/ContentView$3;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ContentView;->access$800(Lcom/smartisanos/magicflow/view/ContentView;)V

    return-void
.end method
