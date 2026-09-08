.class Lcom/smartisanos/magicflow/view/NewsWebView$2;
.super Ljava/lang/Object;
.source "NewsWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/NewsWebView;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/NewsWebView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$2;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    sget-boolean p2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$2;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "url = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "contentDisposition = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$2;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$500(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/h/l;

    move-result-object p3

    iget-object p3, p3, Lcom/smartisanos/magicflow/h/l;->o:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$600(Lcom/smartisanos/magicflow/view/NewsWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$2;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/4 p2, 0x6

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/smartisanos/magicflow/o/j;->a(Landroid/content/Context;ILcom/smartisanos/magicflow/o/j$c;Z)V

    :goto_0
    return-void
.end method
