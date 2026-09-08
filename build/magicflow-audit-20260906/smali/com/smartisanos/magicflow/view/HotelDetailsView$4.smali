.class Lcom/smartisanos/magicflow/view/HotelDetailsView$4;
.super Ljava/lang/Object;
.source "HotelDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/HotelDetailsView;->updateView(Lcom/smartisanos/magicflow/h/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/HotelDetailsView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/HotelDetailsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/HotelDetailsView;

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
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/HotelDetailsView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/HotelDetailsView;->access$000(Lcom/smartisanos/magicflow/view/HotelDetailsView;)Lcom/smartisanos/magicflow/h/k;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/HotelDetailsView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/HotelDetailsView;->access$000(Lcom/smartisanos/magicflow/view/HotelDetailsView;)Lcom/smartisanos/magicflow/h/k;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/k;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/HotelDetailsView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/HotelDetailsView;->access$000(Lcom/smartisanos/magicflow/view/HotelDetailsView;)Lcom/smartisanos/magicflow/h/k;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/HotelDetailsView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/HotelDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/HotelDetailsView;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 9
    :cond_2
    :goto_1
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/smartisanos/magicflow/view/HotelDetailsView;->access$100()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "geo onClick failed by mInfo or num is null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
