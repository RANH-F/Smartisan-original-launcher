.class final Lcom/smartisanos/magicflow/b$a;
.super Ljava/lang/Object;
.source "MagicFlowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/b;->a(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/b;->b()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/magicflow/b;->a()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/b;->b()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/magicflow/b;->a()Lcom/smartisanos/magicflow/view/RootView;

    move-result-object v1

    invoke-static {}, Lcom/smartisanos/magicflow/b;->c()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
