.class Lcom/smartisanos/magicflow/view/ContentView$3$1;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/ContentView$3;->onWelcomeViewDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/ContentView$3;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ContentView$3;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$3$1;->this$1:Lcom/smartisanos/magicflow/view/ContentView$3;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/ContentView$3$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/DataCache;->initLocalData(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/ContentView$3$1$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/ContentView$3$1$1;-><init>(Lcom/smartisanos/magicflow/view/ContentView$3$1;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/DataCache;->updateNetData(Landroid/content/Context;)V

    return-void
.end method
