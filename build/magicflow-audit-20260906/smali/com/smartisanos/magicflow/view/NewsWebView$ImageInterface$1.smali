.class Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;
.super Ljava/lang/Object;
.source "NewsWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->openImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

.field final synthetic val$index:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;->val$index:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;->val$index:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Lcom/smartisanos/magicflow/view/PictureView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v2, v2, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object v3, v2, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/magicflow/view/PictureView;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;->this$1:Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    :cond_2
    :goto_1
    return-void
.end method
