.class Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;
.super Ljava/lang/Object;
.source "NewsWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->onImageClick([Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

.field final synthetic val$index:I

.field final synthetic val$urls:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->val$urls:[Ljava/lang/String;

    iput p3, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->val$urls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->val$urls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1702(Lcom/smartisanos/magicflow/view/NewsWebView;Ljava/util/List;)Ljava/util/List;

    .line 5
    :goto_0
    new-instance v0, Lcom/smartisanos/magicflow/view/PictureView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object v2, v1, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->val$index:I

    invoke-direct {v0, v2, v1, v3}, Lcom/smartisanos/magicflow/view/PictureView;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    return-void
.end method
