.class Lcom/smartisanos/magicflow/view/MovieDetailsView$2;
.super Ljava/lang/Object;
.source "MovieDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/MovieDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/MovieDetailsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->access$000(Lcom/smartisanos/magicflow/view/MovieDetailsView;)Lcom/smartisanos/magicflow/h/n;

    move-result-object p1

    if-nez p1, :cond_2

    .line 3
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->access$100()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "geo onClick failed by mInfo is null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->access$000(Lcom/smartisanos/magicflow/view/MovieDetailsView;)Lcom/smartisanos/magicflow/h/n;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    .line 5
    invoke-static {p1}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->access$000(Lcom/smartisanos/magicflow/view/MovieDetailsView;)Lcom/smartisanos/magicflow/h/n;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 6
    :cond_3
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->access$100()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "geo onClick failed by address is null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "geo:0,0?q="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->access$000(Lcom/smartisanos/magicflow/view/MovieDetailsView;)Lcom/smartisanos/magicflow/h/n;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->access$000(Lcom/smartisanos/magicflow/view/MovieDetailsView;)Lcom/smartisanos/magicflow/h/n;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    invoke-static {p1, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
