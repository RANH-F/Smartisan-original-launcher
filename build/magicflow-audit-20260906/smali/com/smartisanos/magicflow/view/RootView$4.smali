.class Lcom/smartisanos/magicflow/view/RootView$4;
.super Ljava/lang/Object;
.source "RootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/RootView;->onHorizontalScrollAnimEnd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/RootView;

.field final synthetic val$targetLocX:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/RootView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView$4;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    iput p2, p0, Lcom/smartisanos/magicflow/view/RootView$4;->val$targetLocX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView$4;->this$0:Lcom/smartisanos/magicflow/view/RootView;

    iget v1, p0, Lcom/smartisanos/magicflow/view/RootView$4;->val$targetLocX:I

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/RootView;->access$500(Lcom/smartisanos/magicflow/view/RootView;I)V

    return-void
.end method
