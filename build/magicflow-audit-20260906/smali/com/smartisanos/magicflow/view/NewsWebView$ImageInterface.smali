.class public Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;
.super Ljava/lang/Object;
.source "NewsWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/NewsWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/NewsWebView;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageArrayString(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    const-string v1, "The News not image"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v0, "\\\\\""

    const-string v1, "\""

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image url array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 5
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1702(Lcom/smartisanos/magicflow/view/NewsWebView;Ljava/util/List;)Ljava/util/List;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public onImageClick([Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$2;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;[Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public openImage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface$1;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
